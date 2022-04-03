-- Table hqz_corp_info
INSERT INTO `wow_db`.`hqz_corp_info` (`corp_reg_no`, `corp_name`, `discount`) VALUES ('A1100', 'Google', 0.30);
INSERT INTO `wow_db`.`hqz_corp_info` (`corp_reg_no`, `corp_name`, `discount`) VALUES ('A2200', 'Meta', 0.25);
INSERT INTO `wow_db`.`hqz_corp_info` (`corp_reg_no`, `corp_name`, `discount`) VALUES ('A3300', 'Microsoft ', 0.30);
INSERT INTO `wow_db`.`hqz_corp_info` (`corp_reg_no`, `corp_name`, `discount`) VALUES ('A4400', 'Apple', 0.20);
INSERT INTO `wow_db`.`hqz_corp_info` (`corp_reg_no`, `corp_name`, `discount`) VALUES ('A5500', 'LinkedIn', 0.20);
INSERT INTO `wow_db`.`hqz_corp_info` (`corp_reg_no`, `corp_name`, `discount`) VALUES ('A6600', 'Amazon', 0.15);
INSERT INTO `wow_db`.`hqz_corp_info` (`corp_reg_no`, `corp_name`, `discount`) VALUES ('A7700', 'Tesla', 0.40);
INSERT INTO `wow_db`.`hqz_corp_info` (`corp_reg_no`, `corp_name`, `discount`) VALUES ('A8800', 'Adidas', 0.15);
INSERT INTO `wow_db`.`hqz_corp_info` (`corp_reg_no`, `corp_name`, `discount`) VALUES ('A9900', 'Tiktok', 0.10);
INSERT INTO `wow_db`.`hqz_corp_info` (`corp_reg_no`, `corp_name`, `discount`) VALUES ('B1100', 'Nike', 0.25);

-- Table hqz_coupon
INSERT INTO `wow_db`.`hqz_coupon` (`coupon_id`, `discount`, `valid_from_date`, `valid_to_date`) VALUES (10001, 0.10, '2018-01-01 00:00:00', '2018-03-01 23:59:59');
INSERT INTO `wow_db`.`hqz_coupon` (`coupon_id`, `discount`, `valid_from_date`, `valid_to_date`) VALUES (10002, 0.15, '2018-06-15 00:00:00', '2022-08-31 23:59:59');
INSERT INTO `wow_db`.`hqz_coupon` (`coupon_id`, `discount`, `valid_from_date`, `valid_to_date`) VALUES (10003, 0.05, '2019-01-01 00:00:00', '2019-06-15 23:59:59');
INSERT INTO `wow_db`.`hqz_coupon` (`coupon_id`, `discount`, `valid_from_date`, `valid_to_date`) VALUES (10004, 0.20, '2019-09-01 00:00:00', '2019-10-01 23:59:59');
INSERT INTO `wow_db`.`hqz_coupon` (`coupon_id`, `discount`, `valid_from_date`, `valid_to_date`) VALUES (10005, 0.10, '2020-01-01 00:00:00', '2020-12-30 23:59:59');
INSERT INTO `wow_db`.`hqz_coupon` (`coupon_id`, `discount`, `valid_from_date`, `valid_to_date`) VALUES (10006, 0.15, '2021-01-01 00:00:00', '2021-01-31 23:59:59');
INSERT INTO `wow_db`.`hqz_coupon` (`coupon_id`, `discount`, `valid_from_date`, `valid_to_date`) VALUES (10007, 0.30, '2021-10-15 00:00:00', '2022-03-15 23:59:59');
INSERT INTO `wow_db`.`hqz_coupon` (`coupon_id`, `discount`, `valid_from_date`, `valid_to_date`) VALUES (10008, 0.25, '2022-01-01 00:00:00', '2022-02-15 23:59:59');
INSERT INTO `wow_db`.`hqz_coupon` (`coupon_id`, `discount`, `valid_from_date`, `valid_to_date`) VALUES (10009, 0.10, '2022-02-01 00:00:00', '2022-05-01 23:59:59');
INSERT INTO `wow_db`.`hqz_coupon` (`coupon_id`, `discount`, `valid_from_date`, `valid_to_date`) VALUES (10010, 0.15, '2022-03-15 00:00:00', '2022-08-01 23:59:59');

-- Table hqz_class
INSERT INTO `wow_db`.`hqz_class` (`class_id`, `class_name`, `rental_rate`, `over_fee`) VALUES (1, 'motorcycles', 20.00, 5.00);
INSERT INTO `wow_db`.`hqz_class` (`class_id`, `class_name`, `rental_rate`, `over_fee`) VALUES (2, 'mini cars', 30.00, 10.00);
INSERT INTO `wow_db`.`hqz_class` (`class_id`, `class_name`, `rental_rate`, `over_fee`) VALUES (3, 'small cars', 30.00, 10.00);
INSERT INTO `wow_db`.`hqz_class` (`class_id`, `class_name`, `rental_rate`, `over_fee`) VALUES (4, 'medium cars', 40.00, 20.00);
INSERT INTO `wow_db`.`hqz_class` (`class_id`, `class_name`, `rental_rate`, `over_fee`) VALUES (5, 'large cars', 50.00, 20.00);
INSERT INTO `wow_db`.`hqz_class` (`class_id`, `class_name`, `rental_rate`, `over_fee`) VALUES (6, 'executive cars', 70.00, 50.00);
INSERT INTO `wow_db`.`hqz_class` (`class_id`, `class_name`, `rental_rate`, `over_fee`) VALUES (7, 'luxury cars', 100.00, 50.00);
INSERT INTO `wow_db`.`hqz_class` (`class_id`, `class_name`, `rental_rate`, `over_fee`) VALUES (8, 'SUV', 60.00, 20.00);
INSERT INTO `wow_db`.`hqz_class` (`class_id`, `class_name`, `rental_rate`, `over_fee`) VALUES (9, 'RV', 150.00, 50.00);
INSERT INTO `wow_db`.`hqz_class` (`class_id`, `class_name`, `rental_rate`, `over_fee`) VALUES (10, 'Sports cars', 200.00, 50.00);

