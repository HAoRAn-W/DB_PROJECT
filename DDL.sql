CREATE TABLE hqz_sec_question (
    q_id    INT NOT NULL COMMENT 'Id for security questions' PRIMARY KEY,
    sec_question  VARCHAR(255) NOT NULL COMMENT 'Security questions'
);

CREATE TABLE hqz_class (
    class_id    INT NOT NULL COMMENT 'The id for the class',
    class_name  VARCHAR(30) NOT NULL COMMENT 'Name of the class, small, mid-size, SUV, etc.',
    rental_rate DECIMAL(6, 2) NOT NULL COMMENT 'Rental rate per day.',
    over_fee    DECIMAL(4, 2) NOT NULL COMMENT 'Fees for over mileage if rental service exceeds daily odometer limit.',
    img_url    VARCHAR(2000) COMMENT 'CDN url for class images.'
);

ALTER TABLE hqz_class ADD CONSTRAINT hqz_class_pk PRIMARY KEY ( class_id );

-- SQLINES LICENSE FOR EVALUATION USE ONLY
CREATE TABLE hqz_corp_cust (
    customer_id INT NOT NULL COMMENT 'ID for the customer',
    employee_id INT NOT NULL COMMENT 'Employee ID of the customer who rents the car on a corporate account' UNIQUE,
    corp_reg_no VARCHAR(10) NOT NULL COMMENT 'The registration number of the customer''s company'
);

ALTER TABLE hqz_corp_cust ADD CONSTRAINT hqz_corp_cust_pk PRIMARY KEY ( customer_id );

-- SQLINES LICENSE FOR EVALUATION USE ONLY
CREATE TABLE hqz_corp_info (
    corp_reg_no VARCHAR(10) NOT NULL COMMENT 'Registration number of the corporation',
    corp_name   VARCHAR(50) NOT NULL COMMENT 'Name of the corporation',
    discount    DECIMAL(3, 2) NOT NULL COMMENT 'Discount rate of the company, e.g., 0.85, 0.50'
);

ALTER TABLE hqz_corp_info ADD CONSTRAINT hqz_corp_info_pk PRIMARY KEY ( corp_reg_no );

-- SQLINES LICENSE FOR EVALUATION USE ONLY
CREATE TABLE hqz_coupon (
    coupon_id       BIGINT NOT NULL COMMENT 'ID of the coupon',
    discount        DECIMAL(3, 2) NOT NULL COMMENT 'Percentage of discount offered, r.g., 1.00, 0.85.',
    valid_from_date DATETIME NOT NULL COMMENT 'Valid from date',
    valid_to_date   DATETIME NOT NULL COMMENT 'Valid to date'
);

ALTER TABLE hqz_coupon ADD CONSTRAINT hqz_coupon_pk PRIMARY KEY ( coupon_id );

-- SQLINES LICENSE FOR EVALUATION USE ONLY
CREATE TABLE hqz_customer (
    customer_id INT NOT NULL COMMENT 'ID for the customer' PRIMARY KEY AUTO_INCREMENT,
    c_street    VARCHAR(30) NOT NULL COMMENT 'Street of customer address',
    c_city      VARCHAR(30) NOT NULL COMMENT 'City of customer address',
    c_state     VARCHAR(20) NOT NULL COMMENT 'State of customer address',
    c_zipcode   VARCHAR(10) NOT NULL COMMENT 'Postal code of customer address',
    c_email     VARCHAR(50) NOT NULL COMMENT 'Customer email address' UNIQUE,
    c_phone     VARCHAR(15) NOT NULL COMMENT 'Customer phone number',
    cust_type   VARCHAR(1) NOT NULL COMMENT 'Type of the customer',
    c_password  VARCHAR(255) NOT NULL COMMENT 'Customer encoded password',
    q_id        INT NOT NULL COMMENT 'Id for security questions',
    sec_ans     VARCHAR(255) NOT NULL COMMENT 'Answer for security question'
);

ALTER TABLE hqz_customer
    ADD CONSTRAINT ch_inh_hqz_customer CHECK ( cust_type IN ( 'C', 'I' ) );

ALTER TABLE hqz_customer
    ADD CONSTRAINT sec_q_fk FOREIGN KEY ( q_id )
        REFERENCES hqz_sec_question ( q_id );

CREATE TABLE hqz_admin (
    admin_id INT NOT NULL COMMENT 'ID for the admin account' PRIMARY KEY AUTO_INCREMENT,
    a_password VARCHAR(255) NOT NULL COMMENT 'admin encoded password'
);

