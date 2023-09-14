-- Create the Category Table
CREATE TABLE category (
    category_id VARCHAR PRIMARY KEY,
    category VARCHAR
);

-- Create the Subcategory Table
CREATE TABLE subcategory (
    subcategory_id VARCHAR PRIMARY KEY,
    subcategory VARCHAR
);

-- Create the Contacts Table
CREATE TABLE contacts (
    contact_id NUMERIC PRIMARY KEY,
    first_name VARCHAR,
    last_name VARCHAR,
    email VARCHAR
);

-- Create the Campaign Table
CREATE TABLE campaign (
    cf_id NUMERIC PRIMARY KEY,
    contact_id NUMERIC,
    company_name VARCHAR,
    description VARCHAR,
    goal DECIMAL,
    pledged DECIMAL,
    outcome VARCHAR,
    backers_count NUMERIC,
    country VARCHAR,
    currency VARCHAR,
    launched_date DATE,
    end_date DATE,
    category_id VARCHAR,
    subcategory_id VARCHAR,
    
    FOREIGN KEY (contact_id) REFERENCES contacts(contact_id),
    FOREIGN KEY (category_id) REFERENCES category(category_id),
    FOREIGN KEY (subcategory_id) REFERENCES subcategory(subcategory_id)
);



SELECT * from campaign

SELECT * from category

SELECT * from subcategory

SELECT * from contacts



