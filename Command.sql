-- Commands for creating tables and Stored Procedure

--Table:- stg.Customer

create table stg.Customer (Customer_Name VARCHAR(255) Not Null,
Customer_ID VARCHAR(18) Not Null,
Customer_Open_Date DATE Not Null,
Last_Consulted_Date DATE ,
Vaccination_Type CHAR(5),
Doctor_Consulted CHAR(255),
State CHAR(5),
Country CHAR(5),
Post_Code INT,
Date_of_Birth DATE  ,
Active_Customer CHAR(1),
Primary key (Customer_Name)
);


--Table:- table dm.Customer_NYC 

create table dm.Customer_NYC (Customer_Name VARCHAR(255) Not Null,
Customer_ID VARCHAR(18) Not Null,
Customer_Open_Date DATE Not Null,
Last_Consulted_Date DATE ,
Vaccination_Type CHAR(5),
Doctor_Consulted CHAR(255),
State CHAR(5),
Country CHAR(5),
Post_Code INT,
Date_of_Birth DATE  ,
Active_Customer CHAR(1),
Primary key (Customer_Name)
);


--Table:- dm.Customer_USA

create table dm.Customer_USA (Customer_Name VARCHAR(255) Not Null,
Customer_ID VARCHAR(18) Not Null,
Customer_Open_Date DATE Not Null,
Last_Consulted_Date DATE ,
Vaccination_Type CHAR(5),
Doctor_Consulted CHAR(255),
State CHAR(5),
Country CHAR(5),
Post_Code INT,
Date_of_Birth DATE  ,
Active_Customer CHAR(1),
Primary key (Customer_Name)
);


--Table:- dm.Customer_IND

create table dm.Customer_IND (Customer_Name VARCHAR(255) Not Null,
Customer_ID VARCHAR(18) Not Null,
Customer_Open_Date DATE Not Null,
Last_Consulted_Date DATE ,
Vaccination_Type CHAR(5),
Doctor_Consulted CHAR(255),
State CHAR(5),
Country CHAR(5),
Post_Code INT,
Date_of_Birth DATE  ,
Active_Customer CHAR(1),
Primary key (Customer_Name)
);


--Table:- dm.Customer_PHIL

create table dm.Customer_PHIL (Customer_Name VARCHAR(255) Not Null,
Customer_ID VARCHAR(18) Not Null,
Customer_Open_Date DATE Not Null,
Last_Consulted_Date DATE ,
Vaccination_Type CHAR(5),
Doctor_Consulted CHAR(255),
State CHAR(5),
Country CHAR(5),
Post_Code INT,
Date_of_Birth DATE  ,
Active_Customer CHAR(1),
Primary key (Customer_Name)
);


--Table:- dm.Customer_AU

create table dm.Customer_AU (Customer_Name VARCHAR(255) Not Null,
Customer_ID VARCHAR(18) Not Null,
Customer_Open_Date DATE Not Null,
Last_Consulted_Date DATE ,
Vaccination_Type CHAR(5),
Doctor_Consulted CHAR(255),
State CHAR(5),
Country CHAR(5),
Post_Code INT,
Date_of_Birth DATE  ,
Active_Customer CHAR(1),
Primary key (Customer_Name)
);


--Stored Procedure:- dm.Divide_Customer_Based_On_Country

CREATE PROCEDURE dm.Divide_Customer_Based_On_Country
AS

Insert into dm.Customer_AU select * from [stg].[Customer] where Country = 'AU';
Insert into dm.Customer_USA select * from [stg].[Customer] where Country = 'USA';
Insert into dm.Customer_IND select * from [stg].[Customer] where Country = 'IND';
Insert into dm.Customer_WAS select * from [stg].[Customer] where Country = 'WAS';
Insert into dm.Customer_NYC select * from [stg].[Customer] where Country = 'NYC';

GO

--Stored Procedure:- stg.Truncate_Customer

CREATE PROCEDURE stg.Truncate_Customer
AS

truncate table [stg].[Customer];
GO