CREATE TABLE hqz_indiv_cust (
    customer_id      INT NOT NULL COMMENT 'ID for the customer',
    fname            VARCHAR(20) NOT NULL COMMENT 'First name',
    lname            VARCHAR(20) NOT NULL COMMENT 'Last name',
    driver_lic_no    VARCHAR(15) NOT NULL COMMENT 'Driver license number',
    ins_company_name VARCHAR(50) NOT NULL COMMENT 'Insurance Company Name',
    ins_policy_no    VARCHAR(30) NOT NULL COMMENT 'Insurance Policy Number'
);

ALTER TABLE hqz_indiv_cust ADD CONSTRAINT hqz_indiv_cust_pk PRIMARY KEY ( customer_id );

CREATE TABLE hqz_invoice (
    i_date     DATETIME NOT NULL COMMENT 'Invoice date',
    i_amount   DECIMAL(8, 2) NOT NULL COMMENT 'Invoice amount in USD',
    unpaid_amount DECIMAL(8, 2) NOT NULL COMMENT 'Unpaid amount',
    service_id INT NOT NULL COMMENT 'ID for the customer'
);

ALTER TABLE hqz_invoice ADD CONSTRAINT hqz_invoice_pk PRIMARY KEY ( service_id );

CREATE TABLE hqz_office (
    office_id    INT NOT NULL COMMENT 'ID for office',
    street       VARCHAR(30) NOT NULL COMMENT 'Street for office address',
    city         VARCHAR(30) NOT NULL COMMENT 'City of office address',
    state        VARCHAR(30) NOT NULL COMMENT 'State of office address',
    zipcode      VARCHAR(10) NOT NULL COMMENT 'Postal code of office address',
    office_phone VARCHAR(15) NOT NULL COMMENT 'Phone number of the office',
    img_url    VARCHAR(2000) COMMENT 'CDN url for office images.'
);

ALTER TABLE hqz_office ADD CONSTRAINT hqz_office_pk PRIMARY KEY ( office_id );

CREATE TABLE hqz_payment (
    payment_id     BIGINT NOT NULL COMMENT 'ID of the payment' PRIMARY KEY AUTO_INCREMENT,
    pay_date       DATETIME NOT NULL COMMENT 'Date of this payment',
    payment_method VARCHAR(10) NOT NULL COMMENT 'Payment method (Credit, decit, etc.)',
    card_no        VARCHAR(20) NOT NULL COMMENT 'Payment card number',
    service_id     INT COMMENT 'ID for the service',
    paid_amount    DECIMAL(8, 2) NOT NULL DEFAULT 0 COMMENT 'Paid amount'
);

CREATE TABLE hqz_rental_service (
    service_id    INT NOT NULL COMMENT 'ID of the service' PRIMARY KEY AUTO_INCREMENT,
    p_office      INT NOT NULL COMMENT 'ID for pickup office',
    d_office      INT NOT NULL COMMENT 'ID for dropoff office',
    p_date        DATETIME NOT NULL COMMENT 'Pick up date',
    d_date        DATETIME NOT NULL COMMENT 'Drop off date',
    s_odometer    DECIMAL(9, 2) NOT NULL COMMENT 'Start odometer',
    e_odometer    DECIMAL(9, 2) NOT NULL COMMENT 'End odometer',
    daily_o_limit DECIMAL(6, 2) COMMENT 'Daily odometer limitaion',
    customer_id   INT COMMENT 'ID of the customer',
    vin           VARCHAR(17) COMMENT 'VIN of the rent car',
    coupon_id     BIGINT COMMENT 'ID for the coupon',
    service_status VARCHAR(1) NOT NULL DEFAULT 'N' COMMENT 'Status of the rantal service'
);

ALTER TABLE hqz_rental_service
    ADD CONSTRAINT p_office_fk FOREIGN KEY ( p_office )
        REFERENCES hqz_office ( office_id );

ALTER TABLE hqz_rental_service
    ADD CONSTRAINT d_office_fk FOREIGN KEY ( d_office )
        REFERENCES hqz_office ( office_id );


