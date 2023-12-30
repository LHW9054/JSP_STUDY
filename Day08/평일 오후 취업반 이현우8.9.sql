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
    '������ �αٵα� �ε� ��񵵽� ��å ����ƮƮ����',
    '���Ϻ�Ʋ Pani Bottle',
    155,
    'https://i.ytimg.com/vi/DyTsVjaDCqs/hq720.jpg?sqp=-oaymwEcCNAFEJQDSFXyq4qpAw4IARUAAIhCGAFwAcABBg==&rs=AOn4CLBndfGXIAC8XnLMUJIw7_g2xhwaKQ',
    '<iframe width="800" height="450" src="https://www.youtube.com/embed/DyTsVjaDCqs" title="������ �αٵα� �ε� ��񵵽� ��å ����ƮƮ����" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" allowfullscreen></iframe>'
);

insert into youtube values(
    2,
    '[���� �̽�] "����� ����� ȯ���մϴ�!" ������� �ҷ��µ�.."���Ա�" (2023.08.09/���򴺽�)',
    'MBCNEWS',
    9,
    'https://i.ytimg.com/vi/sA918Vc0mBs/hq720.jpg?sqp=-oaymwEcCNAFEJQDSFXyq4qpAw4IARUAAIhCGAFwAcABBg==&rs=AOn4CLBvgY6yoi5oQdoz7htNH-qJhIJ6xQ',
    '<iframe width="800" height="450" src="https://www.youtube.com/embed/sA918Vc0mBs" title="[&#39;����&#39; �̽�] &quot;����� ����� ȯ���մϴ�!&quot; ������� �ҷ��µ�..&quot;���Ա�&quot; (2023.08.09/���򴺽�)" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" allowfullscreen></iframe>'
);

insert into youtube values(
    3,
    '(1�ð�) "�� �˸� �װ� �˷���?��������" �𸣸� �ϴ� �ƹ� ���̳� ��� ���� �����',
    'tvN D ENT',
    404,
    'https://i.ytimg.com/vi/BhIjyzgxQcg/hq720.jpg?sqp=-oaymwEcCNAFEJQDSFXyq4qpAw4IARUAAIhCGAFwAcABBg==&rs=AOn4CLATuceANyFe6A2OPyNr1Xtd0Mzjmw',
    '<iframe width="800" height="450" src="https://www.youtube.com/embed/BhIjyzgxQcg" title="[#Ƽ����] (1�ð�) &quot;�� �˸� �װ� �˷���?��������&quot; �𸣸� �ϴ� �ƹ� ���̳� ��� ���� ����� | #�ż�����7 #�ż�����8" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" allowfullscreen></iframe>'
);

commit;



select * from youtube order by idx;