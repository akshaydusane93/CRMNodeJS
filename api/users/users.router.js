const { createUser, login } = require('./users.controller');
const router = require('express').Router();
const { checkToken } = require('../../auth/token_validation')


router.post('/', checkToken, createUser);
router.post('/login', login);


module.exports = router;