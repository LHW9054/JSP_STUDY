create table movie (
    movie_rank     number,
    title          varchar2(100),
    openningDate   varchar2(100),
    reserveRate    number(3,1),
    reserveCount   number,
    watchCount     number
);

insert into movie values (1,'오펜하이머',             '2023-08-15', 32.2, 157679, 0);
insert into movie values (2,'콘크리트 유토피아',       '2023-08-09', 29.5, 144524, 14126);
insert into movie values (3,'밀수',                  '2023-07-26', 9.3,  45709, 3667880);
insert into movie values (4,'보호자',                '2023-08-15', 4.1, 20135, 401);
insert into movie values (5,'비공식작전',             '2023-08-02', 4.1, 19848, 759613);
insert into movie values (6,'더 문',                 '2023-08-02', 3.7, 18321, 384791);
insert into movie values (7,'엘리멘탈',               '2023-06-14', 3.3, 15985, 6354883);
insert into movie values (8,'달짝지근해:7510',        '2023-08-15', 2.7, 13302, 6637);
insert into movie values (9,'런닝맨: 리벤져스',        '2023-08-10', 1.7, 8380, 2062);
insert into movie values (10,'명탐정코난: 흑철의 어영', '2023-07-20', 1.6, 8058, 685440);

commit;

create table melon (
    ranking     number,
    title       varchar2(100),
    artist      varchar2(100),
    album       varchar2(100),
    create table movie (
    movie_rank     number,
    title          varchar2(100),
    openningDate   varchar2(100),
    reserveRate    number(3,1),
    reserveCount   number,
    watchCount     number
);

insert into movie values (1,'오펜하이머',             '2023-08-15', 32.2, 157679, 0);
insert into movie values (2,'콘크리트 유토피아',       '2023-08-09', 29.5, 144524, 14126);
insert into movie values (3,'밀수',                  '2023-07-26', 9.3,  45709, 3667880);
insert into movie values (4,'보호자',                '2023-08-15', 4.1, 20135, 401);
insert into movie values (5,'비공식작전',             '2023-08-02', 4.1, 19848, 759613);
insert into movie values (6,'더 문',                 '2023-08-02', 3.7, 18321, 384791);
insert into movie values (7,'엘리멘탈',               '2023-06-14', 3.3, 15985, 6354883);
insert into movie values (8,'달짝지근해:7510',        '2023-08-15', 2.7, 13302, 6637);
insert into movie values (9,'런닝맨: 리벤져스',        '2023-08-10', 1.7, 8380, 2062);
insert into movie values (10,'명탐정코난: 흑철의 어영', '2023-07-20', 1.6, 8058, 685440);

commit;

create table melon (
    rank     number,
    title       varchar2(100),
    artist      varchar2(100),
    album       varchar2(100),
    likeCount   number
);

insert into melon values (1, 'Super Shy', 'New Jeans', 'NewJeans 2nd ''Get Up''', 124633);
insert into melon values (2, 'ETA', 'New Jeans', 'NewJeans 2nd ''Get Up''', 72627);
insert into melon values (3, 'Seven (feat.Latto)-Clean Ver.', '정국', 'Seven (feat.Latto)-Clean Ver.', 137573);
insert into melon values (4, '퀸카 (Queencard)', '(여자)아이들', 'I feel', 127567);
insert into melon values (5, '헤어지자 말해요', '박재정', '1집 Alone', 103466);
insert into melon values (6, 'IVE(아이브)', 'I AM', 'I''ve IVE', 190808);
insert into melon values (7, '이브, 프시케 그리고 푸른수염', 'LE SSERAFIM(르세라핌)', 'UNFORGIVEN', 99316);
insert into melon values (8, 'Spicy', 'aespa', 'MY WORLD - The3rd Mini Album', 116993);
insert into melon values (9, 'Steal The Show (From “엘리멘탈”)', 'Lauv', 'Steal The Show', 117402);
insert into melon values (10, 'New Jeans', 'New Jeans', 'NewJeans 2nd ''Get Up''', 62053);

select * from melon;
commit;
select * from melon order by ranking;


