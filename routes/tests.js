/********************************************************************
Program: routes/tests.js
Author: Venkat Koneti
Create Date: September 04, 2017 - 11:44:07 AM
Version: 1.0.0
Description:
    Test routes handler
********************************************************************/
// App local vars
var Moment		            = require('moment');
var Util		            = require('./utils/utils');

// Sample GET request
exports.testGet = function (req, resp, next) {
    var callDetails = "REQ for (TESTS->GET): api/v1/tests/getrequest ";
    Util.logReqBegin(callDetails);
    resp.status(200);
    resp.send({ CallStatus: "GOOD", ServerTime: Moment(new Date()).format('MM/DD/YYYY hh:mm:ss A') });
    next();
};
