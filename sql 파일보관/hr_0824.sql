CREATE SEQUENCE seq_userloginhistory
nocache;

CREATE TABLE t_user_loginhistory(
 i_history number primary key,
 i_user number not null,
 ip_addr varchar2(15) not null,
 os varchar2(10) not null,
 browser varchar2(10) not null,
 r_dt date default sysdate
);