-- Table hqz_office
INSERT INTO `wow_db`.`hqz_office` (`office_id`, `street`, `city`, `state`, `zipcode`, `office_phone`) VALUES (1, '711 Nulla St.', 'New York', 'NY', '10001', '(257) 563-7401');
INSERT INTO `wow_db`.`hqz_office` (`office_id`, `street`, `city`, `state`, `zipcode`, `office_phone`) VALUES (2, '606 Ullamcorper St.', 'Roseville', 'NH', '11523', '(786) 713-8616');
INSERT INTO `wow_db`.`hqz_office` (`office_id`, `street`, `city`, `state`, `zipcode`, `office_phone`) VALUES (3, '7292 Dictum Av.', 'San Antonio', 'MI', '47096', '(492) 709-6392');
INSERT INTO `wow_db`.`hqz_office` (`office_id`, `street`, `city`, `state`, `zipcode`, `office_phone`) VALUES (4, '191 Sodales Rd.', 'Tamuning', 'PA', '10855', '(654) 393-5734');
INSERT INTO `wow_db`.`hqz_office` (`office_id`, `street`, `city`, `state`, `zipcode`, `office_phone`) VALUES (5, '511-5762 At Rd.', 'Santa Rosa', 'MN', '98804', '(684) 579-1879');
INSERT INTO `wow_db`.`hqz_office` (`office_id`, `street`, `city`, `state`, `zipcode`, `office_phone`) VALUES (6, '800 Middle Avenue', 'Menlo Park', 'CA', '94025', '(389) 737-2852');
INSERT INTO `wow_db`.`hqz_office` (`office_id`, `street`, `city`, `state`, `zipcode`, `office_phone`) VALUES (7, '1500 Valencia Street', 'San Francisco', 'CA', '94110', '(660) 663-4518');
INSERT INTO `wow_db`.`hqz_office` (`office_id`, `street`, `city`, `state`, `zipcode`, `office_phone`) VALUES (8, '1044 Middlefield Road', 'Easthampton', 'TN', '31626', '(608) 265-2215');
INSERT INTO `wow_db`.`hqz_office` (`office_id`, `street`, `city`, `state`, `zipcode`, `office_phone`) VALUES (9, '660 Veterans Blvd.', 'Lynchburg', 'DC', '29738', '(959) 119-8364');
INSERT INTO `wow_db`.`hqz_office` (`office_id`, `street`, `city`, `state`, `zipcode`, `office_phone`) VALUES (10, '114 Fifth Avenue', 'Visalia', 'VA', '54886', '(468) 353-2641');

