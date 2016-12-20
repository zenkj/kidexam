create database if not exists kousuan default character set utf8;

use kousuan;

--1. ��ѧ�༶��
drop table if exists teachclasses;
create table if not exists teachclasses (id int not null auto_increment,
                    name varchar(128) not null,
                    description varchar(1024),
                    primary key (id));

--2. ��ʦ��
drop table if exists teachers;
create table if not exists teachers (id int not null auto_increment,
                    name varchar(64) not null,
                    phone varchar(20),
                    email varchar(254), -- should <256, or fail as a key
                    password varchar(32),
                    create_time timestamp default current_timestamp,
                    primary key (id),
                    unique (email),
                    unique (phone));

--3. ѧ����
drop table if exists students;
create table if not exists students (id int not null auto_increment,
                    name varchar(64) not null,
                    phone varchar(20),
                    email varchar(254), -- should <256, or fail as a key
                    password varchar(32),
                    create_time timestamp default current_timestamp,
                    primary key (id),
                    unique (email),
                    unique (phone));

--4. ��ʦ�༶��ϵ��
drop table if exists teacherclassrelations;
create table if not exists teacherclassrelations (
                    teacherid int not null,
                    classid int not null,
                    primary key (teacherid, classid));

--5. ѧ���༶��ϵ��
drop table if exists studentclassrelations;
create table if not exists studentclassrelations (
                    studentid int not null,
                    classid int not null,
                    primary key (studentid, classid));

--6. ��Ŀ���ͱ�
-- id         ����id
-- name       ��������
-- num        ��������Ŀ��
-- difficulty �Ѷ� 1-10��10����
-- grade      �꼶��1 һ�꼶��2 ���꼶
-- semester   ѧ�ڣ�1 ��һѧ�ڣ�2 �ڶ�ѧ��
drop table if exists qtypes;
create table if not exists qtypes (
                        id int not null,
                        name varchar(128) not null,
                        num int not null,
                        difficulty int not null,
                        grade int not null,
                        semester int not null,
                        primary key (id));
--7. ��Ŀ����⣩
drop table if exists questions;
create table if not exists questions (
                id int not null,
                typeid int not null,
                content varchar(32) not null,
                answer int not null,
                primary key(id));

