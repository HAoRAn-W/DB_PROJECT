-- SQLINES DEMO *** le SQL Developer Data Modeler 21.4.1.349.1605
-- SQLINES DEMO *** -03-30 21:51:59 EDT
-- SQLINES DEMO *** le Database 21c
-- SQLINES DEMO *** le Database 21c



-- SQLINES DEMO *** no DDL - MDSYS.SDO_GEOMETRY

-- SQLINES DEMO *** no DDL - XMLTYPE

-- SQLINES LICENSE FOR EVALUATION USE ONLY
CREATE TABLE hqz_class (
    class_id    INT NOT NULL COMMENT 'The id for the class',
    class_name  VARCHAR(30) NOT NULL COMMENT 'Name of the class, small, mid-size, SUV, etc.',
    rental_rate DECIMAL(6, 2) NOT NULL COMMENT 'Rental rate per day.',
    over_fee    DECIMAL(4, 2) NOT NULL COMMENT 'Fees for over mileage if rental service exceeds daily odometer limit.'
);

/* Moved to CREATE TABLE
COMMENT ON COLUMN hqz_class.class_id IS
    'The id for the class'; */

/* Moved to CREATE TABLE
COMMENT ON COLUMN hqz_class.class_name IS
    'Name of the class, small, mid-size, SUV, etc.'; */

/* Moved to CREATE TABLE
COMMENT ON COLUMN hqz_class.rental_rate IS
    'Rental rate per day.'; */

/* Moved to CREATE TABLE
COMMENT ON COLUMN hqz_class.over_fee IS
    'Fees for over mileage if rental service exceeds daily odometer limit.'; */

ALTER TABLE hqz_class ADD CONSTRAINT hqz_class_pk PRIMARY KEY ( class_id );

-- SQLINES LICENSE FOR EVALUATION USE ONLY
CREATE TABLE hqz_corp_cust (
    customer_id INT NOT NULL COMMENT 'ID for the customer',
    employee_id INT NOT NULL COMMENT 'Employee ID of the customer who rents the car on a 
corporate account',
    corp_reg_no VARCHAR(10)
);

/* Moved to CREATE TABLE
COMMENT ON COLUMN hqz_corp_cust.customer_id IS
    'ID for the customer'; */

/* Moved to CREATE TABLE
COMMENT ON COLUMN hqz_corp_cust.employee_id IS
    'Employee ID of the customer who rents the car on a 
corporate account'; */

ALTER TABLE hqz_corp_cust ADD CONSTRAINT hqz_corp_cust_pk PRIMARY KEY ( customer_id );

-- SQLINES LICENSE FOR EVALUATION USE ONLY
CREATE TABLE hqz_corp_info (
    corp_reg_no VARCHAR(10) NOT NULL COMMENT 'Registration number of the corporation',
    corp_name   VARCHAR(50) NOT NULL COMMENT 'Name of the corporation',
    discount    DECIMAL(3, 2) NOT NULL COMMENT 'Discount rate of the company'
);

/* Moved to CREATE TABLE
COMMENT ON COLUMN hqz_corp_info.corp_reg_no IS
    'Registration number of the corporation'; */

/* Moved to CREATE TABLE
COMMENT ON COLUMN hqz_corp_info.corp_name IS
    'Name of the corporation'; */

/* Moved to CREATE TABLE
COMMENT ON COLUMN hqz_corp_info.discount IS
    'Discount rate of the company'; */

ALTER TABLE hqz_corp_info ADD CONSTRAINT hqz_corp_info_pk PRIMARY KEY ( corp_reg_no );

-- SQLINES LICENSE FOR EVALUATION USE ONLY
CREATE TABLE hqz_coupon (
    coupon_id       BIGINT NOT NULL,
    discount        DECIMAL(3, 2) NOT NULL COMMENT 'Percentage of discount offered',
    valic_from_date DATETIME NOT NULL COMMENT 'Valid from date',
    valid_to_date   DATETIME NOT NULL COMMENT 'Valide to date'
);

/* Moved to CREATE TABLE
COMMENT ON COLUMN hqz_coupon.discount IS
    'Percentage of discount offered'; */

