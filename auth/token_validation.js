const { verify } = require('jsonwebtoken');

module.exports = {
    checkToken: (request, response, next) => {
        let token = request.get("authorization");
        if(token){
            token = token.slice(7);
            verify(token, "SECRET_KEY123", (error, decoded) => {
                if(error){
                    return response.json({
                        succes: 0,
                        message: "Invalid Token"
                    });
                }else{
                    next();
                }
            });
        }else{
            response.json({
                sucess: 0,
                message: "Access denied"
            });
        }
    }
};