-- �����ͻ��ֵ�shuffle������Ŀ��
drop table if exists questions_1;
drop table if exists questions_2;
drop table if exists questions_3;
drop table if exists questions_4;
drop table if exists questions_5;
drop table if exists questions_6;
drop table if exists questions_7;
drop table if exists questions_8;
drop table if exists questions_9;
drop table if exists questions_10;
drop table if exists questions_11;
drop table if exists questions_12;
drop table if exists questions_13;
drop table if exists questions_14;
drop table if exists questions_15;
drop table if exists questions_16;
drop table if exists questions_17;
drop table if exists questions_18;
drop table if exists questions_19;
drop table if exists questions_20;
drop table if exists questions_21;
drop table if exists questions_22;
drop table if exists questions_23;
drop table if exists questions_24;
drop table if exists questions_25;
drop table if exists questions_26;
drop table if exists questions_27;
drop table if exists questions_28;
drop table if exists questions_29;
drop table if exists questions_30;
drop table if exists questions_31;
drop table if exists questions_32;
drop table if exists questions_33;
drop table if exists questions_34;
drop table if exists questions_35;
drop table if exists questions_36;
drop table if exists questions_37;
drop table if exists questions_38;
drop table if exists questions_39;
drop table if exists questions_40;
drop table if exists questions_41;
drop table if exists questions_42;
drop table if exists questions_43;
drop table if exists questions_44;
drop table if exists questions_45;
drop table if exists questions_46;
drop table if exists questions_47;
drop table if exists questions_48;
drop table if exists questions_49;
drop table if exists questions_50;
drop table if exists questions_51;
drop table if exists questions_52;
drop table if exists questions_53;
create table if not exists questions_1 (id int not null, content char(8) not null, answer int not null, primary key(id));
create table if not exists questions_2 (id int not null, content char(8) not null, answer int not null, primary key(id));
create table if not exists questions_3 (id int not null, content char(8) not null, answer int not null, primary key(id));
create table if not exists questions_4 (id int not null, content char(8) not null, answer int not null, primary key(id));
create table if not exists questions_5 (id int not null, content char(8) not null, answer int not null, primary key(id));
create table if not exists questions_6 (id int not null, content char(8) not null, answer int not null, primary key(id));
create table if not exists questions_7 (id int not null, content char(8) not null, answer int not null, primary key(id));
create table if not exists questions_8 (id int not null, content char(8) not null, answer int not null, primary key(id));
create table if not exists questions_9 (id int not null, content char(8) not null, answer int not null, primary key(id));
create table if not exists questions_10 (id int not null, content char(8) not null, answer int not null, primary key(id));
create table if not exists questions_11 (id int not null, content char(8) not null, answer int not null, primary key(id));
create table if not exists questions_12 (id int not null, content char(8) not null, answer int not null, primary key(id));
create table if not exists questions_13 (id int not null, content char(8) not null, answer int not null, primary key(id));
create table if not exists questions_14 (id int not null, content char(8) not null, answer int not null, primary key(id));
create table if not exists questions_15 (id int not null, content char(8) not null, answer int not null, primary key(id));
create table if not exists questions_16 (id int not null, content char(8) not null, answer int not null, primary key(id));
create table if not exists questions_17 (id int not null, content char(8) not null, answer int not null, primary key(id));
create table if not exists questions_18 (id int not null, content char(8) not null, answer int not null, primary key(id));
create table if not exists questions_19 (id int not null, content char(8) not null, answer int not null, primary key(id));
create table if not exists questions_20 (id int not null, content char(8) not null, answer int not null, primary key(id));
create table if not exists questions_21 (id int not null, content char(8) not null, answer int not null, primary key(id));
create table if not exists questions_22 (id int not null, content char(8) not null, answer int not null, primary key(id));
create table if not exists questions_23 (id int not null, content char(8) not null, answer int not null, primary key(id));
create table if not exists questions_24 (id int not null, content char(8) not null, answer int not null, primary key(id));
create table if not exists questions_25 (id int not null, content char(8) not null, answer int not null, primary key(id));
create table if not exists questions_26 (id int not null, content char(8) not null, answer int not null, primary key(id));
create table if not exists questions_27 (id int not null, content char(8) not null, answer int not null, primary key(id));
create table if not exists questions_28 (id int not null, content char(8) not null, answer int not null, primary key(id));
create table if not exists questions_29 (id int not null, content char(8) not null, answer int not null, primary key(id));
create table if not exists questions_30 (id int not null, content char(8) not null, answer int not null, primary key(id));
create table if not exists questions_31 (id int not null, content char(8) not null, answer int not null, primary key(id));
create table if not exists questions_32 (id int not null, content char(8) not null, answer int not null, primary key(id));
create table if not exists questions_33 (id int not null, content char(8) not null, answer int not null, primary key(id));
create table if not exists questions_34 (id int not null, content char(8) not null, answer int not null, primary key(id));
create table if not exists questions_35 (id int not null, content char(8) not null, answer int not null, primary key(id));
create table if not exists questions_36 (id int not null, content char(8) not null, answer int not null, primary key(id));
create table if not exists questions_37 (id int not null, content char(8) not null, answer int not null, primary key(id));
create table if not exists questions_38 (id int not null, content char(8) not null, answer int not null, primary key(id));
create table if not exists questions_39 (id int not null, content char(8) not null, answer int not null, primary key(id));
create table if not exists questions_40 (id int not null, content char(8) not null, answer int not null, primary key(id));
create table if not exists questions_41 (id int not null, content char(8) not null, answer int not null, primary key(id));
create table if not exists questions_42 (id int not null, content char(8) not null, answer int not null, primary key(id));
create table if not exists questions_43 (id int not null, content char(8) not null, answer int not null, primary key(id));
create table if not exists questions_44 (id int not null, content char(8) not null, answer int not null, primary key(id));
create table if not exists questions_45 (id int not null, content char(8) not null, answer int not null, primary key(id));
create table if not exists questions_46 (id int not null, content char(8) not null, answer int not null, primary key(id));
create table if not exists questions_47 (id int not null, content char(8) not null, answer int not null, primary key(id));
create table if not exists questions_48 (id int not null, content char(8) not null, answer int not null, primary key(id));
create table if not exists questions_49 (id int not null, content char(8) not null, answer int not null, primary key(id));
create table if not exists questions_50 (id int not null, content char(8) not null, answer int not null, primary key(id));
create table if not exists questions_51 (id int not null, content char(8) not null, answer int not null, primary key(id));
create table if not exists questions_52 (id int not null, content char(8) not null, answer int not null, primary key(id));
create table if not exists questions_53 (id int not null, content char(8) not null, answer int not null, primary key(id));



--8. �Ծ��
--   �Ծ�����Զ�����Ҳ�����ֶ������ֶ������Ծ��ǳ�����ʦ��˼���ᾧ��
--   �Զ������Ծ��ǽ��ѧ�����ض�ѧϰ�����ͨ������ѧϰ�ķ����Զ���
--   �����ÿ��ѧ���Ķ����Ծ�
drop table if exists exampapers;
create table if not exists exampapers (
                id int not null auto_increment,
                name varchar(128) not null,
                description varchar(1024),
                creator int default 0, -- �����ˣ�0�����Զ�����>0������ʦid
                period int not null, -- time in minutes
                qnum int not null, -- question number
                primary key (id));

--9. �Ծ���Ŀ��
drop table if exists paperquestions;
create table if not exists paperquestions (
                paperid int not null,
                qorder int not null, -- question order in the paper
                qtype int not null,
                qid int not null,
                primary key (paerid, qorder));

--10. ���Ա����еĿ��ԣ�������Ը��˶��ƣ�
drop table if exists exams;
create table if not exists exams (
                id int not null auto_increment,
                paperid bitint not null,
                begin_time timestamp not null,
                end_time timestamp not null,
                uid int not null,
                errornum int not null,
                primary key (id));

--11. ���Խ����������ϸ�����
drop table if exists examresults;
create table if not exists examresults (
                examid int not null,
                paperid int not null,
                qorder int not null, -- ��Ŀ���
                period int not null, -- time in milliseconds
                result int,          -- ��Ŀ�����null��ʾ�����û��
                error  char,         -- 0����ȷ��1������
                primary key (examid, qorder));


