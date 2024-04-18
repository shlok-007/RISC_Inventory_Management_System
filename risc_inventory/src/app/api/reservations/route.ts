import oracledb from 'oracledb';
import dbConfig from '@/utils/dbConfig';
import { NextResponse } from 'next/server';
import { NextRequest } from 'next/server';

export async function POST(req: Request) {
    let connection;
    // console.log(dbConfig);
    const { memberId } = await req.json();
    // console.log(memberId);
    let Query;
    let result;
    try{
        connection = await oracledb.getConnection(dbConfig);
        // console.log(connection);
        if(memberId === "All"){
            Query = `SELECT ITEMNAME, STATUS, RESERVATIONDATE, RETURNDATE, PURPOSE, FIRSTNAME, LASTNAME,  RESERVATIONID, MEMBERID FROM RESERVATIONS WHERE STATUS <> 'accepted'`;
            result = await connection.execute(Query);
        }
        else{
            Query = `SELECT ITEMNAME, STATUS, RESERVATIONDATE, RETURNDATE, PURPOSE, FIRSTNAME, LASTNAME, RESERVATIONID, MEMBERID FROM RESERVATIONS where memberid = :memberId`;
            result = await connection.execute(Query, {
                memberId: memberId
            });
        }
        // console.log(result);
 
        if((result.rows as any[]).length > 0){
            return NextResponse.json({
                success: true,
                results: (result.rows as any[]).map(data => ({
                    ItemName: data[0],
                    Status: data[1],
                    ReservationDate: data[2],
                    ReturnDate: data[3],
                    Purpose: data[4],
                    Name: data[5] + " " + data[6],
                    ReservationId: data[7],
                    MemberId: data[8]
                }))
            });
        } else {
            console.log("Login failed")
            // return with error code 401
            return NextResponse.json({ success: false, results: []});
        }

    } catch (err) {
        console.error(err);
        return NextResponse.json({ success: false, results: []});
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