CREATE TABLE hqz_vehicle (
    vin              VARCHAR(17) NOT NULL COMMENT 'Vehicle identification number',
    make             VARCHAR(30) NOT NULL COMMENT 'Make of the car',
    model            VARCHAR(20) NOT NULL COMMENT 'Car model',
    car_year         SMALLINT NOT NULL COMMENT 'Year of the car',
    license_plate_no VARCHAR(10) NOT NULL COMMENT 'License Plate number',
    class_id         INT COMMENT 'ID of the car class',
    office_id        INT COMMENT 'ID of the office',
    odometer    DECIMAL(9, 2) NOT NULL COMMENT 'Odometer',
    vehicle_status   VARCHAR(1) NOT NULL COMMENT 'Staus of the vehicle, R for rent and A for available',
    img_url    VARCHAR(2000) COMMENT 'CDN url for vehicle images.'
);

ALTER TABLE hqz_vehicle ADD CONSTRAINT hqz_vehicle_pk PRIMARY KEY ( vin );

ALTER TABLE hqz_corp_cust
    ADD CONSTRAINT corp_cust_corp_info_fk FOREIGN KEY ( corp_reg_no )
        REFERENCES hqz_corp_info ( corp_reg_no );

ALTER TABLE hqz_corp_cust
    ADD CONSTRAINT corp_cust_customer_fk FOREIGN KEY ( customer_id )
        REFERENCES hqz_customer ( customer_id )
        ON DELETE CASCADE;

ALTER TABLE hqz_indiv_cust
    ADD CONSTRAINT indiv_cust_customer_fk FOREIGN KEY ( customer_id )
        REFERENCES hqz_customer ( customer_id )
        ON DELETE CASCADE;

ALTER TABLE hqz_invoice
    ADD CONSTRAINT invoice_rental_service_fk FOREIGN KEY ( service_id )
        REFERENCES hqz_rental_service ( service_id );

ALTER TABLE hqz_payment
    ADD CONSTRAINT payment_invoice_fk FOREIGN KEY ( service_id )
        REFERENCES hqz_invoice ( service_id );

ALTER TABLE hqz_rental_service
    ADD CONSTRAINT rental_service_coupon_fk FOREIGN KEY ( coupon_id )
        REFERENCES hqz_coupon ( coupon_id );

ALTER TABLE hqz_rental_service
    ADD CONSTRAINT rental_service_customer_fk FOREIGN KEY ( customer_id )
        REFERENCES hqz_customer ( customer_id )
        ON DELETE CASCADE;

ALTER TABLE hqz_rental_service
    ADD CONSTRAINT rental_service_vehicle_fk FOREIGN KEY ( vin )
        REFERENCES hqz_vehicle ( vin );

ALTER TABLE hqz_vehicle
    ADD CONSTRAINT vehicle_class_fk FOREIGN KEY ( class_id )
        REFERENCES hqz_class ( class_id );

ALTER TABLE hqz_vehicle
    ADD CONSTRAINT vehicle_office_fk FOREIGN KEY ( office_id )
        REFERENCES hqz_office ( office_id );

-- Triggers for CUST_TYPE
CREATE TRIGGER check_hqz_corp_cust_insert BEFORE
    INSERT ON hqz_corp_cust
    FOR EACH ROW
BEGIN
	DECLARE d VARCHAR(1);
	DECLARE EXIT HANDLER FOR SQLEXCEPTION
    BEGIN
		RESIGNAL;
    END;
	DECLARE EXIT HANDLER FOR NOT found
    BEGIN
    END;
    SELECT
        a.cust_type
    INTO d
    FROM
        hqz_customer a
    WHERE
        a.customer_id = new.customer_id;

    IF ( d IS NULL OR d <> 'C' ) THEN
        signal sqlstate '42000' set message_text = 'CORP_CUST_CUSTOMER in HQZ_CORP_CUST violates constraint on HQZ_CUSTOMER-CUST_TYPE doesn''t have value ''C''';
    END IF;
END;

CREATE TRIGGER check_hqz_indiv_cust_insert BEFORE
    INSERT ON hqz_indiv_cust
    FOR EACH ROW
    
BEGIN
    DECLARE d VARCHAR(1);
	DECLARE EXIT HANDLER FOR SQLEXCEPTION
    BEGIN
		RESIGNAL;
    END;
	DECLARE EXIT HANDLER FOR NOT found
    BEGIN
    END;
    SELECT
        a.cust_type
    INTO d
    FROM
        hqz_customer a
    WHERE
        a.customer_id = new.customer_id;

    IF ( d IS NULL OR d <> 'I' ) THEN
            signal sqlstate '42000' set message_text = 'CORP_CUST_CUSTOMER in HQZ_CORP_CUST violates constraint on HQZ_CUSTOMER-CUST_TYPE doesn''t have value ''C''';
    END IF;
