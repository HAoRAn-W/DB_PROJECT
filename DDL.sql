CREATE TABLE hqz_class (
    class_id    INT NOT NULL COMMENT 'The id for the class',
    class_name  VARCHAR(30) NOT NULL COMMENT 'Name of the class, small, mid-size, SUV, etc.',
    rental_rate DECIMAL(6, 2) NOT NULL COMMENT 'Rental rate per day.',
    over_fee    DECIMAL(4, 2) NOT NULL COMMENT 'Fees for over mileage if rental service exceeds daily odometer limit.'
);

ALTER TABLE hqz_class ADD CONSTRAINT hqz_class_pk PRIMARY KEY ( class_id );

CREATE TABLE hqz_corp_cust (
    customer_id INT NOT NULL COMMENT 'ID for the customer',
    employee_id INT NOT NULL COMMENT 'Employee ID of the customer who rents the car on a corporate account',
    corp_reg_no VARCHAR(10) COMMENT 'The registration number of the customer''s company'
);

ALTER TABLE hqz_corp_cust ADD CONSTRAINT hqz_corp_cust_pk PRIMARY KEY ( customer_id );

CREATE TABLE hqz_corp_info (
    corp_reg_no VARCHAR(10) NOT NULL COMMENT 'Registration number of the corporation',
    corp_name   VARCHAR(50) NOT NULL COMMENT 'Name of the corporation',
    discount    DECIMAL(3, 2) NOT NULL COMMENT 'Discount rate of the company, e.g., 0.85, 0.50'
);

ALTER TABLE hqz_corp_info ADD CONSTRAINT hqz_corp_info_pk PRIMARY KEY ( corp_reg_no );

CREATE TABLE hqz_coupon (
    coupon_id       BIGINT NOT NULL COMMENT 'ID of the coupon',
    discount        DECIMAL(3, 2) NOT NULL COMMENT 'Percentage of discount offered, r.g., 1.00, 0.85.',
    valic_from_date DATETIME NOT NULL COMMENT 'Valid from date',
    valid_to_date   DATETIME NOT NULL COMMENT 'Valide to date'
);

ALTER TABLE hqz_coupon ADD CONSTRAINT hqz_coupon_pk PRIMARY KEY ( coupon_id );

CREATE TABLE hqz_customer (
    customer_id INT NOT NULL COMMENT 'ID for the customer',
    c_street    VARCHAR(30) NOT NULL COMMENT 'Street of customer address',
    c_city      VARCHAR(30) NOT NULL COMMENT 'City of customer address',
    c_state     VARCHAR(20) NOT NULL COMMENT 'State of customer address',
    c_zipcode   VARCHAR(10) NOT NULL COMMENT 'Postal code of customer address',
    c_email     VARCHAR(50) NOT NULL COMMENT 'Customer email address',
    c_phone     VARCHAR(15) NOT NULL COMMENT 'Customer phone number',
    cust_type   VARCHAR(1) NOT NULL COMMENT 'Type of the customer'
);

ALTER TABLE hqz_customer
    ADD CONSTRAINT ch_inh_hqz_customer CHECK ( cust_type IN ( 'C', 'I' ) );

ALTER TABLE hqz_customer ADD CONSTRAINT hqz_customer_pk PRIMARY KEY ( customer_id );

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
    invoice_id BIGINT NOT NULL COMMENT 'ID for the invoice',
    i_date     DATETIME NOT NULL COMMENT 'Invoice date',
    i_amount   DECIMAL(8, 2) NOT NULL COMMENT 'Invoice amount in USD'
);

ALTER TABLE hqz_invoice ADD CONSTRAINT hqz_invoice_pk PRIMARY KEY ( invoice_id );

CREATE TABLE hqz_office (
    office_id    INT NOT NULL COMMENT 'ID for office',
    street       VARCHAR(30) NOT NULL COMMENT 'Street for office address',
    city         VARCHAR(30) NOT NULL COMMENT 'City of office address',
    state        VARCHAR(30) NOT NULL COMMENT 'State of office address',
    zipcode      VARCHAR(10) NOT NULL COMMENT 'Postal code of office address',
    office_phone VARCHAR(15) NOT NULL COMMENT 'Phone number of the office'
);

ALTER TABLE hqz_office ADD CONSTRAINT hqz_office_pk PRIMARY KEY ( office_id );

CREATE TABLE hqz_payment (
    payment_id     BIGINT NOT NULL COMMENT 'ID of the payment',
    pay_date       DATETIME NOT NULL COMMENT 'Date of this payment',
    payment_method VARCHAR(10) NOT NULL COMMENT 'Payment method (Credit, decit, etc.)',
    card_no        VARCHAR(20) NOT NULL COMMENT 'Payment card number',
    invoice_id     BIGINT COMMENT 'ID of the invoice'
);

ALTER TABLE hqz_payment ADD CONSTRAINT hqz_payment_pk PRIMARY KEY ( payment_id );

