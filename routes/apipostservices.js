/********************************************************************
Program: routes/apipostservices.js
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

// POST new location
exports.postNewLocation = function (req, resp, next) {
    var callDetails = "REQ(POST): api/v1/location";
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

    Sequelize.transaction().then(function (t) {
        Location.create({
            loc_name: lname
        }, { transaction: t }).then(function (newLocation) {
            console.log("[+] New location added: Name: " + lname);
            t.commit();
            resp.status(200);
            resp.send({ CallStatus: "GOOD" });
            next();
        }).catch(function (err) {
            console.log("[-] Error adding new location: " + lname);
            t.rollback();
            resp.status(500);
            resp.send({ CallStatus: "ERROR", Data: err });
            next();
        });
    });
}

// POST new department
exports.postNewDepartment = function (req, resp, next) {
    var lid = req.params.lid;
    var callDetails = "REQ(POST): /api/v1/location/"+ lid +"/department/";
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

    Location.findAll({
        where: { loc_id: lid }
    }).then(function (allDepartments) {
        if(allDepartments.length > 0) {
            Sequelize.transaction().then(function (t1) {
                Department.create({
                    dept_name: dname
                }, { transaction: t1 }).then(function (newDepartment) {
                    console.log("[+] New department added: Name: " + dname);
                    t1.commit();
                    // Now we need to create the relationship between Department and Location
                    Sequelize.transaction().then(function (t2) {
                        LocDept.create({
                            ld_loc_id: lid,
                            ld_dept_id: newDepartment.dept_id
                        }, { transaction: t2 }).then(function (newLocDept) {
                            console.log("[+] Location department added");
                            t2.commit();
                            resp.status(200);
                            resp.send({ CallStatus: "GOOD" });
                            next();
                        }).catch(function (err) {
                            console.log("[-] Error adding new location-department: " + lname);
                            t2.rollback();
                            resp.status(500);
                            resp.send({ CallStatus: "ERROR", Data: err });
                            next();
                        });
                    });
                }).catch(function (err) {
                    console.log("[-] Error adding new department: " + lname);
                    t1.rollback();
                    resp.status(500);
                    resp.send({ CallStatus: "ERROR", Data: err });
                    next();
                });
            });
        } else {
            resp.status(404);
            resp.send({ CallStatus: "NO_LOCATION_FOUND" });
            next();
        }
    }).catch(function (err) {
        resp.status(500);
        resp.send({ CallStatus: "ERROR", data: err });
        next();
    });
}

// POST new category
exports.postNewCategory = function (req, resp, next) {
    var lid = req.params.lid;
    var did = req.params.did;
    var callDetails = "REQ(POST): /api/v1/location/"+ lid +"/department/"+ did +"/category";
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

    LocDept.findAll({
        where: { ld_loc_id: lid, ld_dept_id: did }
    }).then(function (allLocDepts) {
        if(allLocDepts.length > 0) {
            Sequelize.transaction().then(function (t1) {
                Category.create({
                    cat_name: cname
                }, { transaction: t1 }).then(function (newCategory) {
                    console.log("[+] New category added: Name: " + cname);
                    t1.commit();
                    // Now we need to create the relationship between Department and Location
                    Sequelize.transaction().then(function (t2) {
                        DeptCat.create({
                            dc_dept_id: did,
                            dc_cat_id: newCategory.cat_id
                        }, { transaction: t2 }).then(function (newDeptCat) {
                            console.log("[+] Category department added");
                            t2.commit();
                            resp.status(200);
                            resp.send({ CallStatus: "GOOD" });
                            next();
                        }).catch(function (err) {
                            console.log("[-] Error adding new department-category: " + cname);
                            t2.rollback();
                            resp.status(500);
                            resp.send({ CallStatus: "ERROR", Data: err });
                            next();
                        });
                    });
                }).catch(function (err) {
                    console.log("[-] Error adding new department: " + cname);
                    t1.rollback();
                    resp.status(500);
                    resp.send({ CallStatus: "ERROR", Data: err });
                    next();
                });
            });
        } else {
            resp.status(404);
            resp.send({ CallStatus: "NO_LOCATION_FOUND" });
            next();
        }
    }).catch(function (err) {
        resp.status(500);
        resp.send({ CallStatus: "ERROR", data: err });
        next();
    });
}

// POST new subcategory
exports.postNewSubCategory = function (req, resp, next) {
    var lid = req.params.lid;
    var did = req.params.did;
    var cid = req.params.cid;

    var callDetails = "REQ(POST): /api/v1/location/"+ lid +"/department/"+ did +"/category/"+ cid +"/subcategorysss";
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

    LocDept.findAll({
        where: { ld_loc_id: lid, ld_dept_id: did }
    }).then(function (allLocDepts) {
        if(allLocDepts.length > 0) {
            DeptCat.findAll({
                where: { dc_dept_id: did, dc_cat_id: cid }
            }).then(function (allDeptCats) {
                if(allDeptCats.length > 0) {
                    Sequelize.transaction().then(function (t1) {
                        Subcategory.create({
                            scat_name: sname
                        }, { transaction: t1 }).then(function (newSubCategory) {
                            console.log("[+] New subcategory added: Name: " + sname);
                            t1.commit();
                            // Now we need to create the relationship between Department and Location
                            Sequelize.transaction().then(function (t2) {
                                CatSubcat.create({
                                    cs_cat_id: cid,
                                    cs_scat_id: newSubCategory.scat_id
                                }, { transaction: t2 }).then(function (newCatSubcat) {
                                    console.log("[+] Subategory category added");
                                    t2.commit();
                                    resp.status(200);
                                    resp.send({ CallStatus: "GOOD" });
                                    next();
                                }).catch(function (err2) {
                                    console.log("[-] Error adding new category-subcategory: " + sname);
                                    t2.rollback();
                                    resp.status(500);
                                    resp.send({ CallStatus: "ERROR", Data: err2 });
                                    next();
                                });
                            });
                        }).catch(function (err1) {
                            console.log("[-] Error adding new subcategory: " + sname);
                            t1.rollback();
                            resp.status(500);
                            resp.send({ CallStatus: "ERROR", Data: err1 });
                            next();
                        });
                    });
                } else {
                    resp.status(404);
                    resp.send({ CallStatus: "NO_DEPARMENT_FOUND" });
                    next();
                }
            });
        } else {
            resp.status(404);
            resp.send({ CallStatus: "NO_LOCATION_FOUND" });
            next();
        }
    }).catch(function (err) {
        resp.status(500);
        resp.send({ CallStatus: "ERROR", data: err });
        next();
    });
}
