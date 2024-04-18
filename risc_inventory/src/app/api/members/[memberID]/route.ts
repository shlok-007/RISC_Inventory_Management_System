import oracledb from 'oracledb';
import dbConfig from '@/utils/dbConfig';
import { NextResponse } from 'next/server';

export async function GET(req: Request, context: any) {
    let connection;
    const {params} = context;
    try{
        connection = await oracledb.getConnection(dbConfig);
        // console.log(connection);
        const Query = `SELECT * FROM MEMBERS where memberid=:mid`;
        const result = await connection.execute(Query,{
            mid: params.memberID
        });
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
            console.log("Could not find member")
            // return with error code 401
            return NextResponse.json({ success: false, message: "Could not find member"});
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
