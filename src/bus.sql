#drop database if exists bus;
#create database bus default character set utf8;
#use bus;
use d60468adbba03455ab741222ebe872fe2;
drop table if exists bus;
drop table if exists busCompany;
drop table if exists busMoney;
drop table if exists busNews;
drop table if exists busPad;
drop table if exists busRoute;
drop table if exists busSpot;
drop table if exists busType;
drop table if exists manager;
drop table if exists resort;
drop table if exists routeType;
drop table if exists route_busType;
drop table if exists spot_route;
drop table if exists things;
drop table if exists vipUser;

create table bus (
	ID bigint not null auto_increment, 
	bus_pad bigint, 
	bus_route bigint, 
	bus_company bigint, 
	bus_type bigint, 
	bus_number varchar(50), 
	bus_manager varchar(50), 
	bus_phone varchar(50), 
	bus_date varchar(23), 
	primary key (ID));

create table busCompany (
	ID bigint not null auto_increment, 
	com_name varchar(50), 
	com_manager varchar(50), 
	com_busNumber integer, 
	com_memo varchar(250), 
	primary key (ID));

create table busMoney (
	ID bigint not null auto_increment, 
	money_num double precision, 
	primary key (ID));

create table busNews (
	ID bigint not null auto_increment, 
	news_routeNum bigint, 
	news_title varchar(50), 
	news_content text, 
	news_date varchar(50), 
	news_publisher varchar(50), 
	news_publisherPhone varchar(50), 
	primary key (ID));

create table busPad (
	ID bigint not null auto_increment, 
	pad_name varchar(50), 
	pad_memo varchar(250), 
	primary key (ID));

create table busRoute (
	ID bigint not null auto_increment, 
	route_type bigint, 
	route_company bigint, 
	route_name varchar(50), 
	route_manager varchar(50), 
	route_managerPhone varchar(50), 
	primary key (ID));

create table busSpot (
	ID bigint not null auto_increment, 
	spot_name varchar(50), 
	primary key (ID));

create table busType (
	ID bigint not null auto_increment, 
	type_money bigint, 
	type_name varchar(50), 
	type_memo varchar(250), 
	primary key (ID));

create table manager (
	ID bigint not null auto_increment, 
	man_loginName varchar(50), 
	man_loginPass varchar(50), 
	man_right integer, 
	man_realName varchar(50), 
	man_phone varchar(50), 
	man_loginDate varchar(23), 
	primary key (ID));

insert into manager values(ID,'admin','admin',1,'admin','13012345678',null);

create table resort (
	ID bigint not null auto_increment, 
	resort_routeNum bigint, 
	resort_title varchar(50), 
	resort_content text, 
	resort_date varchar(23), 
	resort_people varchar(50), 
	resort_peoplePhone varchar(50), 
	resort_flag integer, 
	resort_answer text, 
	resort_ansDate varchar(23), 
	resort_ansPeople varchar(50), 
	primary key (ID));

create table routeType (
	ID bigint not null auto_increment, 
	routeType_name varchar(50), 
	routeType_memo varchar(250), 
	primary key (ID));

create table route_busType (
	ID bigint not null auto_increment, 
	busType bigint, 
	routeType bigint, 
	primary key (ID));

create table spot_route (
	ID bigint not null auto_increment, 
	stop bigint, 
	route bigint, 
	position integer, 
	flag integer,
	primary key (ID));

create table things (
	ID bigint not null auto_increment, 
	thing_routeNum bigint, 
	thing_name varchar(50), 
	thing_date varchar(23), 
	thing_detail varchar(250), 
	thing_people varchar(50), 
	thing_peoplePhone varchar(50), 
	thing_image varchar(50), 
	thing_flag integer, 
	primary key (ID));

create table vipUser (
	ID bigint not null auto_increment, 
	vip_loginName varchar(50), 
	vip_loginPass varchar(50), 
	vip_realName varchar(50), 
	vip_address varchar(50), 
	vip_phone varchar(50), 
	vip_loginNum integer, 
	vip_loginDate varchar(50),
	vip_registerDate varchar(50), 
	primary key (ID));

alter table bus add index FK17E804B7D9026 (bus_pad), add constraint FK17E804B7D9026 foreign key (bus_pad) references busPad (ID);
alter table bus add index FK17E802438CF74 (bus_type), add constraint FK17E802438CF74 foreign key (bus_type) references busType (ID);
alter table bus add index FK17E80629FD392 (bus_route), add constraint FK17E80629FD392 foreign key (bus_route) references busRoute (ID);
alter table bus add index FK17E8061927FA (bus_company), add constraint FK17E8061927FA foreign key (bus_company) references busCompany (ID);
alter table busNews add index FKE433D7338E82C51 (news_routeNum), add constraint FKE433D7338E82C51 foreign key (news_routeNum) references busRoute (ID);
alter table busRoute add index FKBA6153A98F6A82C3 (route_company), add constraint FKBA6153A98F6A82C3 foreign key (route_company) references busCompany (ID);
alter table busRoute add index FKBA6153A94420BC54 (route_type), add constraint FKBA6153A94420BC54 foreign key (route_type) references routeType (ID);
alter table busType add index FKE4641DA7982CDBA (type_money), add constraint FKE4641DA7982CDBA foreign key (type_money) references busMoney (ID);
alter table resort add index FKC84DB2515A6F9293 (resort_routeNum), add constraint FKC84DB2515A6F9293 foreign key (resort_routeNum) references busRoute (ID);
alter table route_busType add index FK640241E417C615E7 (routeType), add constraint FK640241E417C615E7 foreign key (routeType) references routeType (ID);
alter table route_busType add index FK640241E47772C395 (busType), add constraint FK640241E47772C395 foreign key (busType) references busType (ID);
alter table spot_route add index FK467AC4CC695367A5 (stop), add constraint FK467AC4CC695367A5 foreign key (stop) references busSpot (ID);
alter table spot_route add index FK467AC4CCC0FAD211 (route), add constraint FK467AC4CCC0FAD211 foreign key (route) references busRoute (ID);
alter table things add index FKCBDD194569A06096 (thing_routeNum), add constraint FKCBDD194569A06096 foreign key (thing_routeNum) references busRoute (ID);