-- Table hqz_vehicle
INSERT INTO `wow_db`.`hqz_vehicle` (`vin`, `make`, `model`, `car_year`, `license_plate_no`, `class_id`, `office_id`, `vehicle_status`) VALUES ('jtezu11f88k007763', 'toyota', 'cruiser', '2011', '47LMW26', '1', '3', 'A');
INSERT INTO `wow_db`.`hqz_vehicle` (`vin`, `make`, `model`, `car_year`, `license_plate_no`, `class_id`, `office_id`, `vehicle_status`) VALUES ('2fmdk3gc4bbb02217', 'chevrolet', '1500', '2018', 'CZU734', '2', '7', 'R');
INSERT INTO `wow_db`.`hqz_vehicle` (`vin`, `make`, `model`, `car_year`, `license_plate_no`, `class_id`, `office_id`, `vehicle_status`) VALUES ('3c4pdcgg5jt346413', 'ford', 'door', '2014', '113ALT', '3', '5', 'A');
INSERT INTO `wow_db`.`hqz_vehicle` (`vin`, `make`, `model`, `car_year`, `license_plate_no`, `class_id`, `office_id`, `vehicle_status`) VALUES ('1ftfw1et4efc23745', 'gmc', 'mpv', '2017', '324AZY', '3', '8', 'A');
INSERT INTO `wow_db`.`hqz_vehicle` (`vin`, `make`, `model`, `car_year`, `license_plate_no`, `class_id`, `office_id`, `vehicle_status`) VALUES ('3gcpcrec2jg473991', 'chrysler', 'wagon', '2017', '3KCT171', '4', '1', 'A');
INSERT INTO `wow_db`.`hqz_vehicle` (`vin`, `make`, `model`, `car_year`, `license_plate_no`, `class_id`, `office_id`, `vehicle_status`) VALUES ('2c4rdgeg9jr237989', 'ford', 'door', '2013', 'FUE277', '4', '4', 'R');
INSERT INTO `wow_db`.`hqz_vehicle` (`vin`, `make`, `model`, `car_year`, `license_plate_no`, `class_id`, `office_id`, `vehicle_status`) VALUES ('1gcsksea1az121133', 'buick', 'encore', '2018', '825KHX', '4', '8', 'A');
INSERT INTO `wow_db`.`hqz_vehicle` (`vin`, `make`, `model`, `car_year`, `license_plate_no`, `class_id`, `office_id`, `vehicle_status`) VALUES ('1gks2gkc3hr326762', 'toyota', 'cruiser', '2019', '9825', '4', '10', 'A');
INSERT INTO `wow_db`.`hqz_vehicle` (`vin`, `make`, `model`, `car_year`, `license_plate_no`, `class_id`, `office_id`, `vehicle_status`) VALUES ('1g1zd5st5jf191860', 'infiniti', 'q70', '2016', '838714', '5', '1', 'R');
INSERT INTO `wow_db`.`hqz_vehicle` (`vin`, `make`, `model`, `car_year`, `license_plate_no`, `class_id`, `office_id`, `vehicle_status`) VALUES ('2fmpk3j92hbc12542', 'chevrolet', 'camaro', '2020', 'NPB21P', '5', '6', 'A');
INSERT INTO `wow_db`.`hqz_vehicle` (`vin`, `make`, `model`, `car_year`, `license_plate_no`, `class_id`, `office_id`, `vehicle_status`) VALUES ('2b3lj54t49h509675', 'gmc', 'door', '2019', 'WAX708', '6', '2', 'R');
INSERT INTO `wow_db`.`hqz_vehicle` (`vin`, `make`, `model`, `car_year`, `license_plate_no`, `class_id`, `office_id`, `vehicle_status`) VALUES ('1gks2bkc6hr136280', 'mercedes-benz', 'vans', '2016', '3892PDE', '7', '3', 'A');
INSERT INTO `wow_db`.`hqz_vehicle` (`vin`, `make`, `model`, `car_year`, `license_plate_no`, `class_id`, `office_id`, `vehicle_status`) VALUES ('3gcukrec0jg176059', 'mercedes-benz', 'vans', '2018', 'MYM710', '7', '9', 'R');
INSERT INTO `wow_db`.`hqz_vehicle` (`vin`, `make`, `model`, `car_year`, `license_plate_no`, `class_id`, `office_id`, `vehicle_status`) VALUES ('2c4rc1cg5hr616095', 'jeep', 'compass', '2019', '46914', '8', '4', 'R');
INSERT INTO `wow_db`.`hqz_vehicle` (`vin`, `make`, `model`, `car_year`, `license_plate_no`, `class_id`, `office_id`, `vehicle_status`) VALUES ('1ftfw1et7dfa47790', 'ford', 'srw', '2020', 'MHZ815', '8', '7', 'A');
INSERT INTO `wow_db`.`hqz_vehicle` (`vin`, `make`, `model`, `car_year`, `license_plate_no`, `class_id`, `office_id`, `vehicle_status`) VALUES ('1gks2gkc6hr328389', 'gmc', 'malibu', '2017', 'WTN197', '8', '8', 'A');
INSERT INTO `wow_db`.`hqz_vehicle` (`vin`, `make`, `model`, `car_year`, `license_plate_no`, `class_id`, `office_id`, `vehicle_status`) VALUES ('3kpfk4a77je198723', 'chrysler', '300', '2019', 'KVZ573', '8', '10', 'A');
INSERT INTO `wow_db`.`hqz_vehicle` (`vin`, `make`, `model`, `car_year`, `license_plate_no`, `class_id`, `office_id`, `vehicle_status`) VALUES ('8btpe7dd4ge127040', 'buick', 'enclave', '2017', '407CYD', '9', '2', 'A');
INSERT INTO `wow_db`.`hqz_vehicle` (`vin`, `make`, `model`, `car_year`, `license_plate_no`, `class_id`, `office_id`, `vehicle_status`) VALUES ('wba4f9c51hg439932', 'bmw', 'm', '2017', '6789DQ', '9', '6', 'R');
INSERT INTO `wow_db`.`hqz_vehicle` (`vin`, `make`, `model`, `car_year`, `license_plate_no`, `class_id`, `office_id`, `vehicle_status`) VALUES ('2c3cdzc95fh757310', 'jeep', 'cherokee', '2016', 'DXJ226', '10', '1', 'A');

-- Table hqz_customer, individual customer
INSERT INTO `wow_db`.`hqz_customer` (`customer_id`, `c_street`, `c_city`, `c_state`, `c_zipcode`, `c_email`, `c_phone`, `cust_type`) 
VALUES (10001, '15 Gelston St', 'Brooklyn', 'NY', '11203', 'adam@gmail.com', '9195833476', 'I');

INSERT INTO `wow_db`.`hqz_customer` (`customer_id`, `c_street`, `c_city`, `c_state`, `c_zipcode`, `c_email`, `c_phone`, `cust_type`) 
VALUES (10002, '60 Canal St', 'Manhattan', 'NY', '11203', 'eve@gmail.com', '9495877625', 'I');

INSERT INTO `wow_db`.`hqz_customer` (`customer_id`, `c_street`, `c_city`, `c_state`, `c_zipcode`, `c_email`, `c_phone`, `cust_type`) 
VALUES (10003, '7 Fifth Ave', 'Manhattan', 'NY', '10025', 'taylor@gmail.com', '3049587635', 'I');

INSERT INTO `wow_db`.`hqz_customer` (`customer_id`, `c_street`, `c_city`, `c_state`, `c_zipcode`, `c_email`, `c_phone`, `cust_type`) 
VALUES (10004, '12 Eighth Ave', 'Brooklyn', 'NY', '11203', 'rose@gmail.com', '3546377485', 'I');

