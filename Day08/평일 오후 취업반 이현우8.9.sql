select * from tab;

drop table youtube purge;

create table youtube(
    idx         number,
    title       varchar2(500),
    channel     varchar2(100),
    viewCount   number,
    thumbnail   varchar2(500),
    movieTag    varchar2(1000)
);

set define off;

insert into youtube values(
    1,
    '덱스와 두근두근 인도 산골도시 산책 【쇼트트립】',
    '빠니보틀 Pani Bottle',
    155,
    'https://i.ytimg.com/vi/DyTsVjaDCqs/hq720.jpg?sqp=-oaymwEcCNAFEJQDSFXyq4qpAw4IARUAAIhCGAFwAcABBg==&rs=AOn4CLBndfGXIAC8XnLMUJIw7_g2xhwaKQ',
    '<iframe width="800" height="450" src="https://www.youtube.com/embed/DyTsVjaDCqs" title="덱스와 두근두근 인도 산골도시 산책 【쇼트트립】" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" allowfullscreen></iframe>'
);

insert into youtube values(
    2,
    '[엠빅 이슈] "잼버리 대원들 환영합니다!" 뷔페까지 불렀는데.."미입국" (2023.08.09/엠빅뉴스)',
    'MBCNEWS',
    9,
    'https://i.ytimg.com/vi/sA918Vc0mBs/hq720.jpg?sqp=-oaymwEcCNAFEJQDSFXyq4qpAw4IARUAAIhCGAFwAcABBg==&rs=AOn4CLBvgY6yoi5oQdoz7htNH-qJhIJ6xQ',
    '<iframe width="800" height="450" src="https://www.youtube.com/embed/sA918Vc0mBs" title="[&#39;엠빅&#39; 이슈] &quot;잼버리 대원들 환영합니다!&quot; 뷔페까지 불렀는데..&quot;미입국&quot; (2023.08.09/엠빅뉴스)" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" allowfullscreen></iframe>'
);

insert into youtube values(
    3,
    '(1시간) "네 죄를 네가 알려나?ㅋㅋㅋㅋ" 모르면 일단 아무 말이나 뱉고 보는 멤버들',
    'tvN D ENT',
    404,
    'https://i.ytimg.com/vi/BhIjyzgxQcg/hq720.jpg?sqp=-oaymwEcCNAFEJQDSFXyq4qpAw4IARUAAIhCGAFwAcABBg==&rs=AOn4CLATuceANyFe6A2OPyNr1Xtd0Mzjmw',
    '<iframe width="800" height="450" src="https://www.youtube.com/embed/BhIjyzgxQcg" title="[#티전드] (1시간) &quot;네 죄를 네가 알려나?ㅋㅋㅋㅋ&quot; 모르면 일단 아무 말이나 뱉고 보는 멤버들 | #신서유기7 #신서유기8" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" allowfullscreen></iframe>'
);

commit;



select * from youtube order by idx;