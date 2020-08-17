CREATE TABLE t_user(
 i_user number primary key,
 user_id varchar2(30) not null,
 user_pw varchar2(100) not null,
 nm varchar2(20) not null,
 email varchar2(40),
 profile_img varchar2(50),
 r_dt date default sysdate,
 m_dt date default sysdate
);