drop user bank cascade;
create user bank identified by bank;
grant dba to bank;
conn bank/bank
create table Bank
(
	Bank_Id nvarchar2(10),
	Bank_Detail nvarchar2(40)
);
create table Addresses
(
	Addres_id nvarchar2(30),
	Line_1 nvarchar2(10),
	Line_2 nvarchar2(10),
	Town_City nvarchar2(30),
	Zip_Code nvarchar2(20),
	Country nvarchar2(20),
	Other_Details nvarchar2(40)
);
create table Ref_Branch_Type
(
	Branch_Type_Code nvarchar2(40),
	Branch_Desc nvarchar2(30)
);
create table Branches
(
	Branch_Id nvarchar2(10),
	Address_Id nvarchar2(10),
	Bank_Id nvarchar2(10),
	Branch_Type_Code nvarchar2(30)
);
create table Customer
(
	Customer_Id nvarchar2(10),
	Address_Id nvarchar2(10),
	Branch_Id nvarchar2(10),
	Gender nvarchar2(40),
	Contact nvarchar2(30)
);
create table Ref_Account_Type
(
	Account_Type_Code nvarchar2(40),
	Account_Desc nvarchar2(30)
);
create table Accounts
(
	Account_Number nvarchar2(30),
	Customer_Id nvarchar2(10),
	Account_Status_Code nvarchar2(20),
	Account_Type_Code nvarchar2(20)
);
create table Dimtransactiontype
(
	Trans_Type_Code nvarchar2(20),
	Trans_Desc nvarchar2(30)
);
create table Transactions
(
	Transation_Id nvarchar2(10),
	Account_Number nvarchar2(40),
	Trans_Type_Code nvarchar2(30),
	Dt_Time nvarchar2(20),
	Transaction_Amount nvarchar2(20)
);
create table login
(
	id nvarchar2(10),
	pwd nvarchar2(10)
);
insert into login values('bank','bank');
commit;


