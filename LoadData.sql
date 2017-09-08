SELECT DISTINCT location FROM tbl_dump ORDER BY location;

SELECT DISTINCT department FROM tbl_dump ORDER BY department;
SELECT DISTINCT category FROM tbl_dump ORDER BY category;

SELECT DISTINCT subcategory FROM tbl_dump ORDER BY subcategory;

INSERT INTO tbl_subcategories (scat_name) SELECT DISTINCT subcategory FROM tbl_dump ORDER BY subcategory;

UPDATE tbl_products SET scat_id = (SELECT scat_id FROM tbl_subcategories WHERE scat_name = subcategory)

INSERT INTO tbl_loc_depts (ld_loc_id, ld_dept_id) SELECT DISTINCT loc_id, dept_id FROM tbl_products ORDER BY loc_id, dept_id

INSERT INTO tbl_dept_cats (dc_dept_id, dc_cat_id) SELECT DISTINCT dept_id, cat_id FROM tbl_products ORDER BY dept_id, cat_id

INSERT INTO tbl_cat_subcats (cs_cat_id, cs_scat_id) SELECT DISTINCT cat_id, scat_id FROM tbl_products ORDER BY cat_id, scat_id

-- VIEW loc_dept
SELECT ld_id, ld_loc_id AS loc_id, l.loc_name, ld_dept_id AS dept_id, d.dept_name FROM tbl_loc_depts AS ld, tbl_locations AS l, tbl_departments AS d 
WHERE ld.ld_loc_id = l.loc_id AND ld.ld_dept_id = d.dept_id

-- VIEW dept_cat
SELECT dc_id, dc_dept_id AS dept_id, d.dept_name AS dept_name, dc_cat_id AS cat_id, c.cat_name AS cat_name 
FROM tbl_dept_cats AS dc, tbl_departments AS d, tbl_categories AS c 
WHERE dc.dc_dept_id = d.dept_id AND dc.dc_cat_id = c.cat_id

-- VIEW cat_subcat
SELECT cs_id, cs_cat_id AS cat_id, c.cat_name AS cat_name, cs_scat_id AS scat_id, s.scat_name AS scat_name 
FROM tbl_cat_subcats AS sc, tbl_categories AS c, tbl_subcategories AS s 
WHERE sc.cs_cat_id = c.cat_id AND sc.cs_scat_id = s.scat_id