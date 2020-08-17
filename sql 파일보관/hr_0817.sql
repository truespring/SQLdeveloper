CREATE sequence seq_user
nocache; -- 컴퓨터를 껏다 키면 캐시가 사라지기 때문에 막아줘야함 시퀀스 생성

SELECT * FROM t_user;

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

commit;