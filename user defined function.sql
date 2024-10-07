-- Create a User-Defined Function (UDF)
CREATE FUNCTION calculate_discount(price DECIMAL(10,2), discount_rate DECIMAL(5,2))
RETURNS DECIMAL(10,2)
BEGIN
    RETURN price - (price * discount_rate / 100);
END;

-- Use the UDF in a SELECT statement
SELECT calculate_discount(100, 10) AS discounted_price;
