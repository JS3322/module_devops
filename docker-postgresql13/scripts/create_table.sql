CREATE TABLE VISITS (
    visitor_name varchar(25) not null,
    visit_datetime TIMESTAMP NOT NULL
);

CREATE TABLE ACCOUNT_TEST
(
	USER_ID SERIAL PRIMARY KEY,
	USERNAME VARCHAR(50) UNIQUE NOT NULL,
	PASSWORD VARCHAR(50) NOT NULL,
	EMAIL VARCHAR(355) UNIQUE NOT NULL,
	CREATED_ON TIMESTAMP NOT NULL,
	LAST_LOGIN TIMESTAMP
);

COMMIT;