INSERT INTO `wow_db`.`hqz_customer` (`customer_id`, `c_street`, `c_city`, `c_state`, `c_zipcode`, `c_email`, `c_phone`, `cust_type`) 
VALUES (10005, '18 86 St', 'Brooklyn', 'NY', '11209', 'bill@gmail.com', '4857366524', 'I');

INSERT INTO `wow_db`.`hqz_customer` (`customer_id`, `c_street`, `c_city`, `c_state`, `c_zipcode`, `c_email`, `c_phone`, `cust_type`) 
VALUES (10006, '69 Prospect Ave', 'Brooklyn', 'NY', '11203', 'mj@gmail.com', '3847599878', 'I');

INSERT INTO `wow_db`.`hqz_customer` (`customer_id`, `c_street`, `c_city`, `c_state`, `c_zipcode`, `c_email`, `c_phone`, `cust_type`) 
VALUES (10007, '66 Gelston St', 'Brooklyn', 'NY', '11203', 'xxx@gmail.com', '1526377485', 'I');

INSERT INTO `wow_db`.`hqz_customer` (`customer_id`, `c_street`, `c_city`, `c_state`, `c_zipcode`, `c_email`, `c_phone`, `cust_type`) 
VALUES (10008, '93 Bay Ridge Ave', 'Brooklyn', 'NY', '11208', 'xmen@gmail.com', '3728377465', 'I');

INSERT INTO `wow_db`.`hqz_customer` (`customer_id`, `c_street`, `c_city`, `c_state`, `c_zipcode`, `c_email`, `c_phone`, `cust_type`) 
VALUES (10009, '22 Back St', 'Manhattan', 'NY', '11011', 'backstreetboys@gmail.com', '3738499586', 'I');

INSERT INTO `wow_db`.`hqz_customer` (`customer_id`, `c_street`, `c_city`, `c_state`, `c_zipcode`, `c_email`, `c_phone`, `cust_type`) 
VALUES (10010, '1123 Fifth Ave', 'Manhattan', 'NY', '11056', 'peterpacker@gmail.com', '2223338473', 'C');

INSERT INTO `wow_db`.`hqz_customer` (`customer_id`, `c_street`, `c_city`, `c_state`, `c_zipcode`, `c_email`, `c_phone`, `cust_type`) 
VALUES (10011, '1 90 St', 'Queens', 'NY', '12036', 'steve@gmail.com', '2209388746', 'C');

INSERT INTO `wow_db`.`hqz_customer` (`customer_id`, `c_street`, `c_city`, `c_state`, `c_zipcode`, `c_email`, `c_phone`, `cust_type`) 
VALUES (10012, '19 Hal St', 'Manhattan', 'NY', '12349', 'rock@gmail.com', '2837655438', 'C');

INSERT INTO `wow_db`.`hqz_customer` (`customer_id`, `c_street`, `c_city`, `c_state`, `c_zipcode`, `c_email`, `c_phone`, `cust_type`) 
VALUES (10013, '18 Gelston St', 'Brooklyn', 'NY', '11234', 'adamxx@gmail.com', '5654899356', 'C');

INSERT INTO `wow_db`.`hqz_customer` (`customer_id`, `c_street`, `c_city`, `c_state`, `c_zipcode`, `c_email`, `c_phone`, `cust_type`) 
VALUES (10014, '23 Kelvin St', 'Bronx', 'NY', '10018', 'rapper@gmail.com', '2827388475', 'C');

INSERT INTO `wow_db`.`hqz_customer` (`customer_id`, `c_street`, `c_city`, `c_state`, `c_zipcode`, `c_email`, `c_phone`, `cust_type`) 
VALUES (10015, '5 MetroTech', 'Brooklyn', 'NY', '11201', 'nyu@gmail.com', '1112224456', 'C');

INSERT INTO `wow_db`.`hqz_customer` (`customer_id`, `c_street`, `c_city`, `c_state`, `c_zipcode`, `c_email`, `c_phone`, `cust_type`) 
VALUES (10016, '6 MetroTech', 'Brooklyn', 'NY', '11203', 'anothernyu@gmail.com', '2345678987', 'C');

INSERT INTO `wow_db`.`hqz_customer` (`customer_id`, `c_street`, `c_city`, `c_state`, `c_zipcode`, `c_email`, `c_phone`, `cust_type`) 
VALUES (10017, '99 Empire St', 'Manhattan', 'NY', '11012', 'imrich@gmail.com', '2536766534', 'C');

INSERT INTO `wow_db`.`hqz_customer` (`customer_id`, `c_street`, `c_city`, `c_state`, `c_zipcode`, `c_email`, `c_phone`, `cust_type`) 
VALUES (10018, '100 Empire St', 'Manhattan', 'NY', '11012', 'imricher@gmail.com', '3236596325', 'C');

INSERT INTO `wow_db`.`hqz_customer` (`customer_id`, `c_street`, `c_city`, `c_state`, `c_zipcode`, `c_email`, `c_phone`, `cust_type`) 
VALUES (10019, '101 Gelston St', 'Brooklyn', 'NY', '11203', 'homes@gmail.com', '9293844765', 'C');

INSERT INTO `wow_db`.`hqz_customer` (`customer_id`, `c_street`, `c_city`, `c_state`, `c_zipcode`, `c_email`, `c_phone`, `cust_type`) 
VALUES (10020, '300 Sunset St', 'Brooklyn', 'NY', '11205', 'roll@gmail.com', '2324566789', 'C');


