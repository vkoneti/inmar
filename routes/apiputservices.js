/********************************************************************
Program: routes/apiputservices.js
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
var Category	    = require('./dbhelpers/inmar_test_dbmodels').DbCategory;
var CatSubcat       = require('./dbhelpers/inmar_test_dbmodels').DbCatSubcat;
var CatSubcatsView  = require('./dbhelpers/inmar_test_dbmodels').DbCatSubcatsView;
var Department	    = require('./dbhelpers/inmar_test_dbmodels').DbDepartment;
var DeptCat	        = require('./dbhelpers/inmar_test_dbmodels').DbDeptCat;
var DeptCatsView    = require('./dbhelpers/inmar_test_dbmodels').DbDeptCatsView;
var Location	    = require('./dbhelpers/inmar_test_dbmodels').DbLocation;
var LocDept 	    = require('./dbhelpers/inmar_test_dbmodels').DbLocDept;
var LocDeptsView    = require('./dbhelpers/inmar_test_dbmodels').DbLocDeptsView;
var LdcsDataView    = require('./dbhelpers/inmar_test_dbmodels').DbLdcsDataView;
var Subcategory     = require('./dbhelpers/inmar_test_dbmodels').DbSubcategory;

// PUT location name update
exports.putLocation = function (req, resp, next) {
    var lid = req.params.lid;

    var callDetails = "REQ(PUT): api/v1/location/"+ lid;
    Util.logReqBegin(callDetails);
    var lname = req.params.loc_name;
    // Validations
    req.assert('loc_name', 'Location name cannot be empty').notEmpty();
    
    var errors = req.validationErrors();
    if (errors) {
        resp.status(500);
        resp.send({ callStatus: "ERROR", errorDesc: errors });
        next();
    }

    Location.findOne({
        where: { loc_id: lid },
    }).then(function (thisLocation) {
        if (thisLocation == null) {
            resp.status(404);
            resp.send({ CallStatus: "LOCATON_NOT_FOUND" });
            next();
        } else {
            thisLocation.loc_name = lname;
            thisLocation.save({ fields: ['loc_name'] }).then(function (updLocation) {
                if(updLocation == null) {
                    resp.status(500);
                    resp.send({ CallStatus: "ERROR_UPDATE_LOCATION" });
                    next();
                } else {
                    resp.status(200);
                    resp.send({ CallStatus: "GOOD", Data: thisLocation });
                    next();
                }
            });
        }
    });
}

// PUT department name update
exports.putDepartment = function (req, resp, next) {
    var lid = req.params.lid;
    var did = req.params.did;

    var callDetails = "REQ(PUT): /api/v1/location/"+ lid +"/department/"+ did;
    Util.logReqBegin(callDetails);
    var dname = req.params.dept_name;
    // Validations
    req.assert('dept_name', 'Department name cannot be empty').notEmpty();
    
    var errors = req.validationErrors();
    if (errors) {
        resp.status(500);
        resp.send({ callStatus: "ERROR", errorDesc: errors });
        next();
    }

    LdcsDataView.findAll({
        where: { loc_id: lid, dept_id: did },
    }).then(function (allDepts) {
        if(allDepts.length > 0) {
            Department.findOne({
                where: { dept_id: did },
            }).then(function (thisDepartment) {
                if (thisDepartment == null) {
                    resp.status(404);
                    resp.send({ CallStatus: "DEPARTMENT_NOT_FOUND" });
                    next();
                } else {
                    thisDepartment.dept_name = dname;
                    thisDepartment.save({ fields: ['dept_name'] }).then(function (updDepartment) {
                        if(updDepartment == null) {
                            resp.status(500);
                            resp.send({ CallStatus: "ERROR_UPDATE_DEPARTMENT" });
                            next();
                        } else {
                            resp.status(200);
                            resp.send({ CallStatus: "GOOD", Data: thisDepartment });
                            next();
                        }
                    });
                }
            });
        } else {
            resp.status(404);
            resp.send({ CallStatus: "DEPARTMENT_LOCATION_NOT_FOUND" });
            next();
        }
    }).catch(function (err) {
        resp.status(500);
        resp.send({ CallStatus: "ERROR", data: err });
        next();
    });
}

// PUT category name update
exports.putCategory = function (req, resp, next) {
    var lid = req.params.lid;
    var did = req.params.did;
    var cid = req.params.cid;

    var callDetails = "REQ(PUT): /api/v1/location/"+ lid +"/department/"+ did +"/category/"+ cid;
    Util.logReqBegin(callDetails);
    var cname = req.params.cat_name;
    // Validations
    req.assert('cat_name', 'Category name cannot be empty').notEmpty();
    
    var errors = req.validationErrors();
    if (errors) {
        resp.status(500);
        resp.send({ callStatus: "ERROR", errorDesc: errors });
        next();
    }

    LdcsDataView.findAll({
        where: { loc_id: lid, dept_id: did, cat_id: cid },
    }).then(function (allCats) {
        if(allCats.length > 0) {
            Category.findOne({
                where: { cat_id: cid },
            }).then(function (thisCategory) {
                if (thisCategory == null) {
                    resp.status(404);
                    resp.send({ CallStatus: "CATEGORY_NOT_FOUND" });
                    next();
                } else {
                    thisCategory.cat_name = cname;
                    thisCategory.save({ fields: ['cat_name'] }).then(function (updCategory) {
                        if(updCategory == null) {
                            resp.status(500);
                            resp.send({ CallStatus: "ERROR_UPDATE_CATEGORY" });
                            next();
                        } else {
                            resp.status(200);
                            resp.send({ CallStatus: "GOOD", Data: thisCategory });
                            next();
                        }
                    });
                }
            });
        } else {
            resp.status(404);
            resp.send({ CallStatus: "CATEGORY_DEPARTMENT_LOCATION_NOT_FOUND" });
            next();
        }
    }).catch(function (err) {
        resp.status(500);
        resp.send({ CallStatus: "ERROR", data: err });
        next();
    });
}

// PUT subcategory name update
exports.putSubCategory = function (req, resp, next) {
    var lid = req.params.lid;
    var did = req.params.did;
    var cid = req.params.cid;
    var sid = req.params.sid;

    var callDetails = "REQ(PUT): /api/v1/location/"+ lid +"/department/"+ did +"/category/"+ cid +"/subcategory/"+ sid;
    Util.logReqBegin(callDetails);
    var sname = req.params.scat_name;
    // Validations
    req.assert('scat_name', 'Subcategory name cannot be empty').notEmpty();
    
    var errors = req.validationErrors();
    if (errors) {
        resp.status(500);
        resp.send({ callStatus: "ERROR", errorDesc: errors });
        next();
    }

    LdcsDataView.findAll({
        where: { loc_id: lid, dept_id: did, cat_id: cid, scat_id: sid },
    }).then(function (allSubCats) {
        if(allSubCats.length > 0) {
            Subcategory.findOne({
                where: { scat_id: sid },
            }).then(function (thisSubcategory) {
                if (thisSubcategory == null) {
                    resp.status(404);
                    resp.send({ CallStatus: "SUBCATEGORY_NOT_FOUND" });
                    next();
                } else {
                    thisSubcategory.scat_name = sname;
                    thisSubcategory.save({ fields: ['scat_name'] }).then(function (updSubcategory) {
                        if(updSubcategory == null) {
                            resp.status(500);
                            resp.send({ CallStatus: "ERROR_UPDATE_SUBCATEGORY" });
                            next();
                        } else {
                            resp.status(200);
                            resp.send({ CallStatus: "GOOD", Data: thisSubcategory });
                            next();
                        }
                    });
                }
            });
        } else {
            resp.status(404);
            resp.send({ CallStatus: "SUBCATEGORY_CATEGORY_DEPARTMENT_LOCATION_NOT_FOUND" });
            next();
        }
    }).catch(function (err) {
        resp.status(500);
        resp.send({ CallStatus: "ERROR", data: err });
        next();
    });
}
