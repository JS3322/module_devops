CREATE TABLE visits (
ID_VISIT varchar(10) not null,
NAME_VISIT varchar(10),
TIME_INIT datetime default NOW() not null
);