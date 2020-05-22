-- Exported from QuickDBD: https://www.quickdatabasediagrams.com/
-- Link to schema: https://app.quickdatabasediagrams.com/#/d/EEUwWG
-- NOTE! If you have used non-SQL datatypes in your design, you will have to change these here.

-- Modify this code to update the DB schema diagram.
-- To reset the sample schema, replace everything with
-- two dots ('..' - without quotes).

CREATE TABLE  walmart_stores  (
     zipcode  INT   NOT NULL,
     store_count  INT   NOT NULL,
     population  DECIMAL   NOT NULL,
     poverty_count  DECIMAL   NOT NULL,
     poverty_rate  DECIMAL   NOT NULL
);

CREATE TABLE  store_counts  (
     zipcode  INT   NOT NULL,
     store_count  INT   NOT NULL,
    CONSTRAINT  pk_store_counts  PRIMARY KEY (
         zipcode 
     )
);

ALTER TABLE  walmart_stores  ADD CONSTRAINT  fk_walmart_stores_zipcode  FOREIGN KEY( zipcode )
REFERENCES  store_counts  ( zipcode );

