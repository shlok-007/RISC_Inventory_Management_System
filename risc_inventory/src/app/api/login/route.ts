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
            `SELECT * FROM members WHERE email = :email AND password = :passHash`,
            {
                email: email as string,
                passHash: { val: passHash as string },
            }
        );
        
        // const result = await connection.execute(
        //     `SELECT * FROM members WHERE firstname = :fname`,
        //     {
        //         fname: fname as string
        //     }
        // )
        console.log(result);
        // check for passHash out value
        // if((result.outBinds as any).passHash === passHash){
        //     console.log("Password hash matches");
        // } else {
        // console.log((result.outBinds as any).passHash);
        if((result.rows as any).length > 0){
            // const [userId, firstName, lastName, email, passwordHash, role] = result.rows[0];
            // const responseData = {
            //     firstName,
            //     lastName,
            //     email,
            //     role
            // };
            return NextResponse.json({ success: true, message: result.rows[0] });
        } else {
            console.log("Login failed")
            // return with error code 401
            return NextResponse.json({ success: false, message: (result.outBinds as any).passHash});
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
