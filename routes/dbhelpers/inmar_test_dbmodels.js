/****************************************************************************************
Program: routes/dbhelpers/inmar_test_dbmodels.js
Author: Venkat Koneti (Sequelize DB Models Generator)
Create Date: 2017-09-06 02:06:12.436354
Version: 1.0
Description:
    Sequelize models file for inmar_test
    Make sure you re-run if your database design changes with the following command

>>> python sequelize_dbmodels_gen.py localhost 3307 root admin inmar_test
****************************************************************************************/
var Sequelize = require('sequelize');

// Connection poll
var sequelize = new Sequelize('inmar_test', 'root', 'admin', {
  host: 'localhost',
  port: 3307,
  dialect: 'mysql',
  logging: false,
  define: {
    timestamps: false,
    freezeTableName: true
  }
});

// Table definition for: tbl_categories
var Category = sequelize.define("tbl_categories", {
	cat_id: { type: Sequelize.INTEGER(10), primaryKey: true, autoIncrement: true, allowNull: false },
	cat_name: { type: Sequelize.STRING(250), allowNull: false }
});

// Table definition for: tbl_cat_subcats
var CatSubcat = sequelize.define("tbl_cat_subcats", {
	cs_id: { type: Sequelize.INTEGER(10), primaryKey: true, autoIncrement: true, allowNull: false },
	cs_cat_id: { type: Sequelize.INTEGER(10), allowNull: false },
	cs_scat_id: { type: Sequelize.INTEGER(10), allowNull: false }
});

// Table definition for: tbl_departments
var Department = sequelize.define("tbl_departments", {
	dept_id: { type: Sequelize.INTEGER(10), primaryKey: true, autoIncrement: true, allowNull: false },
	dept_name: { type: Sequelize.STRING(250), allowNull: false }
});

// Table definition for: tbl_dept_cats
var DeptCat = sequelize.define("tbl_dept_cats", {
	dc_id: { type: Sequelize.INTEGER(10), primaryKey: true, autoIncrement: true, allowNull: false },
	dc_dept_id: { type: Sequelize.INTEGER(10), allowNull: false },
	dc_cat_id: { type: Sequelize.INTEGER(10), allowNull: false }
});

// Table definition for: tbl_dump
var Dump = sequelize.define("tbl_dump", {
	sku_id: { type: Sequelize.INTEGER(10), allowNull: true },
	sku_name: { type: Sequelize.STRING(250), allowNull: true },
	location: { type: Sequelize.STRING(250), allowNull: true },
	department: { type: Sequelize.STRING(250), allowNull: true },
	category: { type: Sequelize.STRING(250), allowNull: true },
	subcategory: { type: Sequelize.STRING(250), allowNull: true }
});

// Table definition for: tbl_locations
var Location = sequelize.define("tbl_locations", {
	loc_id: { type: Sequelize.INTEGER(10), primaryKey: true, autoIncrement: true, allowNull: false },
	loc_name: { type: Sequelize.STRING(250), allowNull: false }
});

// Table definition for: tbl_loc_depts
var LocDept = sequelize.define("tbl_loc_depts", {
	ld_id: { type: Sequelize.INTEGER(10), primaryKey: true, autoIncrement: true, allowNull: false },
	ld_loc_id: { type: Sequelize.INTEGER(10), allowNull: false },
	ld_dept_id: { type: Sequelize.INTEGER(10), allowNull: false }
});

// Table definition for: tbl_products
var Product = sequelize.define("tbl_products", {
	sku_id: { type: Sequelize.INTEGER(10), primaryKey: true, allowNull: false },
	sku_name: { type: Sequelize.STRING(250), allowNull: true },
	loc_id: { type: Sequelize.INTEGER(10), allowNull: true },
	dept_id: { type: Sequelize.INTEGER(10), allowNull: true },
	cat_id: { type: Sequelize.INTEGER(10), allowNull: true },
	scat_id: { type: Sequelize.INTEGER(10), allowNull: true }
});

