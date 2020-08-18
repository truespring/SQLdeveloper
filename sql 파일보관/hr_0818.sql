CREATE TABLE t_board4(
 i_board number primary key,
 title varchar2(100) not null,
 ctnt varchar2(2000) not null,
 hits number default 0,
 i_user number not null,
 r_dt date default sysdate,
 m_dt date default sysdate,
 foreign key(i_user) references t_user(i_user)
);

CREATE table t_board5(
    i_board number PRIMARY key,
    title VARCHAR2(100) not null,
    ctnt VARCHAR2(2000) not null,
    hits NUMBER default 0,
    i_user number not null,
    r_dt date DEFAULT sysdate,
    m_dt date DEFAULT sysdate,
    FOREIGN key(i_user) REFERENCES t_user(i_user)
 );
 