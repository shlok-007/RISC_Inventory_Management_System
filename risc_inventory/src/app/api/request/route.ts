import oracledb from 'oracledb';
import dbConfig from '@/utils/dbConfig';
import { NextResponse, NextRequest } from 'next/server';

export async function GET(req: NextRequest) {
    let connection;
    try{
        connection = await oracledb.getConnection(dbConfig);
        const result = await connection.execute(
            `SELECT MEMBERID, FIRSTNAME, LASTNAME, EMAIL FROM REQUEST`
        );
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
            console.log("Uable to fetch data from database")
            // return with error code 401
            return NextResponse.json({ success: false, message: "Unable to fetch data from database"});
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
