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
INSERT INTO `wow_db`.`hqz_coupon` (`coupon_id`, `discount`, `valic_from_date`, `valid_to_date`) VALUES (10001, 0.10, '2018-01-01 00:00:00', '2018-03-01 23:59:59');
INSERT INTO `wow_db`.`hqz_coupon` (`coupon_id`, `discount`, `valic_from_date`, `valid_to_date`) VALUES (10002, 0.15, '2018-06-15 00:00:00', '2022-08-31 23:59:59');
INSERT INTO `wow_db`.`hqz_coupon` (`coupon_id`, `discount`, `valic_from_date`, `valid_to_date`) VALUES (10003, 0.05, '2019-01-01 00:00:00', '2019-06-15 23:59:59');
INSERT INTO `wow_db`.`hqz_coupon` (`coupon_id`, `discount`, `valic_from_date`, `valid_to_date`) VALUES (10004, 0.20, '2019-09-01 00:00:00', '2019-10-01 23:59:59');
INSERT INTO `wow_db`.`hqz_coupon` (`coupon_id`, `discount`, `valic_from_date`, `valid_to_date`) VALUES (10005, 0.10, '2020-01-01 00:00:00', '2020-12-30 23:59:59');
INSERT INTO `wow_db`.`hqz_coupon` (`coupon_id`, `discount`, `valic_from_date`, `valid_to_date`) VALUES (10006, 0.15, '2021-01-01 00:00:00', '2021-01-31 23:59:59');
INSERT INTO `wow_db`.`hqz_coupon` (`coupon_id`, `discount`, `valic_from_date`, `valid_to_date`) VALUES (10007, 0.30, '2021-10-15 00:00:00', '2022-03-15 23:59:59');
INSERT INTO `wow_db`.`hqz_coupon` (`coupon_id`, `discount`, `valic_from_date`, `valid_to_date`) VALUES (10008, 0.25, '2022-01-01 00:00:00', '2022-02-15 23:59:59');
INSERT INTO `wow_db`.`hqz_coupon` (`coupon_id`, `discount`, `valic_from_date`, `valid_to_date`) VALUES (10009, 0.10, '2022-02-01 00:00:00', '2022-05-01 23:59:59');
INSERT INTO `wow_db`.`hqz_coupon` (`coupon_id`, `discount`, `valic_from_date`, `valid_to_date`) VALUES (10010, 0.15, '2022-03-15 00:00:00', '2022-08-01 23:59:59');

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
INSERT INTO `wow_db`.`hqz_office` (`office_id`, `street`, `city`, `state`, `zipcode`, `office_phone`) VALUES (9, '	660 Veterans Blvd.', 'Lynchburg', 'DC', '29738', '(959) 119-8364');
INSERT INTO `wow_db`.`hqz_office` (`office_id`, `street`, `city`, `state`, `zipcode`, `office_phone`) VALUES (10, '114 Fifth Avenue', 'Visalia', 'VA', '54886', '(468) 353-2641');