END;

CREATE TRIGGER check_hqz_corp_cust_update BEFORE
    UPDATE ON hqz_corp_cust
    FOR EACH ROW
BEGIN
	DECLARE d VARCHAR(1);
	DECLARE EXIT HANDLER FOR SQLEXCEPTION
    BEGIN
		RESIGNAL;
    END;
	DECLARE EXIT HANDLER FOR NOT found
    BEGIN
    END;
    SELECT
        a.cust_type
    INTO d
    FROM
        hqz_customer a
    WHERE
        a.customer_id = new.customer_id;

    IF ( d IS NULL OR d <> 'C' ) THEN
        signal sqlstate '42000' set message_text = 'CORP_CUST_CUSTOMER in HQZ_CORP_CUST violates constraint on HQZ_CUSTOMER-CUST_TYPE doesn''t have value ''C''';
    END IF;
END;

CREATE TRIGGER check_hqz_indiv_cust_update BEFORE
    UPDATE ON hqz_indiv_cust
    FOR EACH ROW
    
BEGIN
    DECLARE d VARCHAR(1);
	DECLARE EXIT HANDLER FOR SQLEXCEPTION
    BEGIN
		RESIGNAL;
    END;
	DECLARE EXIT HANDLER FOR NOT found
    BEGIN
    END;
    SELECT
        a.cust_type
    INTO d
    FROM
        hqz_customer a
    WHERE
        a.customer_id = new.customer_id;

    IF ( d IS NULL OR d <> 'I' ) THEN
            signal sqlstate '42000' set message_text = 'CORP_CUST_CUSTOMER in HQZ_CORP_CUST violates constraint on HQZ_CUSTOMER-CUST_TYPE doesn''t have value ''C''';
    END IF;
END;

CREATE TRIGGER invoice_generation_trigger AFTER
    INSERT ON hqz_rental_service
    FOR EACH ROW
BEGIN
	DECLARE c_id INT;
	DECLARE r_fee DECIMAL(6, 2);
    DECLARE o_fee DECIMAL(4, 2);
	DECLARE disc DECIMAL(3, 2);
	DECLARE c_type VARCHAR(1);
	DECLARE c_no VARCHAR(10);
    IF new.s_odometer <= new.e_odometer THEN
        
        SELECT class_id INTO c_id FROM hqz_vehicle WHERE vin = new.vin;
        
        SELECT rental_rate, over_fee INTO r_fee, o_fee FROM hqz_class WHERE class_id = c_id;
        
        SET disc = 1.00;
        IF new.coupon_id IS NOT NULL THEN
            SELECT discount INTO disc FROM hqz_coupon WHERE coupon_id = new.coupon_id;
        ELSE
            SELECT cust_type INTO c_type FROM hqz_customer WHERE customer_id = new.customer_id;
            IF c_type = 'C' THEN 
                SELECT corp_reg_no INTO c_no FROM hqz_corp_cust WHERE customer_id = new.customer_id;
                SELECT discount INTO disc FROM hqz_corp_info WHERE corp_reg_no = c_no;
            END IF;
        END IF;
        IF new.daily_o_limit IS NULL OR new.e_odometer - new.s_odometer <= (DATEDIFF(new.d_date, new.p_date) + 1) * new.daily_o_limit THEN
            INSERT INTO wow_db.hqz_invoice (i_date, i_amount, unpaid_amount, service_id) VALUES 
            (SYSDATE(), 
            ROUND((DATEDIFF(new.d_date, new.p_date) + 1) * r_fee * disc, 2),
            ROUND((DATEDIFF(new.d_date, new.p_date) + 1) * r_fee * disc, 2), new.service_id);
        ELSE
            INSERT INTO wow_db.hqz_invoice (i_date, i_amount, unpaid_amount, service_id) VALUES 
            (SYSDATE(),
            ROUND(((DATEDIFF(new.d_date, new.p_date) + 1) * r_fee + ((new.e_odometer - new.s_odometer) - (DATEDIFF(new.d_date, new.p_date) + 1) * new.daily_o_limit) * o_fee) * disc, 2), 
            ROUND(((DATEDIFF(new.d_date, new.p_date) + 1) * r_fee + ((new.e_odometer - new.s_odometer) - (DATEDIFF(new.d_date, new.p_date) + 1) * new.daily_o_limit) * o_fee) * disc, 2),
            new.service_id);
        END IF;
    END IF;
