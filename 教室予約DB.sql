CREATE TABLE FLOOR_MST (
 FLOOR_ID VARCHAR(3) NOT NULL,
 FLOOR_NAME VARCHAR(32)
);

ALTER TABLE FLOOR_MST ADD CONSTRAINT PK_FLOOR_MST PRIMARY KEY (FLOOR_ID);

CREATE TABLE ROOM_MST (
 ROOM_ID VARCHAR(4) NOT NULL,
 ROOM_NAME VARCHAR(32),
 FLOOR_ID VARCHAR(3) NOT NULL
);

ALTER TABLE ROOM_MST ADD CONSTRAINT PK_ROOM_MST PRIMARY KEY (ROOM_ID);


CREATE TABLE RESERVE (
 RESERVE_ID INT NOT NULL,
 ROOM_ID VARCHAR(4) NOT NULL,
 TITLE VARCHAR(128) NOT NULL,
 USER_NAME VARCHAR(32) NOT NULL,
 START_TIME DATE NOT NULL,
 END_TIME DATE NOT NULL,
 MAIL_ADDRESS VARCHAR(128),
 CANCEL_PASSWORD VARCHAR(16),
 REGIST_DATE DATE,
 DELETE_FLG VARCHAR(1)
);

ALTER TABLE RESERVE ADD CONSTRAINT PK_RESERVE PRIMARY KEY (RESERVE_ID);

ALTER TABLE ROOM_MST ADD CONSTRAINT FK_ROOM_MST_0 FOREIGN KEY (FLOOR_ID) REFERENCES FLOOR_MST (FLOOR_ID);

ALTER TABLE RESERVE ADD CONSTRAINT FK_RESERVE_0 FOREIGN KEY (ROOM_ID) REFERENCES ROOM_MST (ROOM_ID);


