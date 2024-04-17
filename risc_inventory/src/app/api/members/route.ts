import oracledb from 'oracledb';
import dbConfig from '@/utils/dbConfig';
import { NextResponse } from 'next/server';

export async function GET(req: Request) {
    let connection;
    // console.log(dbConfig);
    try{
        connection = await oracledb.getConnection(dbConfig);
        // console.log(connection);
        const Query = `SELECT * FROM MEMBERS where role='User'`;
        const result = await connection.execute(Query);
        // console.log(result);
 
        if((result.rows as any[]).length > 0){
            return NextResponse.json({
                success: true,
                results: (result.rows as any[]).map(data => ({
                    id: data[0],
                    firstName: data[1],
                    lastName: data[2],
                    email: data[3],
                }))
            });
        } else {
            console.log("Login failed")
            // return with error code 401
            return NextResponse.json({ success: false, message: "Login failed"});
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
