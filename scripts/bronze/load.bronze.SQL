/*
Purpose:
    Create and execute a stored procedure to load raw e-commerce
    order and return data from a CSV file into the Bronze layer.

Process:
    1. Remove existing records from bronze.returnstable.
    2. Import the CSV file into the Bronze table.
    3. Skip the CSV header and apply the specified CSV loading options.

Loading strategy:
    Full refresh - existing data is replaced with data from the source file.
*/

CREATE OR ALTER PROCEDURE bronze.load_layer
AS
BEGIN
    ====Clear existing records before performing a full data reload.
    TRUNCATE TABLE bronze.returnstable;

    BULK INSERT bronze.returnstable
    FROM 'C:\Users\admin\Downloads\archive\india_ecommerce_orders_returns.csv'
    WITH
    (
        FORMAT          = 'CSV',
        FIRSTROW        = 2,       -- Skip the CSV header row.
        FIELDTERMINATOR = ',',     -- Comma-separated columns.
        ROWTERMINATOR   = '0x0A',  -- Line Feed (LF) row terminator.
        TABLOCK                  -- Allows bulk-load table locking.
    );
END;
GO

-- Execute the Bronze layer loading procedure.
EXEC bronze.load_layer;
GO