END;

-- Trigger to insert into HQZ_INVOICE
CREATE TRIGGER invoice_update_trigger AFTER
    UPDATE ON hqz_rental_service
    FOR EACH ROW
BEGIN
	DECLARE c_id INT;
	DECLARE r_fee DECIMAL(6, 2);
    DECLARE o_fee DECIMAL(4, 2);
	DECLARE disc DECIMAL(3, 2);
	DECLARE c_type VARCHAR(1);
	DECLARE c_no VARCHAR(10);
    IF old.e_odometer <> new.e_odometer THEN
        
        SELECT class_id INTO c_id FROM hqz_vehicle WHERE vin = new.vin;
        
        SELECT rental_rate, over_fee INTO r_fee, o_fee FROM hqz_class WHERE class_id = c_id;
        
        SET disc = 1.00;
        IF new.coupon_id IS NOT NULL THEN
            SELECT discount INTO disc FROM hqz_coupon WHERE coupon_id = new.coupon_id;
        ELSE
            SELECT cust_type INTO c_type FROM hqz_customer WHERE customer_id = new.customer_id;
            IF c_type = 'C' THEN 
                SELECT corp_reg_no INTO c_no FROM hqz_corp_cust WHERE customer_id = new.customer_id;
                SELECT discount INTO disc FROM hqz_corp_info WHERE corp_reg_no = c_no;
            END IF;
        END IF;
        IF new.daily_o_limit IS NULL OR new.e_odometer - new.s_odometer <= (DATEDIFF(new.d_date, new.p_date) + 1) * new.daily_o_limit THEN
            UPDATE hqz_invoice 
			SET 
			I_DATE = SYSDATE(),
			I_AMOUNT = ROUND((DATEDIFF(new.d_date, new.p_date) + 1) * r_fee * disc, 2),
            unpaid_amount = ROUND((DATEDIFF(new.d_date, new.p_date) + 1) * r_fee * disc, 2)
            WHERE service_id = new.service_id;
        ELSE
			UPDATE hqz_invoice 
			SET 
			I_DATE = SYSDATE(),
			I_AMOUNT = ROUND(((DATEDIFF(new.d_date, new.p_date) + 1) * r_fee + ((new.e_odometer - new.s_odometer) - (DATEDIFF(new.d_date, new.p_date) + 1) * new.daily_o_limit) * o_fee) * disc, 2),
			unpaid_amount = ROUND(((DATEDIFF(new.d_date, new.p_date) + 1) * r_fee + ((new.e_odometer - new.s_odometer) - (DATEDIFF(new.d_date, new.p_date) + 1) * new.daily_o_limit) * o_fee) * disc, 2)
            WHERE service_id = new.service_id;
        END IF;
    END IF;
END;

-- Add check for wow_db.hqz_vehicle vehicle_status, A for availbale and R for rent
ALTER TABLE hqz_vehicle ADD CONSTRAINT status_check CHECK (vehicle_status='A' OR vehicle_status='R');

-- Add check for hqz_rental_service, d_date >= p_date
ALTER TABLE hqz_rental_service ADD CONSTRAINT  date_check CHECK ( d_date >= p_date);

-- Add check for hqz_rental_service, e_odometer >= s_odometer
ALTER TABLE hqz_rental_service ADD CONSTRAINT odometer_check CHECK ( e_odometer >= s_odometer );

-- Add check for hqz_coupon discount rate < 1.00
ALTER TABLE hqz_coupon ADD CONSTRAINT coupon_discount_check CHECK ( discount <= 1.00);

-- Add check for hqz_corp_info discount rate < 1.00
ALTER TABLE hqz_corp_info ADD CONSTRAINT corp_discount_check CHECK ( discount <= 1.00);

-- Add check for hqz_coupon check dates valid_from_date <= valid_to_date
ALTER TABLE hqz_coupon ADD CONSTRAINT coupon_date_check CHECK (valid_from_date <= valid_to_date);

-- Add check for service_status in hqz_rental_service Y for complete, N for ongoing
ALTER TABLE hqz_rental_service ADD CONSTRAINT service_status_check CHECK (service_status in ('O','A','P','F'));

--INDEX SECTION
-- index on email (used for user login)
ALTER TABLE `hqz_customer` ADD INDEX `email_idx` (c_email);

-- index on employee_id, corp_reg_no (used for check employee exists or not)
CREATE INDEX employee_idx ON hqz_corp_cust(employee_id, corp_reg_no);