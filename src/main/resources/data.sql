-- Initial creation of data model schema

insert into mib_role(id, s_name) values (1, 'Паспортист');
insert into mib_role(id, s_name) values (2, 'Исследователь');
insert into mib_role(id, s_name) values (3, 'Оперативный агент');
insert into mib_role(id, s_name) values (4, 'Юрист для инопланетян');
insert into mib_role(id, s_name) values (5, 'HR менеджер');
insert into mib_role(id, s_name) values (6, 'Внедренец технологий');
insert into mib_role(id, s_name) values (7, 'test');

insert into mib_user(id, id_role, s_login, s_password) values (1, 7, 'test', 'test');

insert into mib_role_table(id, id_role, s_table_name) values (1, 7, 'mib_document');

insert into mib_category1(id, s_name) values (1, 'Зелёный');
insert into mib_category1(id, s_name) values (2, 'Красный');
insert into mib_category1(id, s_name) values (3, 'Жёлтый');
insert into mib_category1(id, s_name) values (4, 'Синий');

insert into mib_category2(id, s_name) values (1, 'Рожки');
insert into mib_category2(id, s_name) values (2, 'Жабры');
insert into mib_category2(id, s_name) values (3, 'Мех');

insert into mib_category3(id, s_name) values (1, 'Рептилоид');
insert into mib_category3(id, s_name) values (2, 'Гуманоид');
insert into mib_category3(id, s_name) values (3, 'Даэдра');

insert into mib_document(id, id_category1, id_category2, id_category3, s_field1, s_field2, s_field3, s_description)
    values (1, 1, 3, 2, 'Очень важная информация 1','Очень важная информация 2','Очень важная информация 3','Очень важное описание 1');
insert into mib_document(id, id_category1, id_category2, id_category3, s_field1, s_field2, s_field3, s_description)
    values (2, 3, 1, 1, 'Очень важная информация 4','Очень важная информация 5','Очень важная информация 6','Очень важное описание 2');

-- CREATE TABLE mib_role(
-- 	id NUMBER GENERATED BY DEFAULT AS IDENTITY,
-- 	s_name VARCHAR2,
-- 	PRIMARY KEY(id)
-- );
--
-- CREATE TABLE mib_user(
-- 	id NUMBER GENERATED BY DEFAULT AS IDENTITY,
-- 	id_role NUMBER NULL,
-- 	s_login VARCHAR2,
-- 	s_password VARCHAR2,
--
-- 	CONSTRAINT mib_user_id_role FOREIGN KEY (id_role) REFERENCES mib_role(id),
-- 	PRIMARY KEY(id)
-- );
--
-- CREATE TABLE mib_role_table(
-- 	id NUMBER GENERATED BY DEFAULT AS IDENTITY,
-- 	id_role NUMBER NULL,
-- 	s_table_name VARCHAR2,
--
-- 	CONSTRAINT mib_user_id_role FOREIGN KEY (id_role) REFERENCES mib_role(id),
-- 	PRIMARY KEY(id)
-- );
--
-- CREATE TABLE mib_category1(
-- 	id NUMBER GENERATED BY DEFAULT AS IDENTITY,
-- 	s_name VARCHAR2,
-- 	PRIMARY KEY(id)
-- );
--
-- CREATE TABLE mib_category2(
-- 	id NUMBER GENERATED BY DEFAULT AS IDENTITY,
-- 	s_name VARCHAR2,
-- 	PRIMARY KEY(id)
-- );
--
-- CREATE TABLE mib_category3(
-- 	id NUMBER GENERATED BY DEFAULT AS IDENTITY,
-- 	s_name VARCHAR2,
-- 	PRIMARY KEY(id)
-- );
--
-- CREATE TABLE mib_document(
-- 	id NUMBER GENERATED BY DEFAULT AS IDENTITY,
-- 	id_category1 NUMBER NULL,
-- 	id_category2 NUMBER NULL,
-- 	id_category3 NUMBER NULL,
-- 	s_field1 VARCHAR2,
-- 	s_field2 VARCHAR2,
-- 	s_field3 VARCHAR2,
--  s_description VARCHAR2,

-- 	CONSTRAINT mib_document_id_category1 FOREIGN KEY (id_category1) REFERENCES mib_category1(id),
-- 	CONSTRAINT mib_document_id_category2 FOREIGN KEY (id_category2) REFERENCES mib_category2(id),
-- 	CONSTRAINT mib_document_id_category3 FOREIGN KEY (id_category3) REFERENCES mib_category3(id),
-- 	PRIMARY KEY(id)
-- );

-- fill with initial data TODO: дополнить
