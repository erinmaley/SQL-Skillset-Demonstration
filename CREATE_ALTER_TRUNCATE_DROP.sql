/*In this script, I will be demonstrating the foundational skillset of SQL features CREATE, ALTER, TRUNCATE, DROP*/

/*CREATE*/
/*Let's make a dataset for a bookstore tracking book sales*/
create table booksale(
        ID integer not null,
        book char(30),
        saleprice decimal(5,2),
        profit decimal(5,2),
        saledate date
        );
        
create table book(
        ID integer not null,
        book varchar(30),
        quantity integer
        );
        
insert into booksale values
        (1, 'The Lord of the Rings',23.93,5.23,'2023-05-29'),
        (2, 'Don Quixote',25.50, 4.92,'2023-06-01'),
        (3, 'A Tale of Two Cities', 18.66, 3.90,'2023-06-04'),
        (4, 'The Hobbit',15.99, 2.99,'2023-06-11'),
        (5, 'To Kill a Mockingbird',27.13,5.15,'2023-06-17');
        
insert into book values        
        (1, 'The Lord of the Rings', 5),
        (2, 'Don Quixote', 4),
        (3, 'To Kill a Mockingbird', 6);
        
     
select * from booksale;
select * from book;

/*ALTER*/
/*We are going to add a new quantity column to the booksale table and show the altered table.*/
alter table booksale
add column quantity integer;

select * from booksale;

/*Now we are going to updated the new quantity column of the booksale table with some ales and show the records of the table*/

update booksale set quantity = 9 where ID = 1;
update booksale set quantity = 3 where ID = 2;
update booksale set quantity = 2 where ID = 3;
update booksale set quantity = 6 where ID = 4;
update booksale set quantity = 24 where ID = 5;

select * from booksale;

/*Now we are going to delete the profit column from the booksale table and show the altered table*/
alter table booksale
drop column profit;

select * from booksale;

/*TRUNCATE*/
/*We will use the runcate statement to remove all rows from an existing table without deleting the table itself*/

truncate table book;

select * from book;

/* lets drop the book table now*/

drop table book;
