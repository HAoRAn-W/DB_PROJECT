package com.hqz.wow.util;

public class WowConstants {

    // individual customer type
    public static final String INDIV_TYPE = "I";

    // corporation customer type
    public static final String CORP_TYPE = "C";

    // vehicle availability: rent
    public static final String VEHICLE_RENT = "R";

    // vehicle availability: available
    public static final String VEHICLE_AVAILABLE = "A";

    public static final String SERVICE_ONGOING = "O"; // service is ongoing

    public static final String SERVICE_PENDING = "A"; // service is waiting for admin to update odometer

    public static final String SERVICE_NEED_PAY = "P"; // service waiting for payment
    public static final String SERVICE_FINISHED = "F"; // service finished

    //individual customer's daily limit for rent a car
    public static final float INDIV_DAILY_O_LIMIT = 500.0F;

    public static final int PAGE_SIZE = 6;

    public static final int REGISTRATION_ERROR = 123000;

    public static final int PAY_BILL_ERROR = 123001;

    public static final int RESET_PASSWORD_ERROR = 123002;

    public static final int PLACE_ORDER_ERROR = 123003;

    public static final int END_SERVICE_ERROR = 123004;

}
