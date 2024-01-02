select * from member;

create table member(
    userid      varchar2(100)   primary key,
    userpw      varchar2(100)   not null,
    username    varchar2(100)   not null,
    email       varchar2(100)   not null,
    birth       varchar2(100)   not null
);

insert into member
    values ('test', '1234', '�׽�Ʈ', 'test@itbank.com', '2000-01-02');
insert into member
    values ('itbank', 'it', '����Ƽ��ũ', 'admin@itbank.com', '1970-01-01');
insert into member
    values ('root', '1', '������', 'root@itbank.com', '1999-12-31');
    
commit;