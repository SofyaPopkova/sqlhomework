ДЗ №1, в консоли:

C:\Users\sunch>psql -U postgres
Пароль пользователя postgres:
psql (13.2)
ПРЕДУПРЕЖДЕНИЕ: Кодовая страница консоли (866) отличается от основной
                страницы Windows (1251).
                8-битовые (русские) символы могут отображаться некорректно.
                Подробнее об этом смотрите документацию psql, раздел
                "Notes for Windows users".
Введите "help", чтобы получить справку.

postgres=# exit

C:\Users\sunch>chcp 1251
Текущая кодовая страница: 1251

C:\Users\sunch>psql -U postgres
Пароль пользователя postgres:
psql (13.2)
Введите "help", чтобы получить справку.

postgres=# create user testuser with password '______';
CREATE ROLE
postgres=# create database music_site with owner testuser;
CREATE DATABASE
postgres=# exit

C:\Users\sunch>psql -U testuser -d music_site
Пароль пользователя testuser:
psql (13.2)
Введите "help", чтобы получить справку.

music_site=> create table Jenres(
music_site(> id serial primary key,
music_site(> name varchar(60) not null unique
music_site(> );
CREATE TABLE
music_site=> create table if not exists Musicians(
music_site(> id serial primary key,
music_site(> name varchar(200) not null,
music_site(> jenres_id integer references Jenres(id) not null
music_site(> );
CREATE TABLE
music_site=> create table if not exists Albums(
music_site(> id serial primary key,
music_site(> name varchar(200) not null,
music_site(> year integer check(year > 0) not null,
music_site(> musicians_id integer references Musicians(id) not null
music_site(> );
CREATE TABLE
music_site=> create table if not exists Tracks(
music_site(> id serial primary key,
music_site(> name varchar(400) not null,
music_site(> length integer check(length > 0) not null,
music_site(> albums_id integer references Albums(id) not null
music_site(> );
CREATE TABLE

ДЗ №2, в pgadmin:

alter table musicians
drop column jenres_id;
alter table albums
drop column musicians_id;

create table if not exists Jenres_musicians(
jenres_id integer references Jenres(id),
musicians_id integer references Musicians(id),
constraint pk primary key (jenres_id, musicians_id)
);

create table if not exists Musicians_albums(
musicians_id integer references Musicians(id),
albums_id integer references Albums(id),
constraint prim_key primary key (musicians_id, albums_id)
);

create table if not exists Collections(
id serial primary key,
name varchar(200) not null,
year integer check(year > 0) not null
);

create table if not exists Collections_tracks(
collections_id integer references Collections(id),
tracks_id integer references Tracks(id),
constraint pri_key primary key (collections_id, tracks_id)
);
