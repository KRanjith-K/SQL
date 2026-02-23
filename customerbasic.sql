CREATE TABLE customer (
  customer_id INT,
  customer_name VARCHAR(50),
  customer_address VARCHAR(100),
  city VARCHAR(50),
  state VARCHAR(50),
  zip_code VARCHAR(50)
);

INSERT INTO customer VALUES
(1, 'yashu', '1/114 ksr kalvi nagar', 'trichy', 'tamil nadu', '632522'),
(2, 'arun', '12/45 anna street', 'madurai', 'tamil nadu', '625001'),
(3, 'divya', '7/89 gandhi road', 'coimbatore', 'tamil nadu', '641001'),
(4, 'karthik', '22/10 nehru nagar', 'salem', 'tamil nadu', '636007'),
(5, 'meena', '5/67 lakshmi colony', 'vellore', 'tamil nadu', '632004');

EXEC sp_rename 'customer.customer_address', 'address', 'COLUMN';

SELECT * FROM customer;
