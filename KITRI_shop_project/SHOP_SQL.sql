CREATE TABLE MEMBER(
M_NUM NUMBER PRIMARY KEY,
NAME VARCHAR2(20) NOT NULL,
PASS VARCHAR2(50) NOT NULL,
PHONE_NUM VARCHAR2(30) NOT NULL,
ADDRESS VARCHAR2(100) NOT NULL,
EMAIL VARCHAR2(30),
ADM_CHK CHAR(1) DEFAULT 'N'
);

CREATE SEQUENCE SEQ_MEMBER

--------------------------------
CREATE TABLE SELL_PH_BOARD(
PB_NUM NUMBER PRIMARY KEY,
M_NUM NUMBER,
TITLE VARCHAR2(50) NOT NULL,
CONTENT VARCHAR2(1000) NOT NULL,
MODEL VARCHAR2(30) NOT NULL,
COUNT NUMBER NOT NULL,
PRODUCT_NAME VARCHAR2(30) NOT NULL,
PRICE NUMBER NOT NULL,
COLOR VARCHAR2(20),
AGENCY VARCHAR2(20),
STATEMENT CHAR(1),
IMG_PATH VARCHAR2(500),
W_DATE DATE DEFAULT SYSDATE
)

CREATE SEQUENCE SEQ_P_BOARD
ALTER TABLE SELL_PH_BOARD
ADD CONSTRAINT PH_BOARD_CHECK CHECK(STATEMENT IN ('S','A','B','C','F'));

ALTER TABLE SELL_PH_BOARD
ADD CONSTRAINT SELL_FK FOREIGN KEY(M_NUM) REFERENCES MEMBER(M_NUM)
ON DELETE CASCADE;

--------------------------------

CREATE TABLE BUSKET(
bk_NUM NUMBER,
M_NUM NUMBER,
MODEL VARCHAR2(30) NOT NULL,
COUNT NUMBER NOT NULL,
PRODUCT_NAME VARCHAR2(30) NOT NULL,
PRICE NUMBER NOT NULL,
COLOR VARCHAR2(20),
AGENCY VARCHAR2(20),
STATEMENT CHAR(1),
IMG_PATH VARCHAR2(500),
W_DATE DATE 
)

CREATE OR REPLACE TRIGGER TRG_BUSKET
AFTER INSERT
ON 
FOR EACH ROW
WHEN(NEW.board_chk = 'Y')
BEGIN
    UPDATE board
    SET board_like = board_like + 1
    WHERE MEMBER_NO =:NEW.MEMBER_NO;
END;
/