CREATE TABLE hqz_rental_service (
    service_id    INT NOT NULL COMMENT 'ID of the service',
    p_street      VARCHAR(30) NOT NULL COMMENT 'Pick up street',
    p_city        VARCHAR(20) NOT NULL COMMENT 'Pick up city',
    p_state       VARCHAR(30) NOT NULL COMMENT 'Pick up state',
    p_zipcode     VARCHAR(10) NOT NULL COMMENT 'Pick up zipcode',
    d_street      VARCHAR(30) NOT NULL COMMENT 'Drop off street',
    d_city        VARCHAR(30) NOT NULL COMMENT 'Drop off city',
    d_state       VARCHAR(20) NOT NULL COMMENT 'Drop off state',
    d_zipcode     VARCHAR(10) NOT NULL COMMENT 'Drop off zipcode',
    p_date        DATETIME NOT NULL COMMENT 'Pick up date',
    d_date        DATETIME NOT NULL COMMENT 'Drop off date',
    s_odometer    DECIMAL(9, 2) NOT NULL COMMENT 'Start odometer',
    e_odometer    DECIMAL(9, 2) NOT NULL COMMENT 'End odometer',
    daily_o_limit DECIMAL(6, 2) COMMENT 'Daily odometer limitaion',
    customer_id   INT COMMENT 'ID of the customer',
    vehicle_vin   VARCHAR(17) COMMENT 'VIN of the rent car',
    coupon_id     BIGINT COMMENT 'ID for the coupon',
    invoice_id    BIGINT NOT NULL COMMENT 'ID of the invoice'
);

CREATE UNIQUE INDEX hqz_rental_service__idx ON
    hqz_rental_service (
        invoice_id
    ASC );

ALTER TABLE hqz_rental_service ADD CONSTRAINT hqz_rental_service_pk PRIMARY KEY ( service_id );

CREATE TABLE hqz_vehicle (
    vin              VARCHAR(17) NOT NULL COMMENT 'Vehicle identification number',
    make             VARCHAR(30) NOT NULL COMMENT 'Make of the car',
    model            VARCHAR(20) NOT NULL COMMENT 'Car model',
    car_year             SMALLINT NOT NULL COMMENT 'Year of the car',
    license_plate_no VARCHAR(10) NOT NULL COMMENT 'License Plate number',
    class_id         INT COMMENT 'ID of the car class',
    office_id        INT COMMENT 'ID of the office',
    vehicle_status   VARCHAR(1) NOT NULL COMMENT 'Staus of the vehicle, R for rent and A for available'
);

ALTER TABLE hqz_vehicle ADD CONSTRAINT hqz_vehicle_pk PRIMARY KEY ( vin );

ALTER TABLE hqz_corp_cust
    ADD CONSTRAINT corp_cust_corp_info_fk FOREIGN KEY ( corp_reg_no )
        REFERENCES hqz_corp_info ( corp_reg_no );

ALTER TABLE hqz_corp_cust
    ADD CONSTRAINT corp_cust_customer_fk FOREIGN KEY ( customer_id )
        REFERENCES hqz_customer ( customer_id );

ALTER TABLE hqz_indiv_cust
    ADD CONSTRAINT indiv_cust_customer_fk FOREIGN KEY ( customer_id )
        REFERENCES hqz_customer ( customer_id );

ALTER TABLE hqz_payment
    ADD CONSTRAINT payment_invoice_fk FOREIGN KEY ( invoice_id )
        REFERENCES hqz_invoice ( invoice_id );

ALTER TABLE hqz_rental_service
    ADD CONSTRAINT rental_service_coupon_fk FOREIGN KEY ( coupon_id )
        REFERENCES hqz_coupon ( coupon_id );

ALTER TABLE hqz_rental_service
    ADD CONSTRAINT rental_service_customer_fk FOREIGN KEY ( customer_id )
        REFERENCES hqz_customer ( customer_id );

ALTER TABLE hqz_rental_service
    ADD CONSTRAINT rental_service_invoice_fk FOREIGN KEY ( invoice_id )
        REFERENCES hqz_invoice ( invoice_id );

ALTER TABLE hqz_rental_service
    ADD CONSTRAINT rental_service_vehicle_fk FOREIGN KEY ( vehicle_vin )
        REFERENCES hqz_vehicle ( vin );

ALTER TABLE hqz_vehicle
    ADD CONSTRAINT vehicle_class_fk FOREIGN KEY ( class_id )
        REFERENCES hqz_class ( class_id );

ALTER TABLE hqz_vehicle
    ADD CONSTRAINT vehicle_office_fk FOREIGN KEY ( office_id )
        REFERENCES hqz_office ( office_id );

-- Triggers for CUST_TYPE
CREATE TRIGGER arc_fkarc_2_hqz_corp_cust_insert BEFORE
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

CREATE TRIGGER arc_fkarc_2_hqz_indiv_cust_insert BEFORE
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

CREATE TRIGGER arc_fkarc_2_hqz_corp_cust_update BEFORE
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

CREATE TRIGGER arc_fkarc_2_hqz_indiv_cust_update BEFORE
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

-- Add check for wow_db.hqz_vehicle vehicle_status, A for availbale and R for rent
ALTER TABLE hqz_vehicle ADD CONSTRAINT status_check CHECK (vehicle_status='A' OR vehicle_status='R');

-- Add check for hqz_rental_service, d_date >= p_date
ALTER TABLE hqz_rental_service ADD CONSTRAINT  date_check CHECK ( d_date >= p_date);

-- Add check for hqz_rental_service, e_odometer >= s_odometer
ALTER TABLE hqz_rental_service ADD CONSTRAINT odometer_check CHECK ( e_odometer >= s_odometer );