import oracledb from 'oracledb';
import dbConfig from '@/utils/dbConfig';
import { NextResponse } from 'next/server';

export async function POST(req: Request) {
    const { email, password } = await req.json();
    // console.log(`Signing up ${fname} ${lname} with email ${email} and password ${password}`);
    const hash = await crypto.subtle.digest('SHA-256', new TextEncoder().encode(password));
    const passHash = Array.from(new Uint8Array(hash)).map(b => b.toString(16).padStart(2, '0')).join('');
    let connection;
    // console.log(email, passHash);
    // console.log(dbConfig);
    try{
        connection = await oracledb.getConnection(dbConfig);
        // console.log(connection);
        const result = await connection.execute(
            `SELECT * FROM members WHERE email = :email AND password = :passHash`,
            {
                email: email as string,
                passHash: { val: passHash as string },
            }
        );

        // console.log(result);
        if ((result.rows as any[]).length > 0) {
            // console.log("\n\n"+"Fetched data: "+(result.rows as any[])[0]+"\n\n");

            // console.log({
            //     memberId: (result.rows as any[])[0][0],
            //     firstName: (result.rows as any[])[0][1],
            //     lastName: (result.rows as any[])[0][2],
            //     email: email,
            //     role: (result.rows as any[])[0][5]
            // })
            const response = NextResponse.json({
                success: true,
                userData: {
                    memberId: (result.rows as any[])[0][0],
                    firstName: (result.rows as any[])[0][1],
                    lastName: (result.rows as any[])[0][2],
                    email: email,
                    role: (result.rows as any[])[0][5]
                }
            });
            return response;
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
