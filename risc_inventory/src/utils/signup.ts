import oracledb from 'oracledb';
import dbConfig from './dbConfig';

export default async function signup(){
    console.log("Signing up");
    console.log(dbConfig);
    const connection = await oracledb.getConnection(dbConfig);
    console.log(connection); 
}