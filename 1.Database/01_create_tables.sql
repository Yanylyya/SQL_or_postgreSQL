create table books (
id int primary key,
title varchar, 
publication_year int,
pages int );
  
create table authors (
id int primary key,
name varchar, 
coutry varchar );
  
create table genres (
id int primary key,
name varchar);
  
create table languages (
id int primary key,
name varchar);

create table book_authors (
book_id int, 
authors_id int);
  
create table book_genres (
book_id int, 
genre_id int);

create table book_languages (
book_id int, 
language_id int)
