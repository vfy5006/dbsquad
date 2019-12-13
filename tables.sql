CREATE TABLE HARDWARE		
(		
    ID          SMALLINT        NOT NULL,
    COST        DECIMAL(10,2) DEFAULT 0,	
    NAME        VARCHAR(100),
    DESCRIPTION	LONG VARCHAR,
    PRIMARY KEY(ID)		
);

CREATE TABLE DATASTORE
(
    ID          SMALLINT    NOT NULL,  
    TYPE		VARCHAR(25) NOT NULL, 
    DESCRIPTION LONG VARCHAR,
    COST        DECIMAL(10,2) DEFAULT 0,
    PRIMARY KEY(ID)	
);

CREATE TABLE SERVICE
(
    ID          SMALLINT        NOT NULL, 
    CODE		VARCHAR(25)     NOT NULL UNIQUE, 
    SIZE		VARCHAR(25)     NOT NULL,  
    COST		DECIMAL(10,2) DEFAULT 0,
    DESCRIPTION	LONG VARCHAR,
    HARDWARE	SMALLINT,
    DATASTORE	SMALLINT,	
    FOREIGN KEY(HARDWARE) REFERENCES HARDWARE(ID),
    FOREIGN KEY(DATASTORE) REFERENCES DATASTORE(ID),
    PRIMARY KEY(ID)
);

CREATE TABLE COMPONENT
(
    ID              SMALLINT        NOT NULL,
    TYPE		    VARCHAR(50)     NOT NULL,
    COST		    DECIMAL(10,2) DEFAULT 0,
    MODEL           VARCHAR(50), 
    SERIAL_NUMBER   VARCHAR(50),
    PRIMARY KEY(ID)
);

CREATE TABLE EMPLOYEE
(
    ID                  SMALLINT        NOT NULL,
    SSN                 INT             NOT NULL UNIQUE,
    TITLE               VARCHAR(50),
    NAME                VARCHAR(50),
    HIRE_DATE           DATE,
    PHONE               BIGINT,
    ADDRESS             VARCHAR(100),
    PAY_RATE            DECIMAL(10,2) DEFAULT 0,
    PAY_CLASS           CHAR(2),
    REPORTING_MANAGER   SMALLINT,
    FOREIGN KEY(REPORTING_MANAGER) REFERENCES EMPLOYEE(ID),
    PRIMARY KEY(ID)
);

CREATE TABLE OFFICE
(
    ID                  SMALLINT    NOT NULL,
    PHONE               BIGINT,
    FAX                 BIGINT,
    ADDRESS             VARCHAR(100),
    HOURS_START         TIME,
    HOURS_END           TIME,
    DESCRIPTION	        LONG VARCHAR,
    MANAGER             SMALLINT,
    FOREIGN KEY(MANAGER) REFERENCES EMPLOYEE(ID),
    PRIMARY KEY(ID)
);

CREATE TABLE CUSTOMER
(
    ID              SMALLINT    NOT NULL,
    BUSINESS_NAME   VARCHAR(100),
    CONTACT_NAME    VARCHAR(100),
    ADDRESS         VARCHAR(100),
    PHONE           BIGINT,
    PRIMARY KEY(ID)
);

CREATE TABLE PROJECT
(
    ID              SMALLINT    NOT NULL,
    TARGET_DATE     DATE,
    PURCHASE_DATE   DATE,
    SERVICE         SMALLINT,
    CUSTOMER        SMALLINT,
    FOREIGN KEY(SERVICE) REFERENCES SERVICE(ID),
    FOREIGN KEY(CUSTOMER) REFERENCES CUSTOMER(ID),   
    PRIMARY KEY(ID)
);

CREATE TABLE TIMESHEET
(
    ID              SMALLINT    NOT NULL,
    HOURS_WORKED	DECIMAL(10,2) DEFAULT 0,,
    DATE_WORKED 	DATE,
    EMPLOYEE        SMALLINT,
    PROJECT         SMALLINT,
    FOREIGN KEY(EMPLOYEE) REFERENCES EMPLOYEE(ID),
    FOREIGN KEY(PROJECT) REFERENCES PROJECT(ID),   
    PRIMARY KEY(ID)
);

CREATE TABLE ASSINGED_TO
(
    ID              SMALLINT    NOT NULL,
    EMPLOYEE        SMALLINT,
    PROJECT         SMALLINT,
    FOREIGN KEY(EMPLOYEE) REFERENCES EMPLOYEE(ID),
    FOREIGN KEY(PROJECT) REFERENCES PROJECT(ID),   
    PRIMARY KEY(ID)
);

CREATE TABLE MADE_OF
(
    ID              SMALLINT    NOT NULL,
    COMPONENT       SMALLINT,
    HARDWARE        SMALLINT,
    FOREIGN KEY(COMPONENT) REFERENCES COMPONENT(ID),
    FOREIGN KEY(HARDWARE) REFERENCES HARDWARE(ID),   
    PRIMARY KEY(ID)
);
