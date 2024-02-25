CREATE TYPE	level_tech AS ENUM ('Trainee', 'Junior', 'Middle', 'Senior'); 

CREATE TABLE worker (
    ID int GENERATED BY DEFAULT AS IDENTITY CHECK(ID > 0),
    NAME varchar (1000) CHECK (LENGTH(TRIM(NAME))>=2),
    BIRTHDAY date CHECK (BIRTHDAY > '1900-01-01'),
    LEVEL level_tech NOT NULL,
    SALARY numeric CHECK (SALARY BETWEEN 100 AND 100000),
    PRIMARY KEY (ID) 
);

CREATE TABLE client (
    ID int GENERATED BY DEFAULT AS IDENTITY CHECK(ID > 0),
    NAME varchar (1000) CHECK (LENGTH(NAME) BETWEEN 2 AND 100),
    PRIMARY KEY (ID)
);

CREATE TABLE project(
    ID int GENERATED BY DEFAULT AS IDENTITY CHECK(ID > 0),
    CLIENT_ID int NOT NULL,
    START_DATE date,
    FINISH_DATE date,
    PRIMARY KEY(ID),
    FOREIGN KEY(CLIENT_ID)  REFERENCES client (id)
);

CREATE TABLE project_worker(
	PROJECT_ID int NOT NULL,
	WORKER_ID int NOT NULL,
	FOREIGN KEY (PROJECT_ID) REFERENCES project (ID),
	FOREIGN KEY (WORKER_ID) REFERENCES worker(ID)
);