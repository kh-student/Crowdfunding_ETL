-- Exported from QuickDBD: https://www.quickdatabasediagrams.com/
-- NOTE! If you have used non-SQL datatypes in your design, you will have to change these here.


CREATE TABLE "Category" (
    "category_id" VARCHAR(10)   NOT NULL,
    "category" VARCHAR(50)   NOT NULL,
    CONSTRAINT "pk_Category" PRIMARY KEY (
        "category_id"
     )
);

CREATE TABLE "Subcategory" (
    "subcategory_id" VARCHAR(15)   NOT NULL,
    "subcategory" VARCHAR   NOT NULL,
    CONSTRAINT "pk_Subcategory" PRIMARY KEY (
        "subcategory_id"
     )
);

CREATE TABLE "Contact" (
    "contact_id" INT   NOT NULL,
    "first_name" VARCHAR(50)   NOT NULL,
    "last_name" VARCHAR(50)   NOT NULL,
    "email" VARCHAR   NOT NULL,
    CONSTRAINT "pk_Contact" PRIMARY KEY (
        "contact_id"
     )
);

CREATE TABLE "Campaign" (
    "cf_id" INT   NOT NULL,
    "contact_id" INT   NOT NULL,
    "category_id" VARCHAR(50)   NOT NULL,
    "subcategory_id" VARCHAR(50)   NOT NULL,
    "campaign_id" INT   NOT NULL,
    "company_name" VARCHAR(100)   NOT NULL,
    "description" VARCHAR(500)   NOT NULL,
    "goal" INT   NOT NULL,
    "pledged" INT   NOT NULL,
    "outcome" VARCHAR(15)   NOT NULL,
    "backers_count" INT   NOT NULL,
    "country" VARCHAR(5)   NOT NULL,
    "currency" VARCHAR(5)   NOT NULL,
    "launched_date" DATETIME   NOT NULL,
    "end_date" DATETIME   NOT NULL,
    "amount" DEC   NOT NULL,
    "cd_date" DATETIME   NOT NULL,
    CONSTRAINT "pk_Campaign" PRIMARY KEY (
        "cf_id"
     )
);

ALTER TABLE "Category" ADD CONSTRAINT "fk_Category_category_id" FOREIGN KEY("category_id")
REFERENCES "Campaign" ("category_id");

ALTER TABLE "Subcategory" ADD CONSTRAINT "fk_Subcategory_subcategory_id" FOREIGN KEY("subcategory_id")
REFERENCES "Campaign" ("subcategory_id");

ALTER TABLE "Campaign" ADD CONSTRAINT "fk_Campaign_contact_id" FOREIGN KEY("contact_id")
REFERENCES "Contact" ("contact_id");

