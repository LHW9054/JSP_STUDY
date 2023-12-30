DROP TABLE YOUTUBE PURGE;

  CREATE TABLE YOUTUBE
   (	IDX NUMBER, 
	TITLE VARCHAR2(500), 
	CHANNEL VARCHAR2(100), 
	VIEWCOUNT NUMBER, 
	THUMBNAIL VARCHAR2(500), 
	MOVIETAG VARCHAR2(1000)
   );

SET DEFINE OFF;

Insert into YOUTUBE (IDX,TITLE,CHANNEL,VIEWCOUNT,THUMBNAIL,MOVIETAG) values (4,'�츮 ������ ����','�̱ۺ���',125628,'https://i.ytimg.com/vi/B3VVc2MhnCE/hq720.jpg?sqp=-oaymwEcCNAFEJQDSFXyq4qpAw4IARUAAIhCGAFwAcABBg==&rs=AOn4CLDHu9czOcEHbhUYYYLVLxhymxhHyg','<iframe width="644" height="362" src="https://www.youtube.com/embed/B3VVc2MhnCE" title="�츮 ������ ����" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" allowfullscreen></iframe>');
Insert into YOUTUBE (IDX,TITLE,CHANNEL,VIEWCOUNT,THUMBNAIL,MOVIETAG) values (1,'[����] ��� ���� ���� ���� ��ǳ...���ϡ��� ���� ��� / YTN','YTN',1234,'https://i.ytimg.com/vi/iW0vQ3O3S58/hq720.jpg?sqp=-oaymwEcCNAFEJQDSFXyq4qpAw4IARUAAIhCGAFwAcABBg==&rs=AOn4CLCQRBeXItab03zDIwVeGp1jclCwow','<iframe width="800" height="450" src="https://www.youtube.com/embed/iW0vQ3O3S58" title="[����] ��� ���� ���� ���� ��ǳ...���ϡ��� ���� ��� / YTN" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" allowfullscreen></iframe>');
Insert into YOUTUBE (IDX,TITLE,CHANNEL,VIEWCOUNT,THUMBNAIL,MOVIETAG) values (2,'[�乬��] �� ȫ��? ���� ������! ��! (feat. �ݴ�)','������',1080000,'https://i.ytimg.com/vi/GJtmmopW2jA/hq720.jpg?sqp=-oaymwEcCNAFEJQDSFXyq4qpAw4IARUAAIhCGAFwAcABBg==&rs=AOn4CLDQm-pOBnIhL7YvMn0fhThuVXEXJg','<iframe width="800" height="450" src="https://www.youtube.com/embed/GJtmmopW2jA" title="[�乬��] �� ȫ��? ���� ������! ��! (feat. �ݴ�)" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" allowfullscreen></iframe>');
Insert into YOUTUBE (IDX,TITLE,CHANNEL,VIEWCOUNT,THUMBNAIL,MOVIETAG) values (3,'���ݿ� ȣ���� �������� ���� ���̴�','�����ʽ� DBNS',2060000,'https://i.ytimg.com/vi/Is6h6cxuEiI/hq720.jpg?sqp=-oaymwEcCNAFEJQDSFXyq4qpAw4IARUAAIhCGAFwAcABBg==&rs=AOn4CLDT0EFMA2b96c-zZa_smgFyt37ghQ','<iframe width="800" height="450" src="https://www.youtube.com/embed/Is6h6cxuEiI" title="���ݿ� ȣ���� �������� ���� ���̴�" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" allowfullscreen></iframe>');
commit;

select * from youtube order by idx;


drop table student purge;

create table student(
    name varchar2(100),
    kor     number,
    eng     number,
    mat     number
);

insert into student values ('¯��', 50, 55, 62);
insert into student values ('����', 72, 87, 61);

commit;

select
    student.*,
    kor + eng + mat as total,
    trunc((kor + eng + mat) / 3, 1 ) as avg
    from student;