/* Moved to CREATE TABLE
COMMENT ON COLUMN hqz_coupon.valic_from_date IS
    'Valid from date'; */

/* Moved to CREATE TABLE
COMMENT ON COLUMN hqz_coupon.valid_to_date IS
    'Valide to date'; */

ALTER TABLE hqz_coupon ADD CONSTRAINT hqz_coupon_pk PRIMARY KEY ( coupon_id );

-- SQLINES LICENSE FOR EVALUATION USE ONLY
CREATE TABLE hqz_customer (
    customer_id INT NOT NULL COMMENT 'ID for the customer',
    c_street    VARCHAR(30) NOT NULL COMMENT 'Street adress of customer address',
    c_city      VARCHAR(30) NOT NULL COMMENT 'City of customer address',
    c_state     VARCHAR(20) NOT NULL COMMENT 'State of customer address',
    c_zipcode   VARCHAR(10) NOT NULL COMMENT 'Postal code of customer address',
    c_email     VARCHAR(50) NOT NULL COMMENT 'Customer email address',
    c_phone     VARCHAR(15) NOT NULL COMMENT 'Customer phone number',
    cust_type   VARCHAR(1) NOT NULL COMMENT 'Type of the customer'
);

ALTER TABLE hqz_customer
    ADD CONSTRAINT ch_inh_hqz_customer CHECK ( cust_type IN ( 'C', 'I' ) );

/* Moved to CREATE TABLE
COMMENT ON COLUMN hqz_customer.customer_id IS
    'ID for the customer'; */

/* Moved to CREATE TABLE
COMMENT ON COLUMN hqz_customer.c_street IS
    'Street adress of customer address'; */

/* Moved to CREATE TABLE
COMMENT ON COLUMN hqz_customer.c_city IS
    'City of customer address'; */

/* Moved to CREATE TABLE
COMMENT ON COLUMN hqz_customer.c_state IS
    'State of customer address'; */

/* Moved to CREATE TABLE
COMMENT ON COLUMN hqz_customer.c_zipcode IS
    'Postal code of customer address'; */

/* Moved to CREATE TABLE
COMMENT ON COLUMN hqz_customer.c_email IS
    'Customer email address'; */

/* Moved to CREATE TABLE
COMMENT ON COLUMN hqz_customer.c_phone IS
    'Customer phone number'; */

/* Moved to CREATE TABLE
COMMENT ON COLUMN hqz_customer.cust_type IS
    'Type of the customer'; */

ALTER TABLE hqz_customer ADD CONSTRAINT hqz_customer_pk PRIMARY KEY ( customer_id );

-- SQLINES LICENSE FOR EVALUATION USE ONLY
CREATE TABLE hqz_indiv_cust (
    customer_id      INT NOT NULL COMMENT 'ID for the customer',
    fname            VARCHAR(20) NOT NULL COMMENT 'First name',
    lname            VARCHAR(20) NOT NULL COMMENT 'Last name',
    driver_lic_no    VARCHAR(15) NOT NULL COMMENT 'Driver license number',
    ins_company_name VARCHAR(50) NOT NULL COMMENT 'Insurance Company Name',
    ins_policy_no    VARCHAR(30) NOT NULL COMMENT 'dInsurance Policy Number'
);

/* Moved to CREATE TABLE
COMMENT ON COLUMN hqz_indiv_cust.customer_id IS
    'ID for the customer'; */

/* Moved to CREATE TABLE
COMMENT ON COLUMN hqz_indiv_cust.fname IS
    'First name'; */

/* Moved to CREATE TABLE
COMMENT ON COLUMN hqz_indiv_cust.lname IS
    'Last name'; */

/* Moved to CREATE TABLE
COMMENT ON COLUMN hqz_indiv_cust.driver_lic_no IS
    'Driver license number'; */

/* Moved to CREATE TABLE
COMMENT ON COLUMN hqz_indiv_cust.ins_company_name IS
    'Insurance Company Name'; */

/* Moved to CREATE TABLE
COMMENT ON COLUMN hqz_indiv_cust.ins_policy_no IS
    'dInsurance Policy Number'; */