-- Table hqz_vehicle
INSERT INTO `wow_db`.`hqz_vehicle` (`vin`, `make`, `model`, `car_year`, `license_plate_no`, `class_id`, `office_id`, `vehicle_status`) VALUES ('jtezu11f88k007763', 'toyota', '
cruiser', '2011', '47LMW26', '1', '3', 'A');
INSERT INTO `wow_db`.`hqz_vehicle` (`vin`, `make`, `model`, `car_year`, `license_plate_no`, `class_id`, `office_id`, `vehicle_status`) VALUES ('2fmdk3gc4bbb02217', 'chevrolet', '
1500', '2018', 'CZU734', '2', '7', 'R'); 
INSERT INTO `wow_db`.`hqz_vehicle` (`vin`, `make`, `model`, `car_year`, `license_plate_no`, `class_id`, `office_id`, `vehicle_status`) VALUES ('3c4pdcgg5jt346413', 'ford', '
door', '2014', '113ALT', '3', '5', 'A'); 
INSERT INTO `wow_db`.`hqz_vehicle` (`vin`, `make`, `model`, `car_year`, `license_plate_no`, `class_id`, `office_id`, `vehicle_status`) VALUES ('1ftfw1et4efc23745', 'gmc', '
mpv', '2017', '324AZY', '3', '8', 'A'); 
INSERT INTO `wow_db`.`hqz_vehicle` (`vin`, `make`, `model`, `car_year`, `license_plate_no`, `class_id`, `office_id`, `vehicle_status`) VALUES ('3gcpcrec2jg473991', 'chrysler', '
wagon', '2017', '3KCT171', '4', '1', 'A'); 
INSERT INTO `wow_db`.`hqz_vehicle` (`vin`, `make`, `model`, `car_year`, `license_plate_no`, `class_id`, `office_id`, `vehicle_status`) VALUES ('2c4rdgeg9jr237989', 'ford', '
door', '2013', 'FUE277', '4', '4', 'R'); 
INSERT INTO `wow_db`.`hqz_vehicle` (`vin`, `make`, `model`, `car_year`, `license_plate_no`, `class_id`, `office_id`, `vehicle_status`) VALUES ('1gcsksea1az121133', 'buick', '
encore', '2018', '825KHX', '4', '8', 'A'); 
INSERT INTO `wow_db`.`hqz_vehicle` (`vin`, `make`, `model`, `car_year`, `license_plate_no`, `class_id`, `office_id`, `vehicle_status`) VALUES ('1gks2gkc3hr326762', 'toyota', '
cruiser', '2019', '9825', '4', '10', 'A'); 
INSERT INTO `wow_db`.`hqz_vehicle` (`vin`, `make`, `model`, `car_year`, `license_plate_no`, `class_id`, `office_id`, `vehicle_status`) VALUES ('1g1zd5st5jf191860', 'infiniti', '
q70', '2016', '838714', '5', '1', 'R'); 
INSERT INTO `wow_db`.`hqz_vehicle` (`vin`, `make`, `model`, `car_year`, `license_plate_no`, `class_id`, `office_id`, `vehicle_status`) VALUES ('2fmpk3j92hbc12542', 'chevrolet', '
camaro', '2020', 'NPB21P', '5', '6', 'A'); 
INSERT INTO `wow_db`.`hqz_vehicle` (`vin`, `make`, `model`, `car_year`, `license_plate_no`, `class_id`, `office_id`, `vehicle_status`) VALUES ('2b3lj54t49h509675', 'gmc', '
door', '2019', 'WAX708', '6', '2', 'R'); 
INSERT INTO `wow_db`.`hqz_vehicle` (`vin`, `make`, `model`, `car_year`, `license_plate_no`, `class_id`, `office_id`, `vehicle_status`) VALUES ('1gks2bkc6hr136280', 'mercedes-benz', '
vans', '2016', '3892PDE', '7', '3', 'A'); 
INSERT INTO `wow_db`.`hqz_vehicle` (`vin`, `make`, `model`, `car_year`, `license_plate_no`, `class_id`, `office_id`, `vehicle_status`) VALUES ('3gcukrec0jg176059', 'mercedes-benz', '
vans', '2018', 'MYM710', '7', '9', 'R'); 
INSERT INTO `wow_db`.`hqz_vehicle` (`vin`, `make`, `model`, `car_year`, `license_plate_no`, `class_id`, `office_id`, `vehicle_status`) VALUES ('2c4rc1cg5hr616095', 'jeep', '
compass', '2019', '46914', '8', '4', 'R'); 
INSERT INTO `wow_db`.`hqz_vehicle` (`vin`, `make`, `model`, `car_year`, `license_plate_no`, `class_id`, `office_id`, `vehicle_status`) VALUES ('1ftfw1et7dfa47790', 'ford', '
srw', '2020', 'MHZ815', '8', '7', 'A'); 
INSERT INTO `wow_db`.`hqz_vehicle` (`vin`, `make`, `model`, `car_year`, `license_plate_no`, `class_id`, `office_id`, `vehicle_status`) VALUES ('1gks2gkc6hr328389', 'gmc', '
malibu', '2017', 'WTN197', '8', '8', 'A'); 
INSERT INTO `wow_db`.`hqz_vehicle` (`vin`, `make`, `model`, `car_year`, `license_plate_no`, `class_id`, `office_id`, `vehicle_status`) VALUES ('3kpfk4a77je198723', 'chrysler', '
300', '2019', 'KVZ573', '8', '10', 'A'); 
INSERT INTO `wow_db`.`hqz_vehicle` (`vin`, `make`, `model`, `car_year`, `license_plate_no`, `class_id`, `office_id`, `vehicle_status`) VALUES ('8btpe7dd4ge127040', 'buick', '
enclave', '2017', '407CYD', '9', '2', 'A'); 
INSERT INTO `wow_db`.`hqz_vehicle` (`vin`, `make`, `model`, `car_year`, `license_plate_no`, `class_id`, `office_id`, `vehicle_status`) VALUES ('wba4f9c51hg439932', 'bmw', '
m', '2017', '6789DQ', '9', '6', 'R'); 
INSERT INTO `wow_db`.`hqz_vehicle` (`vin`, `make`, `model`, `car_year`, `license_plate_no`, `class_id`, `office_id`, `vehicle_status`) VALUES ('2c3cdzc95fh757310', 'jeep', '
cherokee', '2016', 'DXJ226', '10', '1', 'A');  

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
VALUES (10010, '1123 Fifth Ave', 'Manhattan', 'NY', '11056', 'peterpacker@gmail.com', '2223338473', 'I');

INSERT INTO `wow_db`.`hqz_customer` (`customer_id`, `c_street`, `c_city`, `c_state`, `c_zipcode`, `c_email`, `c_phone`, `cust_type`) 
VALUES (10011, '1 90 St', 'Queens', 'NY', '12036', 'steve@gmail.com', '2209388746', 'I');

INSERT INTO `wow_db`.`hqz_customer` (`customer_id`, `c_street`, `c_city`, `c_state`, `c_zipcode`, `c_email`, `c_phone`, `cust_type`) 
VALUES (10012, '19 Hal St', 'Manhattan', 'NY', '12349', 'rock@gmail.com', '2837655438', 'I');

INSERT INTO `wow_db`.`hqz_customer` (`customer_id`, `c_street`, `c_city`, `c_state`, `c_zipcode`, `c_email`, `c_phone`, `cust_type`) 
VALUES (10013, '18 Gelston St', 'Brooklyn', 'NY', '11234', 'adamxx@gmail.com', '5654899356', 'I');

INSERT INTO `wow_db`.`hqz_customer` (`customer_id`, `c_street`, `c_city`, `c_state`, `c_zipcode`, `c_email`, `c_phone`, `cust_type`) 
VALUES (10014, '23 Kelvin St', 'Bronx', 'NY', '10018', 'rapper@gmail.com', '2827388475', 'I');

INSERT INTO `wow_db`.`hqz_customer` (`customer_id`, `c_street`, `c_city`, `c_state`, `c_zipcode`, `c_email`, `c_phone`, `cust_type`) 
VALUES (10015, '5 MetroTech', 'Brooklyn', 'NY', '11201', 'nyu@gmail.com', '1112224456', 'I');

INSERT INTO `wow_db`.`hqz_customer` (`customer_id`, `c_street`, `c_city`, `c_state`, `c_zipcode`, `c_email`, `c_phone`, `cust_type`) 
VALUES (10016, '6 MetroTech', 'Brooklyn', 'NY', '11203', 'anothernyu@gmail.com', '2345678987', 'I');

INSERT INTO `wow_db`.`hqz_customer` (`customer_id`, `c_street`, `c_city`, `c_state`, `c_zipcode`, `c_email`, `c_phone`, `cust_type`) 
VALUES (10017, '99 Empire St', 'Manhattan', 'NY', '11012', 'imrich@gmail.com', '2536766534', 'I');

INSERT INTO `wow_db`.`hqz_customer` (`customer_id`, `c_street`, `c_city`, `c_state`, `c_zipcode`, `c_email`, `c_phone`, `cust_type`) 
VALUES (10018, '100 Empire St', 'Manhattan', 'NY', '11012', 'imricher@gmail.com', '3236596325', 'I');

INSERT INTO `wow_db`.`hqz_customer` (`customer_id`, `c_street`, `c_city`, `c_state`, `c_zipcode`, `c_email`, `c_phone`, `cust_type`) 
VALUES (10019, '101 Gelston St', 'Brooklyn', 'NY', '11203', 'homes@gmail.com', '9293844765', 'I');

INSERT INTO `wow_db`.`hqz_customer` (`customer_id`, `c_street`, `c_city`, `c_state`, `c_zipcode`, `c_email`, `c_phone`, `cust_type`) 
VALUES (10020, '300 Sunset St', 'Brooklyn', 'NY', '11205', 'roll@gmail.com', '2324566789', 'I');

INSERT INTO `wow_db`.`hqz_customer` (`customer_id`, `c_street`, `c_city`, `c_state`, `c_zipcode`, `c_email`, `c_phone`, `cust_type`) 
VALUES (10021, '302 Sunset St', 'Brooklyn', 'NY', '11205', 'lobster@gmail.com', '9145833476', 'I');

INSERT INTO `wow_db`.`hqz_customer` (`customer_id`, `c_street`, `c_city`, `c_state`, `c_zipcode`, `c_email`, `c_phone`, `cust_type`) 
VALUES (10022, '88 MetroTech', 'Brooklyn', 'NY', '11201', 'point@gmail.com', '9195833423', 'I');

INSERT INTO `wow_db`.`hqz_customer` (`customer_id`, `c_street`, `c_city`, `c_state`, `c_zipcode`, `c_email`, `c_phone`, `cust_type`) 
VALUES (10023, '99 Gelston St', 'Brooklyn', 'NY', '11209', 'yesorno@gmail.com', '2320908736', 'I');

INSERT INTO `wow_db`.`hqz_customer` (`customer_id`, `c_street`, `c_city`, `c_state`, `c_zipcode`, `c_email`, `c_phone`, `cust_type`) 
VALUES (10024, '1000 Fifth Ave', 'Manhattan', 'NY', '12563', 'met@gmail.com', '2195833476', 'I');

-- hqz_indiv_cust
INSERT INTO `wow_db`.`hqz_indiv_cust` (`customer_id`, `fname`, `lname`, `driver_lic_no`, `ins_company_name`, `ins_policy_no`) 
VALUES (10001, 'Adam', 'Jackson', 'drive1000000000', 'Wellfleet', 'inspolicyno10001');

INSERT INTO `wow_db`.`hqz_indiv_cust` (`customer_id`, `fname`, `lname`, `driver_lic_no`, `ins_company_name`, `ins_policy_no`) 
VALUES (10002, 'Yoyo', 'Ma', 'drive1000000001', 'Wellfleet', 'inspolicyno10002');

INSERT INTO `wow_db`.`hqz_indiv_cust` (`customer_id`, `fname`, `lname`, `driver_lic_no`, `ins_company_name`, `ins_policy_no`) 
VALUES (10003, 'Taylor', 'Swift', 'drive1000000003', 'BestINS', 'inspolicyno10003');

INSERT INTO `wow_db`.`hqz_indiv_cust` (`customer_id`, `fname`, `lname`, `driver_lic_no`, `ins_company_name`, `ins_policy_no`) 
VALUES (10004, 'Bill', 'Gates', 'drive1000000005', 'Richman', 'inspolicyno10004');

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

INSERT INTO `wow_db`.`hqz_indiv_cust` (`customer_id`, `fname`, `lname`, `driver_lic_no`, `ins_company_name`, `ins_policy_no`) 
VALUES (10010, 'Mike', 'Roy', 'drive1000000010', 'BestINS', 'inspolicyno100010');

INSERT INTO `wow_db`.`hqz_indiv_cust` (`customer_id`, `fname`, `lname`, `driver_lic_no`, `ins_company_name`, `ins_policy_no`) 
VALUES (10011, 'Donald', 'Tip', 'drive1000000011', 'Citizen', 'inspolicyno10011');

INSERT INTO `wow_db`.`hqz_indiv_cust` (`customer_id`, `fname`, `lname`, `driver_lic_no`, `ins_company_name`, `ins_policy_no`) 
VALUES (10012, 'Biddy', 'Tick', 'drive1000000012', 'Citizen', 'inspolicyno10012');

INSERT INTO `wow_db`.`hqz_indiv_cust` (`customer_id`, `fname`, `lname`, `driver_lic_no`, `ins_company_name`, `ins_policy_no`) 
VALUES (10013, 'Rose', 'Mary', 'drive1000000013', 'Citizen', 'inspolicyno10013');

INSERT INTO `wow_db`.`hqz_indiv_cust` (`customer_id`, `fname`, `lname`, `driver_lic_no`, `ins_company_name`, `ins_policy_no`) 
VALUES (10014, 'Jessy', 'Jay', 'drive1000000014', 'BestINS', 'inspolicyno10014');

INSERT INTO `wow_db`.`hqz_indiv_cust` (`customer_id`, `fname`, `lname`, `driver_lic_no`, `ins_company_name`, `ins_policy_no`) 
VALUES (10015, 'Maria', 'Carey', 'drive1000000015', 'Stars', 'inspolicyno10015');

INSERT INTO `wow_db`.`hqz_indiv_cust` (`customer_id`, `fname`, `lname`, `driver_lic_no`, `ins_company_name`, `ins_policy_no`) 
VALUES (100016, 'Billie', 'Eley', 'drive1000000016', 'Stars', 'inspolicyno10016');

INSERT INTO `wow_db`.`hqz_indiv_cust` (`customer_id`, `fname`, `lname`, `driver_lic_no`, `ins_company_name`, `ins_policy_no`) 
VALUES (10017, 'Avril', 'Lavy', 'drive1000000018', 'Stars', 'inspolicyno10018');

INSERT INTO `wow_db`.`hqz_indiv_cust` (`customer_id`, `fname`, `lname`, `driver_lic_no`, `ins_company_name`, `ins_policy_no`) 
VALUES (10019, 'Lenoa', 'Louis', 'drive1000000019', 'Wellfleet', 'inspolicyno10019');

INSERT INTO `wow_db`.`hqz_indiv_cust` (`customer_id`, `fname`, `lname`, `driver_lic_no`, `ins_company_name`, `ins_policy_no`) 
VALUES (10020, 'Milly', 'Fox', 'drive1000000020', 'Stars', 'inspolicyno10020');

INSERT INTO `wow_db`.`hqz_indiv_cust` (`customer_id`, `fname`, `lname`, `driver_lic_no`, `ins_company_name`, `ins_policy_no`) 
VALUES (10021, 'Ryan', 'Ted', 'drive1000000021', 'BestINS', 'inspolicyno10001');

INSERT INTO `wow_db`.`hqz_indiv_cust` (`customer_id`, `fname`, `lname`, `driver_lic_no`, `ins_company_name`, `ins_policy_no`) 
VALUES (10022, 'Selena', 'Gogo', 'drive1000000022', 'BestINS', 'inspolicyno10022');

INSERT INTO `wow_db`.`hqz_indiv_cust` (`customer_id`, `fname`, `lname`, `driver_lic_no`, `ins_company_name`, `ins_policy_no`) 
VALUES (10023, 'Riri', 'Hanna', 'drive1000000023', 'Stars', 'inspolicyno10023');

INSERT INTO `wow_db`.`hqz_indiv_cust` (`customer_id`, `fname`, `lname`, `driver_lic_no`, `ins_company_name`, `ins_policy_no`) 
VALUES (10024, 'Sia', 'Olive', 'drive1000000024', 'BestINS', 'inspolicyno10024');