-- table hqz_indiv_cust
INSERT INTO `wow_db`.`hqz_indiv_cust` (`customer_id`, `fname`, `lname`, `driver_lic_no`, `ins_company_name`, `ins_policy_no`) 
VALUES (10001, 'Adam', 'Jackson', 'drive1000000001', 'Wellfleet', 'inspolicyno10001');

INSERT INTO `wow_db`.`hqz_indiv_cust` (`customer_id`, `fname`, `lname`, `driver_lic_no`, `ins_company_name`, `ins_policy_no`) 
VALUES (10002, 'Yoyo', 'Ma', 'drive1000000002', 'Wellfleet', 'inspolicyno10002');

INSERT INTO `wow_db`.`hqz_indiv_cust` (`customer_id`, `fname`, `lname`, `driver_lic_no`, `ins_company_name`, `ins_policy_no`) 
VALUES (10003, 'Taylor', 'Swift', 'drive1000000003', 'BestINS', 'inspolicyno10003');

INSERT INTO `wow_db`.`hqz_indiv_cust` (`customer_id`, `fname`, `lname`, `driver_lic_no`, `ins_company_name`, `ins_policy_no`) 
VALUES (10004, 'Bill', 'Gates', 'drive1000000004', 'Richman', 'inspolicyno10004');

INSERT INTO `wow_db`.`hqz_indiv_cust` (`customer_id`, `fname`, `lname`, `driver_lic_no`, `ins_company_name`, `ins_policy_no`) 
VALUES (10005, 'Tim', 'Cook', 'drive1000000005', 'Stars', 'inspolicyno10005');

INSERT INTO `wow_db`.`hqz_indiv_cust` (`customer_id`, `fname`, `lname`, `driver_lic_no`, `ins_company_name`, `ins_policy_no`) 
VALUES (10006, 'Huateng', 'Ma', 'drive1000000006', 'Richman', 'inspolicyno10005');

INSERT INTO `wow_db`.`hqz_indiv_cust` (`customer_id`, `fname`, `lname`, `driver_lic_no`, `ins_company_name`, `ins_policy_no`) 
VALUES (10007, 'Yun', 'Ma', 'drive1000000007', 'Richman', 'inspolicyno10006');

INSERT INTO `wow_db`.`hqz_indiv_cust` (`customer_id`, `fname`, `lname`, `driver_lic_no`, `ins_company_name`, `ins_policy_no`) 
VALUES (10008, 'Yanhong', 'Li', 'drive1000000008', 'BestINS', 'inspolicyno10008');

INSERT INTO `wow_db`.`hqz_indiv_cust` (`customer_id`, `fname`, `lname`, `driver_lic_no`, `ins_company_name`, `ins_policy_no`) 
VALUES (10009, 'Beck', 'Bay', 'drive1000000009', 'Citizen', 'inspolicyno10009');

-- table hqz_corp_cust
INSERT INTO wow_db.hqz_corp_cust (customer_id, employee_id, corp_reg_no) VALUES (10010, 11209, 'A8800');
INSERT INTO wow_db.hqz_corp_cust (customer_id, employee_id, corp_reg_no) VALUES (10011, 11208, 'B1100');
INSERT INTO wow_db.hqz_corp_cust (customer_id, employee_id, corp_reg_no) VALUES (10012, 11207, 'A1100');
INSERT INTO wow_db.hqz_corp_cust (customer_id, employee_id, corp_reg_no) VALUES (10013, 11206, 'A1100');
INSERT INTO wow_db.hqz_corp_cust (customer_id, employee_id, corp_reg_no) VALUES (10014, 10018, 'A1100');
INSERT INTO wow_db.hqz_corp_cust (customer_id, employee_id, corp_reg_no) VALUES (10015, 11201, 'A2200');
INSERT INTO wow_db.hqz_corp_cust (customer_id, employee_id, corp_reg_no) VALUES (10016, 11203, 'A3300');
INSERT INTO wow_db.hqz_corp_cust (customer_id, employee_id, corp_reg_no) VALUES (10017, 11012, 'A4400');
INSERT INTO wow_db.hqz_corp_cust (customer_id, employee_id, corp_reg_no) VALUES (10018, 11012, 'A5500');
INSERT INTO wow_db.hqz_corp_cust (customer_id, employee_id, corp_reg_no) VALUES (10019, 11203, 'A6600');
INSERT INTO wow_db.hqz_corp_cust (customer_id, employee_id, corp_reg_no) VALUES (10020, 11205, 'A7700');

