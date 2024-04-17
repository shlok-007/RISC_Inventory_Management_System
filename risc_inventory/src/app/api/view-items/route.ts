import oracledb from 'oracledb';
import dbConfig from '@/utils/dbConfig';
import { NextResponse, NextRequest } from 'next/server';

export async function GET(req: NextRequest) {
    let connection;
    try{
        connection = await oracledb.getConnection(dbConfig);
        const result = await connection.execute(
            `SELECT * FROM ItemDetailView where ItemID <= 18`
        );
        return NextResponse.json(result.rows);
    } catch (err) {
        console.error(err);
        return NextResponse.json({ success: false, message: "Something went wrong"});
    } finally {
        if(connection){
            try {
                await connection.close();
            } catch (err) {
                console.error(err);
            }
        }
    }
}