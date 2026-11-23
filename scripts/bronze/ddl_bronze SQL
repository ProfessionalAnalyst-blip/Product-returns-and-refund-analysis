
/*
Purpose:
    Set up the Bronze layer staging table for the e-commerce
    returns and refund analysis project.

    Creates the bronze schema, drops the existing returnstable
    table if it exists, and recreates it with columns for raw
    order, customer, product, delivery, return, and refund data.

Note:
    All columns use VARCHAR(MAX) to preserve incoming raw values.
    Data type validation and conversion will happen in the Silver layer.
*/

CREATE SCHEMA bronze;
GO

-- Recreate the staging table to ensure a clean structure.
IF OBJECT_ID('bronze.returnstable', 'U') IS NOT NULL
    DROP TABLE bronze.returnstable;
GO

CREATE TABLE bronze.returnstable
(
    order_id               VARCHAR(MAX) NULL,
    order_item_id          VARCHAR(MAX) NULL,
    order_datetime         VARCHAR(MAX) NULL,
    customer_id            VARCHAR(MAX) NULL,
    gender                 VARCHAR(MAX) NULL,
    age                    VARCHAR(MAX) NULL,
    city                   VARCHAR(MAX) NULL,
    state                  VARCHAR(MAX) NULL,
    region                 VARCHAR(MAX) NULL,
    city_tier              VARCHAR(MAX) NULL,
    signup_date            VARCHAR(MAX) NULL,
    is_plus_member         VARCHAR(MAX) NULL,
    sale_event             VARCHAR(MAX) NULL,
    device                 VARCHAR(MAX) NULL,
    payment_method         VARCHAR(MAX) NULL,
    coupon_used            VARCHAR(MAX) NULL,
    coupon_discount        VARCHAR(MAX) NULL,
    shipping_fee           VARCHAR(MAX) NULL,
    cod_fee                VARCHAR(MAX) NULL,
    items_count            VARCHAR(MAX) NULL,
    order_value            VARCHAR(MAX) NULL,
    amount_paid            VARCHAR(MAX) NULL,
    product_id             VARCHAR(MAX) NULL,
    category               VARCHAR(MAX) NULL,
    sub_category           VARCHAR(MAX) NULL,
    brand                  VARCHAR(MAX) NULL,
    is_size_based          VARCHAR(MAX) NULL,
    product_avg_rating     VARCHAR(MAX) NULL,
    product_rating_count   VARCHAR(MAX) NULL,
    seller_id              VARCHAR(MAX) NULL,
    seller_rating          VARCHAR(MAX) NULL,
    fulfilled_by           VARCHAR(MAX) NULL,
    quantity               VARCHAR(MAX) NULL,
    mrp                    VARCHAR(MAX) NULL,
    discount_pct           VARCHAR(MAX) NULL,
    selling_price          VARCHAR(MAX) NULL,
    item_total             VARCHAR(MAX) NULL,
    courier_partner        VARCHAR(MAX) NULL,
    promised_delivery_days VARCHAR(MAX) NULL,
    shipped_datetime       VARCHAR(MAX) NULL,
    delivered_datetime     VARCHAR(MAX) NULL,
    actual_delivery_days   VARCHAR(MAX) NULL,
    is_late_delivery       VARCHAR(MAX) NULL,
    order_status           VARCHAR(MAX) NULL,
    cancel_reason          VARCHAR(MAX) NULL,
    item_status            VARCHAR(MAX) NULL,
    is_returned            VARCHAR(MAX) NULL,
    review_rating          VARCHAR(MAX) NULL,
    return_id              VARCHAR(MAX) NULL,
    return_requested_date  VARCHAR(MAX) NULL,
    days_to_return         VARCHAR(MAX) NULL,
    return_reason          VARCHAR(MAX) NULL,
    return_status          VARCHAR(MAX) NULL,
    refund_mode            VARCHAR(MAX) NULL,
    refund_amount           VARCHAR(MAX) NULL,
    refund_days             VARCHAR(MAX) NULL
);
GO
