//TEST VALUES

INSERT INTO HARDWARE VALUES (00000, 0.00, 'Test', 'Test Hardware do not use');

INSERT INTO DATASTORE VALUES (00000, 'Test', 'Test Database, do not use.', 0.00 );

INSERT INTO COMPONENT VALUES (00000, 'Test', 0.00, 'Test model', '123XYZ');

INSERT INTO CUSTOMER VALUES (00000, 'Test Business', 'Test contact', '123 Test street', 5550000000);

INSERT INTO SERVICE VALUES (00000, 'Test Code', 'Test size', 0.00, 'Test Service do not use', 00000, 00000);

INSERT INTO EMPLOYEE VALUES (00000, 999999999, 'Test title', 'Test Name', '2000-01-01', 5550000000, '123 test street', 25.00, 'HR', 00000);

INSERT INTO OFFICE VALUES (00000, 5550000000, 5550000000, '123 Test Street', '08:00:00', '18:00:00', 'Test Office do not use', 00000);

INSERT INTO PROJECT VALUES (00000, '2050-01-01','2010-01-01', 00000, 00000 );

INSERT INTO TIMESHEET VALUES (00000, 8, '2015-12-31', 00000, 00000);

INSERT INTO ASSINGED_TO VALUES (00000,00000,00000);

INSERT INTO MADE_OF VALUES (00000, 00000, 00000);

//Real Values below

INSERT INTO DATASTORE VALUES (20001, 'ODB', 'Operational Database', 999.95 );
INSERT INTO DATASTORE VALUES (20002, 'NoSQL', 'Non Relational Database ', 3999.95 );
INSERT INTO DATASTORE VALUES (20003, 'RDMS', 'Relational Database ', 1999.95 );

INSERT INTO HARDWARE VALUES (10001, 500.00, 'Small ODB', 'Hardware for a small ODB system.  50 users max');
INSERT INTO HARDWARE VALUES (10002, 2500.00, 'Large ODB', 'Hardware for a large ODB system.  500 users max');
INSERT INTO HARDWARE VALUES (10003, 1000.00, 'Small NoSQL', 'Hardware for a small NoSQL system.  75 users max');
INSERT INTO HARDWARE VALUES (10004, 10000.00, 'Large NoSQL', 'Hardware for a large NoSQL system.  1000 users max');
INSERT INTO HARDWARE VALUES (10005, 2500.00, 'Small RDMS', 'Hardware for a small RDMS system.  25 users max');
INSERT INTO HARDWARE VALUES (10006, 15000.00, 'Large RDMS', 'Hardware for a large RDMS system.  650 users max');

INSERT INTO COMPONENT VALUES (00001, 'Display', 50.00, 'Test model', 'MKO8UH');
INSERT INTO COMPONENT VALUES (00002, 'HIM', 75.00, 'Test model', '8UH8UF43E');
INSERT INTO COMPONENT VALUES (00003, 'Server Rack', 250.00, 'Test model', 'DFSDF4HH');
INSERT INTO COMPONENT VALUES (00004, 'Power Supply', 45.00, 'Test model', '645980OUH');
INSERT INTO COMPONENT VALUES (00005, 'Server Blade', 15.00, 'Test model', 'GTHY678');
INSERT INTO COMPONENT VALUES (00006, 'AC Unit', 456.00, 'Test model', 'JHG456');
INSERT INTO COMPONENT VALUES (00007, 'Network Switch', 687.00, 'Test model', 'HYJTJ345');
