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
    '畿什人 砧悦砧悦 昔亀 至茨亀獣 至奪 ー珠闘闘験―',
    '匙艦左堂 Pani Bottle',
    155,
    'https://i.ytimg.com/vi/DyTsVjaDCqs/hq720.jpg?sqp=-oaymwEcCNAFEJQDSFXyq4qpAw4IARUAAIhCGAFwAcABBg==&rs=AOn4CLBndfGXIAC8XnLMUJIw7_g2xhwaKQ',
    '<iframe width="800" height="450" src="https://www.youtube.com/embed/DyTsVjaDCqs" title="畿什人 砧悦砧悦 昔亀 至茨亀獣 至奪 ー珠闘闘験―" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" allowfullscreen></iframe>'
);

insert into youtube values(
    2,
    '[織昨 戚輯] "宣獄軒 企据級 発慎杯艦陥!" 在凪猿走 災袈澗汽.."耕脊厩" (2023.08.09/織昨敢什)',
    'MBCNEWS',
    9,
    'https://i.ytimg.com/vi/sA918Vc0mBs/hq720.jpg?sqp=-oaymwEcCNAFEJQDSFXyq4qpAw4IARUAAIhCGAFwAcABBg==&rs=AOn4CLBvgY6yoi5oQdoz7htNH-qJhIJ6xQ',
    '<iframe width="800" height="450" src="https://www.youtube.com/embed/sA918Vc0mBs" title="[&#39;織昨&#39; 戚輯] &quot;宣獄軒 企据級 発慎杯艦陥!&quot; 在凪猿走 災袈澗汽..&quot;耕脊厩&quot; (2023.08.09/織昨敢什)" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" allowfullscreen></iframe>'
);

insert into youtube values(
    3,
    '(1獣娃) "革 阻研 革亜 硝形蟹?せせせせ" 乞牽檎 析舘 焼巷 源戚蟹 国壱 左澗 呉獄級',
    'tvN D ENT',
    404,
    'https://i.ytimg.com/vi/BhIjyzgxQcg/hq720.jpg?sqp=-oaymwEcCNAFEJQDSFXyq4qpAw4IARUAAIhCGAFwAcABBg==&rs=AOn4CLATuceANyFe6A2OPyNr1Xtd0Mzjmw',
    '<iframe width="800" height="450" src="https://www.youtube.com/embed/BhIjyzgxQcg" title="[#銅穿球] (1獣娃) &quot;革 阻研 革亜 硝形蟹?せせせせ&quot; 乞牽檎 析舘 焼巷 源戚蟹 国壱 左澗 呉獄級 | #重辞政奄7 #重辞政奄8" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" allowfullscreen></iframe>'
);

commit;



select * from youtube order by idx;