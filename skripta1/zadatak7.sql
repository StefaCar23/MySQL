CREATE TABLE EMPLOYEE_PAY_TBL
(
EMP_ID	VARCHAR(10)	NOT NULL	PRIMARY KEY,
POS	VARCHAR(10)	NOT NULL,
DATE_HITE	DATE	NOT NULL,
PAY_RATE	DECIMAL(6,2)	NOT NULL,
SALARY	DECIMAL(8,2) NOT NULL,
BONUS	DECIMAL(6,2)	NOT NULL
);