-- table hqz_rental_service
INSERT INTO wow_db.hqz_rental_service (service_id, p_street, p_city, p_state, p_zipcode, d_street, d_city, d_state, d_zipcode, p_date, d_date, s_odometer, e_odometer, daily_o_limit, customer_id, vin, coupon_id) VALUES (101, '711 Nulla St.', 'New York', 'NY', '10001', '7292 Dictum Av.', 'San Antonio', 'MI', '47096', '2021-06-01 00:41:43', '2021-06-06 00:41:59', 65110.00, 65910.00, 500.00, 10001, '1ftfw1et4efc23745', 10001);
INSERT INTO wow_db.hqz_rental_service (service_id, p_street, p_city, p_state, p_zipcode, d_street, d_city, d_state, d_zipcode, p_date, d_date, s_odometer, e_odometer, daily_o_limit, customer_id, vin, coupon_id) VALUES (102, '606 Ullamcorper St.', 'Roseville', 'NH', '11523', '191 Sodales Rd.', 'Tamuning', 'PA', '10855', '2021-07-04 00:42:04', '2021-07-05 00:42:10', 21065.00, 21810.00, 500.00, 10002, '1ftfw1et7dfa47790', 10002);
INSERT INTO wow_db.hqz_rental_service (service_id, p_street, p_city, p_state, p_zipcode, d_street, d_city, d_state, d_zipcode, p_date, d_date, s_odometer, e_odometer, daily_o_limit, customer_id, vin, coupon_id) VALUES (103, '7292 Dictum Av.', 'San Antonio', 'MI', '47096', '511-5762 At Rd.', 'Santa Rosa', 'MN', '98804', '2020-10-03 00:42:14', '2020-10-26 00:42:21', 962312.00, 965856.00, 500.00, 10003, '1g1zd5st5jf191860', 10003);
INSERT INTO wow_db.hqz_rental_service (service_id, p_street, p_city, p_state, p_zipcode, d_street, d_city, d_state, d_zipcode, p_date, d_date, s_odometer, e_odometer, daily_o_limit, customer_id, vin, coupon_id) VALUES (104, '191 Sodales Rd.', 'Tamuning', 'PA', '10855', '800 Middle Avenue', 'Menlo Park', 'CA', '94025', '2019-12-06 04:42:28', '2019-12-27 00:42:39', 89195.00, 991200.00, 600.00, 10004, '1gcsksea1az121133', 10004);
INSERT INTO wow_db.hqz_rental_service (service_id, p_street, p_city, p_state, p_zipcode, d_street, d_city, d_state, d_zipcode, p_date, d_date, s_odometer, e_odometer, daily_o_limit, customer_id, vin, coupon_id) VALUES (105, '511-5762 At Rd.', 'Santa Rosa', 'MN', '98804', '711 Nulla St.', 'New York', 'NY', '10001', '2020-07-05 00:42:46', '2020-07-17 00:42:51', 50606.00, 50606.00, 600.00, 10005, '1gks2bkc6hr136280', 10005);
INSERT INTO wow_db.hqz_rental_service (service_id, p_street, p_city, p_state, p_zipcode, d_street, d_city, d_state, d_zipcode, p_date, d_date, s_odometer, e_odometer, daily_o_limit, customer_id, vin, coupon_id) VALUES (106, '800 Middle Avenue', 'Menlo Park', 'CA', '94025', '606 Ullamcorper St.', 'Roseville', 'NH', '11523', '2020-09-05 00:42:57', '2020-09-06 00:44:17', 65651.00, 65651.00, 300.00, 10006, '1gks2gkc3hr326762', 10006);
INSERT INTO wow_db.hqz_rental_service (service_id, p_street, p_city, p_state, p_zipcode, d_street, d_city, d_state, d_zipcode, p_date, d_date, s_odometer, e_odometer, daily_o_limit, customer_id, vin, coupon_id) VALUES (107, '1500 Valencia Street', 'San Francisco', 'CA', '94110', '7292 Dictum Av.', 'San Antonio', 'MI', '47096', '2022-02-01 00:44:25', '2022-02-18 00:44:32', 915132.00, 915132.00, 300.00, 10007, '1gks2gkc6hr328389', 10007);
INSERT INTO wow_db.hqz_rental_service (service_id, p_street, p_city, p_state, p_zipcode, d_street, d_city, d_state, d_zipcode, p_date, d_date, s_odometer, e_odometer, daily_o_limit, customer_id, vin, coupon_id) VALUES (108, '1044 Middlefield Road', 'Easthampton', 'TN', '31626', '191 Sodales Rd.', 'Tamuning', 'PA', '10855', '2020-08-27 00:44:38', '2020-08-31 00:44:51', 65167.00, 65167.00, 500.00, 10008, '2b3lj54t49h509675', 10008);
INSERT INTO wow_db.hqz_rental_service (service_id, p_street, p_city, p_state, p_zipcode, d_street, d_city, d_state, d_zipcode, p_date, d_date, s_odometer, e_odometer, daily_o_limit, customer_id, vin, coupon_id) VALUES (109, '660 Veterans Blvd.', 'Lynchburg', 'DC', '29738', '511-5762 At Rd.', 'Santa Rosa', 'MN', '98804', '2019-01-02 00:45:02', '2019-02-01 00:45:09', 81498.00, 81498.00, 300.00, 10009, '2c3cdzc95fh757310', 10009);
INSERT INTO wow_db.hqz_rental_service (service_id, p_street, p_city, p_state, p_zipcode, d_street, d_city, d_state, d_zipcode, p_date, d_date, s_odometer, e_odometer, daily_o_limit, customer_id, vin, coupon_id) VALUES (110, '114 Fifth Avenue', 'Visalia', 'VA', '54886', '800 Middle Avenue', 'Menlo Park', 'CA', '94025', '2021-08-03 00:45:16', '2021-09-01 00:45:23', 5191.00, 5310.00, 900.00, 10010, '2c4rc1cg5hr616095', 10010);
INSERT INTO wow_db.hqz_rental_service (service_id, p_street, p_city, p_state, p_zipcode, d_street, d_city, d_state, d_zipcode, p_date, d_date, s_odometer, e_odometer, daily_o_limit, customer_id, vin, coupon_id) VALUES (111, '711 Nulla St.', 'New York', 'NY', '10001', '1500 Valencia Street', 'San Francisco', 'CA', '94110', '2021-09-15 00:45:26', '2021-11-03 00:45:31', 1065.00, 1650.00, 900.00, 10011, '2c4rdgeg9jr237989', null);
INSERT INTO wow_db.hqz_rental_service (service_id, p_street, p_city, p_state, p_zipcode, d_street, d_city, d_state, d_zipcode, p_date, d_date, s_odometer, e_odometer, daily_o_limit, customer_id, vin, coupon_id) VALUES (112, '606 Ullamcorper St.', 'Roseville', 'NH', '11523', '1044 Middlefield Road', 'Easthampton', 'TN', '31626', '2017-07-05 00:45:36', '2017-08-04 00:45:41', 5856.00, 9610.00, 800.00, 10012, '2fmdk3gc4bbb02217', null);
INSERT INTO wow_db.hqz_rental_service (service_id, p_street, p_city, p_state, p_zipcode, d_street, d_city, d_state, d_zipcode, p_date, d_date, s_odometer, e_odometer, daily_o_limit, customer_id, vin, coupon_id) VALUES (113, '7292 Dictum Av.', 'San Antonio', 'MI', '47096', '660 Veterans Blvd.', 'Lynchburg', 'DC', '29738', '2017-08-18 00:45:49', '2017-08-30 00:46:01', 9195.00, 10030.00, 700.00, 10013, '2fmpk3j92hbc12542', null);
INSERT INTO wow_db.hqz_rental_service (service_id, p_street, p_city, p_state, p_zipcode, d_street, d_city, d_state, d_zipcode, p_date, d_date, s_odometer, e_odometer, daily_o_limit, customer_id, vin, coupon_id) VALUES (114, '191 Sodales Rd.', 'Tamuning', 'PA', '10855', '114 Fifth Avenue', 'Visalia', 'VA', '54886', '2020-12-02 00:46:12', '2020-12-29 00:46:22', 606.00, 705.00, 700.00, 10014, '3c4pdcgg5jt346413', null);
INSERT INTO wow_db.hqz_rental_service (service_id, p_street, p_city, p_state, p_zipcode, d_street, d_city, d_state, d_zipcode, p_date, d_date, s_odometer, e_odometer, daily_o_limit, customer_id, vin, coupon_id) VALUES (115, '511-5762 At Rd.', 'Santa Rosa', 'MN', '98804', '191 Sodales Rd.', 'Tamuning', 'PA', '10855', '2021-01-02 00:46:29', '2021-02-04 00:46:33', 5651.00, 6510.00, 500.00, 10015, '3gcpcrec2jg473991', null);
INSERT INTO wow_db.hqz_rental_service (service_id, p_street, p_city, p_state, p_zipcode, d_street, d_city, d_state, d_zipcode, p_date, d_date, s_odometer, e_odometer, daily_o_limit, customer_id, vin, coupon_id) VALUES (116, '800 Middle Avenue', 'Menlo Park', 'CA', '94025', '511-5762 At Rd.', 'Santa Rosa', 'MN', '98804', '2022-01-03 00:46:38', '2022-02-26 00:46:46', 5132.00, 5921.00, 500.00, 10016, '3gcukrec0jg176059', null);
INSERT INTO wow_db.hqz_rental_service (service_id, p_street, p_city, p_state, p_zipcode, d_street, d_city, d_state, d_zipcode, p_date, d_date, s_odometer, e_odometer, daily_o_limit, customer_id, vin, coupon_id) VALUES (117, '1500 Valencia Street', 'San Francisco', 'CA', '94110', '800 Middle Avenue', 'Menlo Park', 'CA', '94025', '2022-01-26 00:46:53', '2022-01-31 00:46:57', 5167.00, 5941.00, 500.00, 10017, '3kpfk4a77je198723', null);
INSERT INTO wow_db.hqz_rental_service (service_id, p_street, p_city, p_state, p_zipcode, d_street, d_city, d_state, d_zipcode, p_date, d_date, s_odometer, e_odometer, daily_o_limit, customer_id, vin, coupon_id) VALUES (118, '1044 Middlefield Road', 'Easthampton', 'TN', '31626', '1500 Valencia Street', 'San Francisco', 'CA', '94110', '2022-03-03 00:47:02', '2022-03-16 00:47:09', 1498.00, 1591.00, 500.00, 10018, '8btpe7dd4ge127040', null);
INSERT INTO wow_db.hqz_rental_service (service_id, p_street, p_city, p_state, p_zipcode, d_street, d_city, d_state, d_zipcode, p_date, d_date, s_odometer, e_odometer, daily_o_limit, customer_id, vin, coupon_id) VALUES (119, '660 Veterans Blvd.', 'Lynchburg', 'DC', '29738', '1044 Middlefield Road', 'Easthampton', 'TN', '31626', '2020-06-13 00:47:14', '2020-06-16 00:47:21', 16510.00, 17615.00, 500.00, 10019, 'jtezu11f88k007763', null);
INSERT INTO wow_db.hqz_rental_service (service_id, p_street, p_city, p_state, p_zipcode, d_street, d_city, d_state, d_zipcode, p_date, d_date, s_odometer, e_odometer, daily_o_limit, customer_id, vin, coupon_id) VALUES (120, '114 Fifth Avenue', 'Visalia', 'VA', '54886', '221 Gold St.', 'New York', 'NY', '11201', '2021-09-14 00:47:27', '2021-09-17 00:47:33', 65410.00, 65910.00, 500.00, 10020, 'wba4f9c51hg439932', null);
INSERT INTO wow_db.hqz_rental_service (service_id, p_street, p_city, p_state, p_zipcode, d_street, d_city, d_state, d_zipcode, p_date, d_date, s_odometer, e_odometer, daily_o_limit, customer_id, vin, coupon_id) VALUES (121, '343 GOLD St.', 'New York', 'NY', '11201', 'EAST 8 St.', 'New York', 'NY', '10003', '2019-08-15 00:47:41', '2019-08-17 00:47:47', 49810.00, 50000.00, 500.00, 10001, '8btpe7dd4ge127040', null);
INSERT INTO wow_db.hqz_rental_service (service_id, p_street, p_city, p_state, p_zipcode, d_street, d_city, d_state, d_zipcode, p_date, d_date, s_odometer, e_odometer, daily_o_limit, customer_id, vin, coupon_id) VALUES (122, '343 GOLD St.', 'New York', 'NY', '11201', '1600 Amphitheatre Parkway', 'Mountain View', 'CA', '94043', '2020-08-07 00:47:57', '2020-08-18 00:48:02', 698841.00, 702260.00, 500.00, 10002, 'jtezu11f88k007763', null);


