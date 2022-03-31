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




