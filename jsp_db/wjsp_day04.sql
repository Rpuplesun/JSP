CREATE TABLE tbl_member(
	userid		varchar2(200) PRIMARY KEY,
	userpw		varchar2(200),
	username	varchar2(200),
	usergender	varchar2(100),
	userphone	varchar2(100)
);

SELECT * FROM TBL_MEMBER ;

INSERT INTO TBL_MEMBER VALUES ('test1', 'testpw123', '김자바', 'M', '01012345678');

SELECT * FROM TBL_MEMBER WHERE userid = 'test1' AND userpw = 'testpw123';