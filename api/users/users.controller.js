const { create, getUserByEmail } = require('./users.service');

// const { getSaltSync, hashSync } = require('bcryptjs');
const bcrypt = require('bcryptjs');
const { sign } = require('jsonwebtoken')

module.exports = {
    createUser:  (request, response) => {
        const body = request.body;
        
        const salt = bcrypt.genSaltSync(10);
        body.password = bcrypt.hashSync(body.password, salt);
        
        create(body, (error, results) => {
            if(error){
                console.log(error);
                return response.status(500).json({
                    success: 0, 
                    message: "Database connection error"
                });
            }
            return response.status(200).json({
                sucess: 1,
                data: results
            })
        });
    }, 
    login: (request, response) => {
        const body = request.body;

        getUserByEmail(body.email_address, (error, results) => {
            if(error){
                console.log(error);
            }
            if(!results){
                return response.json({
                    success: 0,
                    data: 'Invalid email id'
                })
            }
            const result = bcrypt.compareSync(body.password, results.password);
            if(result){
                results.password = undefined;
                const jsontoken = sign({ result: results }, 'SECRET_KEY123', { expiresIn: "1h" });

                return response.json({
                    success: 1, 
                    message: "Login Successfully",
                    token: jsontoken
                });
            }else{
                return response.json({
                    success: 0,
                    data: "Invalid email pr password"
                });
            }
        });
    }
}