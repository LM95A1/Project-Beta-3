-- Crowdfunding Schema Creation Script

-- The following tables have been created in alphabetical order
-- to ease readability and maintenance. Makes things easier, yeah?
-- Tables listed: Campaign, Category, Contacts, Subcategory


-- Campaign Table

create table "campaign" (
    "cf_id" int   not null,
    "contact_id" int   not null,
    "company_name" varchar(100)   not null,
    "campaign_description" text   not null,
    "goal" numeric(10,2)   not null,
    "pledged" numeric(10,2)   not null,
    "outcome" varchar(50)   not null,
    "backers_count" int   not null,
    "country" varchar(10)   not null,
    "currency" varchar(10)   not null,
    "launch_date" date   not null,
    "end_date" date   not null,
    "category_id" varchar(10)   not null,
    "subcategory_id" varchar(10)   not null,
    constraint "pk_campaign" primary key (
        "cf_id"
     )
);

-- Category Table

create table "category" (
    "category_id" varchar(10)   not null,
    "category" varchar(50)   not null,
    constraint "pk_category" primary key (
        "category_id"
     )
);

-- Contacts Table

create table "contacts" (
    "contact_id" int   not null,
    "first_name" varchar(50)   not null,
    "last_name" varchar(50)   not null,
    "email" varchar(100)   not null,
    constraint "pk_contacts" primary key (
        "contact_id"
     )
);

-- Subcategory Table

create table "subcategory" (
    "subcategory_id" varchar(10)   not null,
    "subcategory" varchar(50)   not null,
    constraint "pk_subcategory" primary key (
        "subcategory_id"
     )
);

-- Foreign Key Constraints

alter table "campaign" add constraint "fk_campaign_contact_id" foreign key("contact_id")
references "contacts" ("contact_id");

alter table "campaign" add constraint "fk_campaign_category_id" foreign key("category_id")
references "category" ("category_id");

alter table "campaign" add constraint "fk_campaign_subcategory_id" foreign key("subcategory_id")
references "subcategory" ("subcategory_id");

-- Select Statements

select * from "campaign";
select * from "category";
select * from "contacts";
select * from "subcategory";
