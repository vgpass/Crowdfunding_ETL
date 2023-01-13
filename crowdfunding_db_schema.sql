

CREATE TABLE "category" (
    "category_id" varchar(100)   NOT NULL,
    "category" varchar(100)   NOT NULL,
    CONSTRAINT "pk_category" PRIMARY KEY (
        "category_id"
     )
);

CREATE TABLE "subcategory" (
    "subcategory_id" varchar(100)   NOT NULL,
    "subcategory" varchar(100)   NOT NULL,
    CONSTRAINT "pk_subcategory" PRIMARY KEY (
        "subcategory_id"
     )
);

CREATE TABLE "contact" (
    "contact_id" INT   NOT NULL,
    "first_name" varchar(100)   NOT NULL,
    "last_name" varchar(100)   NOT NULL,
    "email" varchar(100)   NOT NULL,
    CONSTRAINT "pk_contact" PRIMARY KEY (
        "contact_id"
     )
);

CREATE TABLE "campaign" (
    "cf_id" INT   NOT NULL,
    "contact_id" INT   NOT NULL,
    "company_name" varchar(100)   NOT NULL,
    "description" varchar(100)   NOT NULL,
    "goal" float   NOT NULL,
    "pledged" float   NOT NULL,
    "outcome" varchar(50)   NOT NULL,
    "backers_count" INT   NOT NULL,
    "country" varchar(100)   NOT NULL,
    "currency" varchar(100)   NOT NULL,
    "launched_date" varchar(100)   NOT NULL,
    "end_date" varchar(100)   NOT NULL,
    "category_id" varchar(100)   NOT NULL,
    "subcategory_id" varchar(100)   NOT NULL,
    CONSTRAINT "pk_campaign" PRIMARY KEY (
        "contact_id"
     )
);


ALTER TABLE "campaign" ADD CONSTRAINT "fk_campaign_category_id" FOREIGN KEY("category_id")
REFERENCES "category" ("category_id");

ALTER TABLE "campaign" ADD CONSTRAINT "fk_campaign_subcategory_id" FOREIGN KEY("subcategory_id")
REFERENCES "subcategory" ("subcategory_id");

ALTER TABLE "campaign" ADD CONSTRAINT "fk_campaign_contact_id" FOREIGN KEY("contact_id")
REFERENCES "contact" ("contact_id");

select * from campaign;
select * from category;
select * from subcategory;
select * from contact;