const pool = require('../../config/database');

 module.exports = {
     create: (data, callback) => {
         
         pool.query(
             `INSERT INTO users (first_name, last_name, email_address, password) VALUES (?,?,?,?)`,
            [
                data.first_name,
                data.last_name,
                data.email_address,
                data.password
            ],
             (error, results, fields) =>{
                 if(error){
                     return callback(error);
                 }
                 return callback(null, results);
             }
         )
     },
     getUserByEmail: (email, callback) => {
        pool.query(
            `SELECT * FROM users WHERE email_address =  ? `,
            [email],
            (error, results, fields) => {
                if(error){
                    callback(error);
                }
                return callback(null, results[0]);
            }
        )
     }
 }