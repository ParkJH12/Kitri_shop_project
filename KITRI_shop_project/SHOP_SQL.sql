CREATE TABLE MEMBER(
M_NUM NUMBER PRIMARY KEY,
NAME VARCHAR2(20) NOT NULL,
PASS VARCHAR2(50) NOT NULL,
PHONE_NUM VARCHAR2(30) NOT NULL,
ADDRESS VARCHAR2(100) NOT NULL,
EMAIL VARCHAR2(30),
CASH NUMBER DEFAULT 0
);

CREATE SEQUENCE SEQ_MEMBER

--------------------------------
CREATE TABLE SELL_PH_BOARD(
PB_NUM NUMBER PRIMARY KEY,
WRITER VARCHAR2(20) NOT NULL,
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

CREATE SEQUENCE SEQ_PH_BOARD
ALTER TABLE SELL_PH_BOARD
ADD CONSTRAINT PH_BOARD_CHECK CHECK(STATEMENT IN ('S','A','B','C'));

ALTER TABLE SELL_PH_BOARD
ADD CONSTRAINT SELL_FK FOREIGN KEY(M_NUM) REFERENCES MEMBER(M_NUM)
ON DELETE CASCADE;

--------------------------------

CREATE TABLE ORDER_LIST(
ORDER_NO NUMBER PRIMARY KEY,
SELLER_NAME VARCHAR2(20) NOT NULL,
SELLER_PHONE_NUM VARCHAR2(30) NOT NULL,
BUYER_NAME VARCHAR2(20) NOT NULL,
BUYER_PHONE_NUM VARCHAR2(30) NOT NULL,
TITLE VARCHAR2(50) NOT NULL,
PRODUCT_NAME VARCHAR2(30) NOT NULL,
COUNT NUMBER NOT NULL,
PRICE NUMBER NOT NULL,
W_DATE DATE DEFAULT SYSDATE
)
CREATE SEQUENCE SEQ_ORDER

----------------------------

CREATE TABLE BUSKET(
BK_NUM NUMBER,
WRITER VARCHAR2(20) NOT NULL,
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
B_DATE DATE DEFAULT SYSDATE
)

INSERT INTO MEMBER VALUES()

CREATE OR REPLACE TRIGGER TRG_BUSKET_INSERT
AFTER INSERT ON BUSKET
FOR EACH ROW
BEGIN
    UPDATE SELL_PH_BOARD
    SET COUNT = COUNT-1
    WHERE PB_NUM =:NEW.PB_NUM;
END;
/


