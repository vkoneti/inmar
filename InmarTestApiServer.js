/********************************************************************
Program: InmarTestApiServer.js
Author: Venkat Koneti
Created Date: September 04, 2017 - 11:44:07 AM
Version: 1.0.0
Description:
    The main server script file
********************************************************************/
// All includes
var fs                  = require('fs');
var numCPUs             = require('os').cpus().length;
var restify             = require('restify');
var restifyvalidator    = require('restify-validator');

// Application level requires
var Constants           = require('./routes/utils/constants');
var ApiGetServices      = require('./routes/apigetservices');
var ApiPostServices     = require('./routes/apipostservices');
var ApiPutServices      = require('./routes/apiputservices');
var ApiDelServices      = require('./routes/apidelservices');

// Create restify server (HTTP)
var httpServer = restify.createServer({
    name: Constants.AppName,
    version: Constants.AppVersion,
});

// Plugins for restify (HTTP)
httpServer.use(restify.acceptParser(httpServer.acceptable));
httpServer.use(restify.bodyParser());
httpServer.use(restify.queryParser());
httpServer.use(restifyvalidator);

// Unknown handler for CORS
function unknownMethodHandler(req, res) {
    if (req.method.toLowerCase() === 'options') {
        //console.log('received an options method request');
        // added Origin & X-Requested-With
        var allowHeaders = ['Accept', 'Accept-Version', 'Content-Type', 'Api-Version', 'Origin', 'X-Requested-With', 'Authorization'];

        if (res.methods.indexOf('OPTIONS') === -1) res.methods.push('OPTIONS');

        res.addHeader('Access-Control-Allow-Credentials', true);
        res.addHeader('Access-Control-Allow-Headers', allowHeaders.join(', '));
        res.addHeader('Access-Control-Allow-Methods', res.methods.join(', '));
        res.addHeader('Access-Control-Allow-Origin', req.headers.origin);
        res.addHeader('Access-Control-Allow-Origin', req.headers.Authorization);
        return res.send(204);
    }
    else {
        console.log('REQ: ' + req.method);
        return res.send(new restify.MethodNotAllowedError());
    }
}

httpServer.on('MethodNotAllowed', unknownMethodHandler);

restify.CORS.ALLOW_HEADERS.push('accept');
restify.CORS.ALLOW_HEADERS.push('sid');
restify.CORS.ALLOW_HEADERS.push('lang');
restify.CORS.ALLOW_HEADERS.push('origin');
restify.CORS.ALLOW_HEADERS.push('x-requested-with');
restify.CORS.ALLOW_HEADERS.push('authorization');

// CORS for (HTTP)
httpServer.use(restify.CORS());
httpServer.use(restify.fullResponse());

/*
Routes for (HTTP)
*/
// GETs
httpServer.get('api/v1/location', ApiGetServices.getAllLocations);
httpServer.get('/api/v1/location/:lid/department', ApiGetServices.getDeptByLocation);
httpServer.get('/api/v1/location/:lid/department/:did/category', ApiGetServices.getCatByDepartment);
httpServer.get('/api/v1/location/:lid/department/:did/category/:cid/subcategory', ApiGetServices.getSubCatByCat);
httpServer.get('/api/v1/location/:lid/department/:did/category/:cid/subcategory/:sid', ApiGetServices.getProductDetails);

// POSTs
httpServer.post('api/v1/location', ApiPostServices.postNewLocation);
httpServer.post('api/v1/location/:lid/department', ApiPostServices.postNewDepartment);
httpServer.post('/api/v1/location/:lid/department/:did/category', ApiPostServices.postNewCategory);
httpServer.post('/api/v1/location/:lid/department/:did/category/:cid/subcategory', ApiPostServices.postNewSubCategory);

// PUTs
httpServer.put('api/v1/location/:lid', ApiPutServices.putLocation);
httpServer.put('api/v1/location/:lid/department/:did', ApiPutServices.putDepartment);
httpServer.put('api/v1/location/:lid/department/:did/category/:cid', ApiPutServices.putCategory);
httpServer.put('api/v1/location/:lid/department/:did/category/:cid/subcategory/:sid', ApiPutServices.putSubCategory);

// DELETEs
httpServer.del('api/v1/location/:lid', ApiDelServices.delLocation);
httpServer.del('api/v1/location/:lid/department/:did', ApiDelServices.delDepartment);
httpServer.del('api/v1/location/:lid/department/:did/category/:cid', ApiDelServices.delCategory);
httpServer.del('api/v1/location/:lid/department/:did/category/:cid/subcategory/:sid', ApiDelServices.delSubCategory);

/*
End - Routes for (HTTP)
*/

// Run the server (HTTP)
httpServer.listen(Constants.HttpPort, function() {
    console.log('(HTTP) - InmarTestApiServer listening at %s with %s cpu(s) and with pid: %s', httpServer.url, numCPUs, process.pid);
});
