CREATE TABLE Category (
    category_id varchar(20) PRIMARY KEY,
    category varchar(50) NOT NULL
);

CREATE TABLE Subcategory (
    subcategory_id varchar(20) PRIMARY KEY,
    subcategory varchar(50) NOT NULL
);

CREATE TABLE Contacts (
    contact_id int  PRIMARY KEY,
    first_name varchar(50)   NOT NULL,
    last_name varchar(50)   NOT NULL,
    email varchar(100)   NOT NULL
);

CREATE TABLE Campaign (
    cf_id int  PRIMARY KEY,
    contact_id int   NOT NULL,
    company_name varchar   NOT NULL,
    description varchar   NOT NULL,
    goal float   NOT NULL,
    pledged float   NOT NULL,
    outcome varchar   NOT NULL,
    backers_count int   NOT NULL,
    country varchar   NOT NULL,
    currency varchar   NOT NULL,
    launch_date date   NOT NULL,
    end_date date   NOT NULL,
    category_id varchar   NOT NULL,
    subcategory_id varchar   NOT NULL,
	FOREIGN KEY (contact_id) REFERENCES Contacts(contact_id),	
	FOREIGN KEY (category_id) REFERENCES Category(category_id),	
	FOREIGN KEY (subcategory_id) REFERENCES Subcategory(subcategory_id)
);