// Table definition for: tbl_subcategories
var Subcategory = sequelize.define("tbl_subcategories", {
	scat_id: { type: Sequelize.INTEGER(10), primaryKey: true, autoIncrement: true, allowNull: false },
	scat_name: { type: Sequelize.STRING(250), allowNull: false }
});

// Table definition for: vw_cat_subcats
var CatSubcatsView = sequelize.define("vw_cat_subcats", {
	cs_id: { type: Sequelize.INTEGER(10), primaryKey: true, allowNull: false },
	cat_id: { type: Sequelize.INTEGER(10), allowNull: false },
	cat_name: { type: Sequelize.STRING(250), allowNull: false },
	scat_id: { type: Sequelize.INTEGER(10), allowNull: false },
	scat_name: { type: Sequelize.STRING(250), allowNull: false }
});

// Table definition for: vw_dept_cats
var DeptCatsView = sequelize.define("vw_dept_cats", {
	dc_id: { type: Sequelize.INTEGER(10), primaryKey: true, allowNull: false },
	dept_id: { type: Sequelize.INTEGER(10), allowNull: false },
	dept_name: { type: Sequelize.STRING(250), allowNull: false },
	cat_id: { type: Sequelize.INTEGER(10), allowNull: false },
	cat_name: { type: Sequelize.STRING(250), allowNull: false }
});

// Table definition for: vw_ldcs_data
var LdcsDataView = sequelize.define("vw_ldcs_data", {
	loc_id: { type: Sequelize.INTEGER(10), primaryKey: true, allowNull: false },
	loc_name: { type: Sequelize.STRING(250), allowNull: false },
	dept_id: { type: Sequelize.INTEGER(10), allowNull: false },
	dept_name: { type: Sequelize.STRING(250), allowNull: false },
	cat_id: { type: Sequelize.INTEGER(10), allowNull: false },
	cat_name: { type: Sequelize.STRING(250), allowNull: false },
	scat_id: { type: Sequelize.INTEGER(10), allowNull: false },
	scat_name: { type: Sequelize.STRING(250), allowNull: false }
});

// Table definition for: vw_loc_depts
var LocDeptsView = sequelize.define("vw_loc_depts", {
	ld_id: { type: Sequelize.INTEGER(10), primaryKey: true, allowNull: false },
	loc_id: { type: Sequelize.INTEGER(10), allowNull: false },
	loc_name: { type: Sequelize.STRING(250), allowNull: false },
	dept_id: { type: Sequelize.INTEGER(10), allowNull: false },
	dept_name: { type: Sequelize.STRING(250), allowNull: false }
});

// Table definition for: vw_products
var ProductsView = sequelize.define("vw_products", {
	sku_id: { type: Sequelize.INTEGER(10), primaryKey: true, allowNull: false },
	sku_name: { type: Sequelize.STRING(250), allowNull: true },
	loc_id: { type: Sequelize.INTEGER(10), allowNull: true },
	loc_name: { type: Sequelize.STRING(250), allowNull: false },
	dept_id: { type: Sequelize.INTEGER(10), allowNull: true },
	dept_name: { type: Sequelize.STRING(250), allowNull: false },
	cat_id: { type: Sequelize.INTEGER(10), allowNull: true },
	cat_name: { type: Sequelize.STRING(250), allowNull: false },
	scat_id: { type: Sequelize.INTEGER(10), allowNull: true },
	scat_name: { type: Sequelize.STRING(250), allowNull: false }
});

// Export Sequelize & Table models
exports.Sequelize = sequelize;
exports.DbCategory = Category;
exports.DbCatSubcat = CatSubcat;
exports.DbDepartment = Department;
exports.DbDeptCat = DeptCat;
exports.DbDump = Dump;
exports.DbLocation = Location;
exports.DbLocDept = LocDept;
exports.DbProduct = Product;
exports.DbSubcategory = Subcategory;
exports.DbCatSubcatsView = CatSubcatsView;
exports.DbDeptCatsView = DeptCatsView;
exports.DbLdcsDataView = LdcsDataView;
exports.DbLocDeptsView = LocDeptsView;
exports.DbProductsView = ProductsView;
