

SELECT DISTINCT orderNumber,productCode,priceEach
 FROM orderdetails 
 WHERE
productCode LIKE'S18%' and priceEach >100 ;

SELECT * FROM payments
WHERE
DAY(paymentDate) IN (05 ,06);

SELECT * FROM customers
WHERE 
country = 'USA'
AND phone LIKE '%555%'
ORDER BY creditLimit DESC
LIMIT 5;
