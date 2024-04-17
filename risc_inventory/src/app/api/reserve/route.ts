import oracledb from 'oracledb';
import dbConfig from '@/utils/dbConfig';
import { NextResponse } from 'next/server';

export async function POST(req: Request) {
    const { itemid, memberid, reservationdate, returndate, purpose } = await req.json();
    console.log("\n\n",itemid, memberid, (reservationdate as string).split("T")[0], (returndate as string).split("T")[0], purpose, "\n\n");
    let connection;
    try{
        connection = await oracledb.getConnection(dbConfig);
        // p_MemberID IN INT,
        // p_ItemID IN INT,
        // p_ReservationDate IN DATE,
        // p_ReturnDate IN DATE,
        // p_Purpose IN OUT VARCHAR2 -- Changed to IN OUT parameter
        
        const result = await connection.execute(
            `BEGIN
                reserve(:p_MemberID, :p_ItemID, :p_ReservationDate, :p_ReturnDate, :p_Purpose);
            END;`,
            {
                p_MemberID: memberid,
                p_ItemID: itemid,
                p_ReservationDate: new Date(reservationdate),
                p_ReturnDate: new Date(returndate),
                p_Purpose: { val: purpose as string, type: oracledb.STRING, dir: oracledb.BIND_INOUT }
            }
        );

        if((result.outBinds as any).p_Purpose === "OKAY"){
            return NextResponse.json({ success: true });
        } else {
            return NextResponse.json({ success: false, message: (result.outBinds as any).p_Purpose });
        }
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