ALTER TABLE hqz_indiv_cust ADD CONSTRAINT hqz_indiv_cust_pk PRIMARY KEY ( customer_id );

-- SQLINES LICENSE FOR EVALUATION USE ONLY
CREATE TABLE hqz_invoice (
    invoice_id BIGINT NOT NULL COMMENT 'ID for the invoice',
    i_date     DATETIME NOT NULL COMMENT 'Invoice date',
    i_amount   DECIMAL(7, 2) NOT NULL COMMENT 'Invoice amount in USD'
);

/* Moved to CREATE TABLE
COMMENT ON COLUMN hqz_invoice.invoice_id IS
    'ID for the invoice'; */

/* Moved to CREATE TABLE
COMMENT ON COLUMN hqz_invoice.i_date IS
    'Invoice date'; */

/* Moved to CREATE TABLE
COMMENT ON COLUMN hqz_invoice.i_amount IS
    'Invoice amount in USD'; */

ALTER TABLE hqz_invoice ADD CONSTRAINT hqz_invoice_pk PRIMARY KEY ( invoice_id );

-- SQLINES LICENSE FOR EVALUATION USE ONLY
CREATE TABLE hqz_office (
    office_id    INT NOT NULL COMMENT 'ID for office',
    street       VARCHAR(30) NOT NULL COMMENT 'Street for office address',
    city         VARCHAR(30) NOT NULL COMMENT 'City of office address',
    state        VARCHAR(30) NOT NULL COMMENT 'State of office address',
    zipcode      VARCHAR(10) NOT NULL COMMENT 'Postal code of office address',
    office_phone VARCHAR(15) NOT NULL COMMENT 'Phone number of the office'
);

/* Moved to CREATE TABLE
COMMENT ON COLUMN hqz_office.office_id IS
    'ID for office'; */

/* Moved to CREATE TABLE
COMMENT ON COLUMN hqz_office.street IS
    'Street for office address'; */

/* Moved to CREATE TABLE
COMMENT ON COLUMN hqz_office.city IS
    'City of office address'; */

/* Moved to CREATE TABLE
COMMENT ON COLUMN hqz_office.state IS
    'State of office address'; */

/* Moved to CREATE TABLE
COMMENT ON COLUMN hqz_office.zipcode IS
    'Postal code of office address'; */

/* Moved to CREATE TABLE
COMMENT ON COLUMN hqz_office.office_phone IS
    'Phone number of the office'; */

ALTER TABLE hqz_office ADD CONSTRAINT hqz_office_pk PRIMARY KEY ( office_id );

-- SQLINES LICENSE FOR EVALUATION USE ONLY
CREATE TABLE hqz_payment (
    payment_id     BIGINT NOT NULL COMMENT 'ID of the payment',
    pay_date       DATETIME NOT NULL COMMENT 'Date of this payment',
    payment_method VARCHAR(10) NOT NULL COMMENT 'Payment method (Credit, decit, etc.)',
    card_no        VARCHAR(20) NOT NULL COMMENT 'Payment card number',
    invoice_id     BIGINT
);

/* Moved to CREATE TABLE
COMMENT ON COLUMN hqz_payment.payment_id IS
    'ID of the payment'; */

/* Moved to CREATE TABLE
COMMENT ON COLUMN hqz_payment.pay_date IS
    'Date of this payment'; */

/* Moved to CREATE TABLE
COMMENT ON COLUMN hqz_payment.payment_method IS
    'Payment method (Credit, decit, etc.)'; */

/* Moved to CREATE TABLE
COMMENT ON COLUMN hqz_payment.card_no IS
    'Payment card number'; */

ALTER TABLE hqz_payment ADD CONSTRAINT hqz_payment_pk PRIMARY KEY ( payment_id );

