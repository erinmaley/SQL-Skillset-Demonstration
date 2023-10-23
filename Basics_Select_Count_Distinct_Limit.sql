/*In this script, I will be demonsating the foundational SQL skills including SELECT, COUNT, DISTINCT, AND LIMIT.

Software used: DbVisualizer
Database Used in this Lab: The databse losely comes from the following source, where some data was altered for the use of the skillset demonstration: https://publichealth.uic.edu/uic-covid-19-public-health-response/covid-19-maps-chicago-illinois/number-of-hospital-beds-in-chicago/*/
create table Illinois_Hospitals
(
hospital_id                      integer not null,
name                             text,
city                             text,
Medical_Surgical_Beds            integer not null,
ICU Beds                         integer not null
);

insert into Illinois_Hospitals values 
(1,'Advocate Illinois Masonic Medical Center', 'Chicago', 225,33),
(2,'Community First Medical Center', 'Chicago', 210, 20),
(3,'Evanston Hosptial','Evanston', 89, 12),
(4,'Northwest Community Hospital', 'Arlington Heights', 356, 132),
(5,'Loyola University Medical Center', 'Maywood', 56, 15),
(6,'Trinity Rock Island', 'Rock Island', 289, 30);

/*SELECT*/
/* In this example, I retrieve comprehensive details of all hospitals from the 'Illinois_Hospitals' table, encompassing all available columns*/
select * from Illinois_Hospitals;

/*Moving forward, I can use the select command to also see selective details of the table. Say I want to see soley the hopsital name and city it is located*/
select name, city from Illinois_Hospitals;

/*If I wish to focus exclusively on hospitals located in Chicago, I can achieve this by using the following commandd*/
select name, city from Illinois_Hospitals where city = 'Chicago';

/*If I were a medical student aspiring to apply for residencies at hospitals with more surgical beds, potentially boosting my chances of performing surgery, I'd employ the following command*/
select name, city, Medical_Surgical_Beds from Illinois_Hospitals where Medical_Surgical_Beds>=200;

/*COUNT*/
/*Using the COUNT feature, I can find how many hospitals have a high number of ICU beds*/
select count(ICU) from Illinois_Hospitals where ICU>15;

/*We can also find the count of hospitals in Chicago*/
select count(name) from Illinois_Hospitals where city='Chicago';

/*DISTINCT*/
/*We use the distinct feature when we want to retrieve data in a way hat dupicates will not disrupt the output*/
select distinct city from Illinois_Hospitals;

/*How many different locations are there in total in the dataset*/
select count(distinct city) from Illinois_Hospitals;

/*LIMIT*/
/*We use limit to retrieve a specific number of rows from the table. In this example, 2 signifies the top 2 rows from the table*/
select * from Illinois_Hospitals limit 2;

/*We can start from a different row using the command OFFSET. Here we retriece 4 rows starting at row 3*/
select * from Illinois_Hospitals limit 4 offset 2;
