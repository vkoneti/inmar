/********************************************************************
Program: routes/apiservices.js
Author: Venkat Koneti
Create Date: September 04, 2017 - 11:44:07 AM
Version: 1.0.0
Description:
    All service routes handler
********************************************************************/
// App local vars
var Moment          = require('moment');
var Util		    = require('./utils/utils');

var Sequelize       = require('./dbhelpers/inmar_test_dbmodels').Sequelize;
var Location	    = require('./dbhelpers/inmar_test_dbmodels').DbLocation;
var LocDeptsView    = require('./dbhelpers/inmar_test_dbmodels').DbLocDeptsView;
var DeptCatsView    = require('./dbhelpers/inmar_test_dbmodels').DbDeptCatsView;
var CatSubcatsView  = require('./dbhelpers/inmar_test_dbmodels').DbCatSubcatsView;
var LdcsDataView    = require('./dbhelpers/inmar_test_dbmodels').DbLdcsDataView;
var ProductsView    = require('./dbhelpers/inmar_test_dbmodels').DbProductsView;

// GET all locations
exports.getAllLocations = function (req, resp, next) {
    var callDetails = "REQ(GET): api/v1/location";
    Util.logReqBegin(callDetails);
    Location.findAll({
        order: ['loc_name']
    }).then(function (allLocations) {
        resp.status(200);
        resp.send({ 
            CallStatus: "GOOD", 
            Count: allLocations.length,
            Data: allLocations 
        });
        next();
    }).catch(function (err) {
        resp.status(500);
        resp.send({ CallStatus: "ERROR", Data: err });
        next();
    });
}

// GET all departments by location
exports.getDeptByLocation = function (req, resp, next) {
    var lid = req.params.lid;
    var callDetails = "REQ(GET): /api/v1/location/"+ lid +"/department/";
    Util.logReqBegin(callDetails);
    LdcsDataView.findAll({
        order: ['dept_name'],
        where: { loc_id: lid },
        attributes: [[Sequelize.literal('DISTINCT dept_id'), 'dept_id'], 'dept_name']
    }).then(function (allDepartments) {
        if(allDepartments.length > 0) {
            resp.status(200);
            resp.send({ 
                CallStatus: "GOOD", 
                Count: allDepartments.length,
                Data: allDepartments 
            });
            next();
        } else {
            resp.status(404);
            resp.send({ 
                CallStatus: "NO_DEPARTMENTS_FOUND"
            });
            next();
        }
        
    }).catch(function (err) {
        resp.status(500);
        resp.send({ CallStatus: "ERROR", data: err });
        next();
    });
}

// GET all categories by department and location
exports.getCatByDepartment = function (req, resp, next) {
    var lid = req.params.lid;
    var did = req.params.did;
    var callDetails = "REQ(GET): /api/v1/location/"+ lid +"/department/"+ did +"/category";
    Util.logReqBegin(callDetails);
    // Query
    LdcsDataView.findAll({
        order: ['cat_name'],
        where: { loc_id: lid, dept_id: did },
        attributes: [[Sequelize.literal('DISTINCT cat_id'), 'cat_id'], 'cat_name']
    }).then(function (allCategories) {
        resp.status(200);
        resp.send({ 
            CallStatus: "GOOD", 
            Count: allCategories.length,
            Data: allCategories 
        });
        next();
    }).catch(function (err) {
        resp.status(500);
        resp.send({ CallStatus: "ERROR", data: err });
        next();
    });
}

// GET all categories by department and location
exports.getSubCatByCat = function (req, resp, next) {
    var lid = req.params.lid;
    var did = req.params.did;
    var cid = req.params.cid;
    var callDetails = "REQ(GET): /api/v1/location/"+ lid +"/department/"+ did +"/category/"+ cid +"/subcategory";
    Util.logReqBegin(callDetails);
    // Query
    LdcsDataView.findAll({
        order: ['cat_name'],
        where: { loc_id: lid, dept_id: did, cat_id: cid },
        attributes: [[Sequelize.literal('DISTINCT scat_id'), 'scat_id'], 'scat_name']
    }).then(function (allSubCategories) {
        resp.status(200);
        resp.send({ 
            CallStatus: "GOOD", 
            Count: allSubCategories.length,
            Data: allSubCategories 
        });
        next();
    }).catch(function (err) {
        resp.status(500);
        resp.send({ CallStatus: "ERROR", data: err });
        next();
    });
}

// GET all categories by department and location
exports.getProductDetails = function (req, resp, next) {
    var lid = req.params.lid;
    var did = req.params.did;
    var cid = req.params.cid;
    var sid = req.params.sid;
    var callDetails = "REQ(GET): /api/v1/location/"+ lid +"/department/"+ did +"/category/"+ cid +"/subcategory/"+ sid;
    Util.logReqBegin(callDetails);
    // Query
    ProductsView.findAll({
        order: ['sku_name'],
        where: { loc_id: lid, dept_id: did, cat_id: cid, scat_id: sid },
        attributes: [[Sequelize.literal('DISTINCT sku_id'), 'sku_id'], 'sku_name']
    }).then(function (ProductDetails) {
        resp.status(200);
        resp.send({ 
            CallStatus: "GOOD", 
            Count: ProductDetails.length,
            Data: ProductDetails 
        });
        next();
    }).catch(function (err) {
        resp.status(500);
        resp.send({ CallStatus: "ERROR", data: err });
        next();
    });
}