-- SQLINES LICENSE FOR EVALUATION USE ONLY
CREATE TABLE hqz_rental_service (
    service_id    INT NOT NULL COMMENT 'ID of the service',
    p_street      VARCHAR(30) NOT NULL COMMENT 'Pick up street',
    p_city        VARCHAR(20) NOT NULL,
    p_state       VARCHAR(30) NOT NULL,
    p_zipcode     VARCHAR(10) NOT NULL,
    d_street      VARCHAR(30) NOT NULL COMMENT 'Drop off street',
    d_city        VARCHAR(30) NOT NULL,
    d_state       VARCHAR(20) NOT NULL,
    d_zipcode     VARCHAR(10) NOT NULL,
    p_date        DATETIME NOT NULL COMMENT 'Pick up date',
    d_date        DATETIME NOT NULL COMMENT 'Drop off date',
    s_odometer    DECIMAL(6, 2) NOT NULL COMMENT 'Start odometer',
    e_odometer    DECIMAL(6, 2) NOT NULL COMMENT 'End odometer',
    daily_o_limit DECIMAL(5, 2) COMMENT 'Daily odometer limitaion',
    customer_id   INT,
    vin           VARCHAR(17),
    coupon_id     BIGINT,
    invoice_id    BIGINT NOT NULL
);

/* Moved to CREATE TABLE
COMMENT ON COLUMN hqz_rental_service.service_id IS
    'ID of the service'; */

/* Moved to CREATE TABLE
COMMENT ON COLUMN hqz_rental_service.p_street IS
    'Pick up street'; */

/* Moved to CREATE TABLE
COMMENT ON COLUMN hqz_rental_service.d_street IS
    'Drop off street'; */

/* Moved to CREATE TABLE
COMMENT ON COLUMN hqz_rental_service.p_date IS
    'Pick up date'; */

/* Moved to CREATE TABLE
COMMENT ON COLUMN hqz_rental_service.d_date IS
    'Drop off date'; */

/* Moved to CREATE TABLE
COMMENT ON COLUMN hqz_rental_service.s_odometer IS
    'Start odometer'; */

/* Moved to CREATE TABLE
COMMENT ON COLUMN hqz_rental_service.e_odometer IS
    'End odometer'; */

/* Moved to CREATE TABLE
COMMENT ON COLUMN hqz_rental_service.daily_o_limit IS
    'Daily odometer limitaion'; */

-- SQLINES LICENSE FOR EVALUATION USE ONLY
CREATE UNIQUE INDEX hqz_rental_service__idx ON
    hqz_rental_service (
        invoice_id
    ASC );

ALTER TABLE hqz_rental_service ADD CONSTRAINT hqz_rental_service_pk PRIMARY KEY ( service_id );

-- SQLINES LICENSE FOR EVALUATION USE ONLY
CREATE TABLE hqz_vehicle (
    vin              VARCHAR(17) NOT NULL COMMENT 'Vehicle identification number',
    make             VARCHAR(30) NOT NULL COMMENT 'Make of the car.',
    model            VARCHAR(20) NOT NULL COMMENT 'Car model',
    year             SMALLINT NOT NULL COMMENT 'Year of the car',
    license_plate_no VARCHAR(10) NOT NULL COMMENT 'License Plate number',
    class_id         INT,
    office_id        INT,
    vehicle_status   VARCHAR(1) NOT NULL COMMENT 'Staus of the vehicle, R for rent and A for available'
);

/* Moved to CREATE TABLE
COMMENT ON COLUMN hqz_vehicle.vin IS
    'Vehicle identification number'; */

/* Moved to CREATE TABLE
COMMENT ON COLUMN hqz_vehicle.make IS
    'Make of the car.'; */

/* Moved to CREATE TABLE
COMMENT ON COLUMN hqz_vehicle.model IS
    'Car model'; */

/* Moved to CREATE TABLE
COMMENT ON COLUMN hqz_vehicle.year IS
    'Year of the car'; */

/* Moved to CREATE TABLE
COMMENT ON COLUMN hqz_vehicle.license_plate_no IS
    'License Plate number'; */

/* Moved to CREATE TABLE
COMMENT ON COLUMN hqz_vehicle.vehicle_status IS
    'Staus of the vehicle, R for rent and A for available'; */

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
    ADD CONSTRAINT rental_service_vehicle_fk FOREIGN KEY ( vin )
        REFERENCES hqz_vehicle ( vin );

ALTER TABLE hqz_vehicle
    ADD CONSTRAINT vehicle_class_fk FOREIGN KEY ( class_id )
        REFERENCES hqz_class ( class_id );

