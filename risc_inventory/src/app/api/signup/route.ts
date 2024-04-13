import oracledb from 'oracledb';
import dbConfig from '@/utils/dbConfig';
import { NextResponse } from 'next/server';

export async function POST(req: Request) {
    const { fname, lname, email, password } = await req.json();
    // console.log(`Signing up ${fname} ${lname} with email ${email} and password ${password}`);
    const hash = await crypto.subtle.digest('SHA-256', new TextEncoder().encode(password));
    const passHash = Array.from(new Uint8Array(hash)).map(b => b.toString(16).padStart(2, '0')).join('');
    let connection;
    // console.log(fname, lname, email, passHash);
    // console.log(dbConfig);
    try{
        connection = await oracledb.getConnection(dbConfig);
        // console.log(connection);
        const result = await connection.execute(
            `BEGIN
                InsertMember(:fname, :lname, :email, :passHash);
             END;`,
            {
                fname: fname as string,
                lname: lname as string,
                email: email as string,
                passHash: {val: passHash as string, dir: oracledb.BIND_INOUT},
            }
          );
        console.log("Executed");
        // check for passHash out value
        // if((result.outBinds as any).passHash === passHash){
        //     console.log("Password hash matches");
        // } else {
        console.log((result.outBinds as any).passHash);
        if((result.outBinds as any).passHash === "OK"){
            return NextResponse.json({ success: true });
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
