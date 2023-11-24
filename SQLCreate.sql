use DB114;

CREATE TABLE location (
	lcode int not null primary key,
	lname varchar(80),
	population int,
	av_income money
)

CREATE TABLE customer (
    customer_id int not null primary key,
	name varchar(80) ,
    last_name varchar(80) ,
    SSN varchar(17) not null unique,
	city varchar(80),
	zip_code varchar(10),
	street varchar(80),
	number int,
    lcode int foreign key references location
)

CREATE TABLE customerPhones (
	customer_id int not null,
	phone_number varchar(10) not null,
	CONSTRAINT CP_P PRIMARY KEY (customer_id, phone_number),
	CONSTRAINT CP_F FOREIGN KEY (customer_id) REFERENCES customer
)

CREATE TABLE store (
    scode int not null primary key,
	name varchar(60) not null,
	s_type int,
    lcode int foreign key references location
)


CREATE TABLE bank_account (
	account_id int not null primary key,
	date date,
	balance money,
	branch_store varchar(80)
)

CREATE TABLE savings_account (
	account_id int not null primary key,
	interest_rate real, 
	foreign key (account_id) references bank_account
)

CREATE TABLE current_account (
	account_id int not null primary key,
	overdraft_amount money,
	foreign key (account_id) references bank_account
)

CREATE TABLE account_owner (
	customer_id int,
	account_id int,
	CONSTRAINT AO_P PRIMARY KEY (customer_id, account_id),
    CONSTRAINT AO_F FOREIGN KEY (customer_id) REFERENCES customer,
    CONSTRAINT AO_FK FOREIGN KEY (account_id) REFERENCES bank_account
)


CREATE TABLE credit_card (
	id int not null primary key,
	date_of_issue date,
	expiration_date date,
	balance money,
	credit_limit money,
	borrowing_rate real, 
	customer_id int foreign key references customer,
	account_id int foreign key references bank_account
)

CREATE TABLE transactions (
	UCN int not null primary key,
	amount money,
	bank_code int,
	pay_date datetime,
	scode int foreign key references store,
	id int foreign key references credit_card
)

CREATE TABLE card_payment (
    customer_id int not null,
	payment_number int not null,
	payment_date date,
    payment_amount money,
	primary key (customer_id, payment_number),
	foreign key (customer_id) references customer
)