ALTER TABLE hqz_vehicle
    ADD CONSTRAINT vehicle_office_fk FOREIGN KEY ( office_id )
        REFERENCES hqz_office ( office_id );

CREATE OR REPLACE TRIGGER arc_fkarc_3_hqz_corp_cust BEFORE
    INSERT OR UPDATE OF customer_id ON hqz_corp_cust
    FOR EACH ROW
    DECLARE d VARCHAR(1);
BEGIN
    -- SQLINES LICENSE FOR EVALUATION USE ONLY
    SELECT
        a.cust_type
    INTO d
    FROM
        hqz_customer a
    WHERE
        a.customer_id = :new.customer_id;

    IF ( d IS NULL OR d <> 'C' ) THEN
        raise_application_error(
                               -20223,
                               'FK CORP_CUST_CUSTOMER_FK in Table HQZ_CORP_CUST violates Arc constraint on Table HQZ_CUSTOMER - discriminator column CUST_TYPE doesn''t have value ''C'''
        );
    END IF;

    DECLARE EXIT HANDLER FOR not found BEGIN
        NULL;
    END;
    DECLARE EXIT HANDLER FOR SQLEXCEPTION BEGIN
        RESIGNAL;
    END;
END;
/

CREATE OR REPLACE TRIGGER arc_fkarc_3_hqz_indiv_cust BEFORE
    INSERT OR UPDATE OF customer_id ON hqz_indiv_cust
    FOR EACH ROW
    DECLARE d VARCHAR(1);
BEGIN
    -- SQLINES LICENSE FOR EVALUATION USE ONLY
    SELECT
        a.cust_type
    INTO d
    FROM
        hqz_customer a
    WHERE
        a.customer_id = :new.customer_id;

    IF ( d IS NULL OR d <> 'I' ) THEN
        raise_application_error(
                               -20223,
                               'FK INDIV_CUST_CUSTOMER_FK in Table HQZ_INDIV_CUST violates Arc constraint on Table HQZ_CUSTOMER - discriminator column CUST_TYPE doesn''t have value ''I'''
        );
    END IF;

    DECLARE EXIT HANDLER FOR not found BEGIN
        NULL;
    END;
    DECLARE EXIT HANDLER FOR SQLEXCEPTION BEGIN
        RESIGNAL;
    END;
END;
/



-- SQLINES DEMO *** per Data Modeler Summary Report: 
-- 
-- SQLINES DEMO ***                        11
-- SQLINES DEMO ***                         1
-- SQLINES DEMO ***                        22
-- SQLINES DEMO ***                         0
-- SQLINES DEMO ***                         0
-- SQLINES DEMO ***                         0
-- SQLINES DEMO *** DY                      0
-- SQLINES DEMO ***                         0
-- SQLINES DEMO ***                         0
-- SQLINES DEMO ***                         2
-- SQLINES DEMO ***                         0
-- SQLINES DEMO ***  TYPE                   0
-- SQLINES DEMO ***  TYPE                   0
-- SQLINES DEMO ***  TYPE BODY              0
-- SQLINES DEMO ***                         0
-- SQLINES DEMO ***                         0
-- SQLINES DEMO ***                         0
-- SQLINES DEMO ***                         0
-- SQLINES DEMO ***                         0
-- SQLINES DEMO ***                         0
-- SQLINES DEMO ***                         0
-- SQLINES DEMO *** EGMENT                  0
-- SQLINES DEMO ***                         0
-- SQLINES DEMO *** ED VIEW                 0
-- SQLINES DEMO *** ED VIEW LOG             0
-- SQLINES DEMO ***                         0
-- SQLINES DEMO ***                         0
-- SQLINES DEMO ***                         0
-- 
-- SQLINES DEMO ***                         0
-- SQLINES DEMO ***                         0
-- 
-- SQLINES DEMO ***                         0
-- 
-- SQLINES DEMO ***                         0
-- SQLINES DEMO *** A                       0
-- SQLINES DEMO *** T                       0
-- 
-- SQLINES DEMO ***                         0
-- SQLINES DEMO ***                         0
