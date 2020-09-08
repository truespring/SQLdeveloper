CREATE TABLE t_user(
 i_user INT UNSIGNED PRIMARY KEY AUTO_INCREMENT,
 user_id varchar(30) NOT NULL unique,
 user_pw varchar(70) NOT NULL,
 nm varchar(5) NOT NULL,
 salt VARCHAR(30) NOT NULL,
 profile_img VARCHAR(50),
 r_dt DATETIME DEFAULT NOW(),
 m_dt DATETIME DEFAULT NOW()
); 

INSERT INTO t_user
(user_id, user_pw, nm)
VALUES
('dkdkdkd', '123123', '크라운제과');

DROP TABLE t_uesr;

SELECT * FROM t_user;