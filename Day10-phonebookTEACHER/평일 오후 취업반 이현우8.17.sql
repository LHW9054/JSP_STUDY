drop table phonebook purge;
drop sequence phonebook_seq;

create sequence phonebook_seq
    start with 1
    maxvalue 99999
    increment by 1
    nocache
    nocycle;
    
create table phonebook(
    idx number default phonebook_seq.nextval primary key,
    name varchar2(50)   not null,
    pnum varchar2(50)   not null
);

insert into phonebook (name,pnum) values ('이지은', '010-1234-5678');
insert into phonebook (name,pnum) values ('홍진호', '010-2222-2222');

select * from phonebook order by idx;

commit;
    