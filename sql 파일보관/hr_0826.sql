CREATE TABLE t_board5_cmt (
 i_cmt number primary key,
 i_board number not null,
 i_user number not null,
 cmt nvarchar2(500) not null,
 r_dt date default sysdate,
 m_dt date default sysdate,
 foreign key (i_board) references t_board5(i_board),
 foreign key (i_user) references t_user(i_user)
);

commit;

CREATE SEQUENCE seq_board5_cmt
start with 0
minvalue 0 -- minvalue 기본값이 1이기 때문에 적지 않으면 에러 발생
nocache;

DROP SEQUENCE seq_board5_cmt;