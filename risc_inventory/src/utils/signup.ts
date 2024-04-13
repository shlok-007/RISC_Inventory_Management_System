import oracledb from 'oracledb';

export default async function signup(){
    const connection = await oracledb.getConnection({
        user: "dbms"
}