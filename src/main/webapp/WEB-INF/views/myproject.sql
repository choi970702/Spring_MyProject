create table myproject
(
idx	 number		Not Null    primary key,

id varchar2(45) not null,
pw varchar2(45) not null,
phone varchar2(45) not null,
mail varchar2(45) not null,
u_id varchar2(45)  not null
);
create table myboard
(
 b_idx number not null primary key,
 id varchar2(45) not null,
 idx number not null,
 writer VARCHAR2(100) NOT NULL,
 title VARCHAR2(100) NOT NULL,
 content CLOB,
 pwd VARCHAR2(20) NOT NULL,
 groups NUMBER NOT NULL,
 step NUMBER NOT NULL,
 lev NUMBER NOT NULL,
 regdate date NOT NULL,
 file_name VARCHAR2(50),
  FOREIGN key(idx) REFERENCES myproject(idx)
);

CREATE SEQUENCE myboard_seq
increment by 1
start with 1
nocycle;

CREATE SEQUENCE mygroup_seq
increment by 1
start with 1
nocycle;
CREATE SEQUENCE myproject_seq
increment by 1
start with 1
nocycle;