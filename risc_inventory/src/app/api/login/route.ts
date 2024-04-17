import oracledb from 'oracledb';
import dbConfig from '@/utils/dbConfig';
import { NextResponse } from 'next/server';

export async function POST(req: Request) {
    const { email, password } = await req.json();
    // console.log(`Signing up ${fname} ${lname} with email ${email} and password ${password}`);
    const hash = await crypto.subtle.digest('SHA-256', new TextEncoder().encode(password));
    const passHash = Array.from(new Uint8Array(hash)).map(b => b.toString(16).padStart(2, '0')).join('');
    let connection;
    console.log(email, passHash);
    // console.log(dbConfig);
    try{
        connection = await oracledb.getConnection(dbConfig);
        // console.log(connection);
        const result = await connection.execute(
            `SELECT firstname, lastname, email, memberid FROM members WHERE email = :email AND password = :passHash`,
            {
                email: email as string,
                passHash: { val: passHash as string },
            }
        );

        console.log(result);
        if ((result.rows as any[]).length > 0) {
            // console.log((result.rows as any[])[0][0]);

            const fullName = `${(result.rows as any[])[0][0]} ${(result.rows as any[])[0][1]}`;
            console.log(fullName, email);
            return NextResponse.json({
                success: true,
                fullName,
                email,
                memberid: (result.rows as any[])[0][3],
            });
        } else {
            console.log("Login failed");
            // return with error code 401
            return NextResponse.json({ success: false, message: "Invalid email or password"});
        }

    } catch (err) {
        console.error(err);
        return NextResponse.json({ success: false, message: "Something went wrong"});
    } finally {
        if(connection){
            try{
                await connection.close();
                console.log("Connection closed");
            } catch (err) {
                console.error(err);
            }
        }
    }
}
