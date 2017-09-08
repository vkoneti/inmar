/********************************************************************
Program: routes/utils/utilites.js
Author: Venkat Koneti
Create Date: September 04, 2017 - 11:44:07 AM
Version: 1.0.0
Description:
    Utility functions
********************************************************************/
// Setup core requires for the utilites
var Crypto      = require('crypto');
var Moment		= require('moment');
var Request     = require('request');

// App local vars
var Constants   = require('./constants');

// console log begining of the request
exports.logReqBegin = function(strMsg) {
    var timeStamp = Moment(new Date()).format('MM/DD/YYYY hh:mm:ss A');
    var totalLength = timeStamp.length + strMsg.length + 8;
    var strHash = '';
    for (var i = 0; i < totalLength; i++) {
        strHash += '#';
    }
    console.log(strHash);
    console.log('['+ timeStamp +'] ' + strMsg);
}

// console log with timestamp
exports.logMessage = function(str) {
    var timeStamp = Moment(new Date()).format('MM/DD/YYYY hh:mm:ss A');
    console.log('['+ timeStamp +'] ' + str);
}

// Gets encrypted string with callback
exports.getEncryptedString = function(string, callback) {
    var cipher = Crypto.createHash('sha256');
    var cipherText = cipher.update(string, 'ascii');
    cipherText = cipher.digest('hex');
    callback(cipherText);
}

// Gets encrypted string with return string
exports.getEncryptedStringFunc = function(string) {
    var cipher = Crypto.createHash('sha256');
    var cipherText = cipher.update(string, 'ascii');
    cipherText = cipher.digest('hex');
    return(cipherText);
}

// Gets data and file extension from base64 string
exports.decodeBase64 = function(dataString){
    var matches = dataString.match(/^data:([A-Za-z-+\/]+);base64,(.+)$/),
    file = {};
    if (matches.length !== 3) {
        return new Error('Invalid input string');
    }
    file.type = matches[1].substring(6, matches[1].length);
    file.data = new Buffer(matches[2], 'base64');
    return file;
}

// Gets image data and image extension from base64 string
exports.decodeBase64Image = function(dataString){
    var matches = dataString.match(/^data:([A-Za-z-+\/]+);base64,(.+)$/),
    image = {};
    if (matches.length !== 3) {
        return new Error('Invalid input string');
    }
    image.type = matches[1].substring(6, matches[1].length);
    image.data = new Buffer(matches[2], 'base64');
    return image;
}

// Gets audio data and audio extension from base64 string
exports.decodeBase64Audio = function(dataString) {
    var matches = dataString.replace('data:audio/mp3;base64,', ''),
    audio = {};
    audio.type = 'mp3';
    audio.data = new Buffer(matches, 'base64');
    return audio;
}

exports.getRandomString = function(n) {
    var token = Crypto.randomBytes(n).toString('hex');
    return token; 
}

exports.getRandomOtp = function() {
    return Math.floor(Math.random() * (99999 - 10000 + 1)) + 10000;;
}

// Get properties of request object
exports.getRequestObjectDetails = function (req) {
    var reqObj = {};
    reqObj.ipAddress = req.connection.remoteAddress;
    reqObj.userAgent = req.headers['user-agent'];
    return reqObj;
};

exports.checkArrValExists = function (arr, id, elem) {
    return arr.some(function(el) {
      return el[elem] === id;
    });
}
  