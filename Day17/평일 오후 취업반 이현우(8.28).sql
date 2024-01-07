drop sequence board2_seq;
drop table board2 cascade constraints purge;

create sequence board2_seq
    start with 1
    maxvalue 999999999
    increment by 1
    nocycle
    nocache;
    
create table board2 (
    idx         number          default board2_seq.nextval primary key,
    title       varchar2(100)   not null,
    writer      varchar2(100)   not null,
    content     clob            not null,
    uploadFile  varchar2(100)   ,
    wdate       date            default sysdate,
    
    constraint board2_member_fk
    foreign key (writer)
    references member(userid)
);