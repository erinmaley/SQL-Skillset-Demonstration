/*In this script, I will be demonstrating the foundational SQL skillset using INSERT, UPDATE, and DELETE*/ 
/*Software used: DbVisualizer
Database Used in this Lab: The databse losely comes from the following source, where some data was altered for the use of the skillset demonstration: https://publichealth.uic.edu/uic-covid-19-public-health-response/covid-19-maps-chicago-illinois/number-of-hospital-beds-in-chicago/
We will be using the same data table used in the last excercise*/

/*INSERT*/
/*Insert is used to add a new single row into our Illinois_Hospitals table*/
insert into Illinois_hospitals(hospital_id, name, city, Medical_Surgical_Beds, ICU)
values(7, 'Loretto Hospital', 'Chicago', 98, 12);

select * from Illinois_hospitals;

/*We can insert mulitple at one time*/
insert into Illinois_hospitals(hospital_id, name, city, Medical_Surgical_Beds, ICU)
values(8, 'Carle Richland Memorial Hospital', 'Olney', 71, 10),(9,'Northwestern Medicine Kishwaukee Hospital','DeKalb', 82, 14);

select * from Illinois_hospitals;

/*UPDATE*/
/*Update works as a way to replace certain data points in the table. Here we update Advocate Illinois Masonic Medical Center's number ICU Beds from 33 to 43*/
Update Illinois_hospitals
Set ICU=43
where name='Advocate Illinois Masonic Medical Center';

select * from Illinois_hospitals;

/*We can update multiple columns of an existing row of the table. In this example, we updates any hospital with '12' ICU beds to 15 and Medical and Surgical beds to 92*/
Update Illinois_hospitals
Set ICU=15, Medical_Surgical_Beds=92
where ICU=12;

select * from Illinois_hospitals;

/*DELETE*/
/*In this example, let's remove Carle Richland Memorial Hospital*/
delete from Illinois_hospitals
where hospital_id=8;

select * from Illinois_hospitals;