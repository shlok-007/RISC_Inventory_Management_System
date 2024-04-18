import oracledb from 'oracledb';
import dbConfig from '@/utils/dbConfig';
import { NextResponse } from 'next/server';

export async function POST(req: Request) {
    const { fname, lname, email, password } = await req.json();
    // console.log(`Signing up ${fname} ${lname} with email ${email} and password ${password}`);
    const hash = await crypto.subtle.digest('SHA-256', new TextEncoder().encode(password));
    const passHash = Array.from(new Uint8Array(hash)).map(b => b.toString(16).padStart(2, '0')).join('');
    let connection;
    console.log(fname, lname, email, passHash);
    // console.log(dbConfig);
    try{
        connection = await oracledb.getConnection(dbConfig);
        // console.log(connection);
        const insertQuery = `
            BEGIN
                InsertMember(:fname, :lname, :email, :passHash);
            END;
            `;
        const result = await connection.execute(insertQuery, {
            fname: { val: fname, type: oracledb.STRING },
            lname: { val: lname, type: oracledb.STRING },
            email: { val: email, type: oracledb.STRING },
            passHash: { val: passHash, type: oracledb.STRING, dir: oracledb.BIND_INOUT },
          });
        console.log(result);
        // check for passHash out value
        // if((result.outBinds as any).passHash === passHash){
        //     console.log("Password hash matches");
        // } else {
        console.log((result.outBinds as any).passHash);
        if((result.outBinds as any).passHash === "OKAY"){
            const result2 = await connection.execute(
                `SELECT memberid FROM members WHERE email = :email`,
                {
                    email: email as string,
                }
            );
            console.log((result2.rows as any[])[0][0]);
    
            const fullName = `${fname} ${lname}`;
            console.log(fullName, email);
            return NextResponse.json({
                success: true,
                // fullName,
                // email,
                // memberid: (result2.rows as any[])[0][0],
                userData: {
                    memberId: (result2.rows as any[])[0][0],
                    firstName: fname,
                    lastName: lname,
                    email,
                    role: "User"
                }
            });
            
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