table payment
INSERT INTO wow_db.hqz_payment (payment_id, pay_date, payment_method, card_no) VALUES (100001, '2022-02-01 13:08:00', 'credit', '374245455400126');
INSERT INTO wow_db.hqz_payment (payment_id, pay_date, payment_method, card_no) VALUES (100002, '2022-01-01 13:08:07', 'debit', '374245455400122');
INSERT INTO wow_db.hqz_payment (payment_id, pay_date, payment_method, card_no) VALUES (100003, '2022-03-01 13:08:12', 'credit', '374245455400145');
INSERT INTO wow_db.hqz_payment (payment_id, pay_date, payment_method, card_no) VALUES (100004, '2022-04-01 13:08:16', 'credit', '374245455445451');
INSERT INTO wow_db.hqz_payment (payment_id, pay_date, payment_method, card_no) VALUES (100005, '2022-01-16 13:08:18', 'credit', '374245646465122');
INSERT INTO wow_db.hqz_payment (payment_id, pay_date, payment_method, card_no) VALUES (100006, '2022-03-28 13:08:23', 'debit', '351245455400126');
INSERT INTO wow_db.hqz_payment (payment_id, pay_date, payment_method, card_no) VALUES (100007, '2022-02-18 13:08:27', 'credit', '355656132123131');
INSERT INTO wow_db.hqz_payment (payment_id, pay_date, payment_method, card_no) VALUES (100008, '2022-01-27 13:08:31', 'credit', '165123616516511');
INSERT INTO wow_db.hqz_payment (payment_id, pay_date, payment_method, card_no) VALUES (100009, '2022-01-27 13:08:36', 'credit', '156165123158994');
INSERT INTO wow_db.hqz_payment (payment_id, pay_date, payment_method, card_no) VALUES (100010, '2022-01-05 13:08:39', 'credit', '235984231659441');
INSERT INTO wow_db.hqz_payment (payment_id, pay_date, payment_method, card_no) VALUES (100011, '2022-01-29 13:08:44', 'debit', '315984165494132');
INSERT INTO wow_db.hqz_payment (payment_id, pay_date, payment_method, card_no) VALUES (100012, '2022-02-15 13:08:48', 'debit', '511569123156951');
INSERT INTO wow_db.hqz_payment (payment_id, pay_date, payment_method, card_no) VALUES (100013, '2022-02-25 13:08:51', 'debit', '158961981654981');
INSERT INTO wow_db.hqz_payment (payment_id, pay_date, payment_method, card_no) VALUES (100014, '2022-03-27 13:08:56', 'credit', '894649651389923');
INSERT INTO wow_db.hqz_payment (payment_id, pay_date, payment_method, card_no) VALUES (100015, '2022-03-16 13:09:00', 'credit', '784432118964622');
INSERT INTO wow_db.hqz_payment (payment_id, pay_date, payment_method, card_no) VALUES (100016, '2022-02-27 13:09:03', 'credit', '451119684148594');
INSERT INTO wow_db.hqz_payment (payment_id, pay_date, payment_method, card_no) VALUES (100017, '2022-02-03 13:09:40', 'gift card', '1000000002');
INSERT INTO wow_db.hqz_payment (payment_id, pay_date, payment_method, card_no) VALUES (100018, '2022-01-16 13:09:45', 'credit', '556161984132189');
INSERT INTO wow_db.hqz_payment (payment_id, pay_date, payment_method, card_no) VALUES (100019, '2022-02-18 13:09:49', 'credit', '498491321654984');
INSERT INTO wow_db.hqz_payment (payment_id, pay_date, payment_method, card_no) VALUES (100020, '2022-03-17 13:09:59', 'credit', '189131656496912');
INSERT INTO wow_db.hqz_payment (payment_id, pay_date, payment_method, card_no) VALUES (100021, '2022-02-03 13:10:03', 'debit', '564189156191232');
INSERT INTO wow_db.hqz_payment (payment_id, pay_date, payment_method, card_no) VALUES (100022, '2022-02-17 13:10:08', 'gift card', '1000000031');
INSERT INTO wow_db.hqz_payment (payment_id, pay_date, payment_method, card_no) VALUES (100023, '2022-03-13 13:10:11', 'gift card', '1000000001');
INSERT INTO wow_db.hqz_payment (payment_id, pay_date, payment_method, card_no) VALUES (100024, '2022-02-14 13:10:19', 'credit', '165413198466321');
