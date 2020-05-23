drop table critic_review;
drop table villagers;
drop table special_character;
drop table characters;
drop table sales_summary;
drop table user_reviews;
drop table items;


CREATE TABLE "critic_review" (
  "publication" varchar PRIMARY KEY,
  "grade" int,
  "date" varchar
);

CREATE TABLE "characters" (
  "version" VARCHAR,
  "characters" VARCHAR PRIMARY KEY,
  "species" VARCHAR(20),
  "description" text
);

CREATE TABLE "special_character" (
  "characters" varchar PRIMARY KEY,
  "Species" VARCHAR,
  "Birthday" VARCHAR,
  "service" VARCHAR
);

CREATE TABLE "sales_summary" (
  "version" VARCHAR PRIMARY KEY,
  "year" integer,
  "units_sold" decimal,
  "critic_score" integer
);

CREATE TABLE "villagers" (
  "characters" VARCHAR(50) PRIMARY KEY,
  "gender" VARCHAR(6),
  "species" VARCHAR(10),
  "birthday" VARCHAR(20),
  "personality" VARCHAR(10),
  "song" VARCHAR(200),
  "phrase" VARCHAR(20)
);

CREATE TABLE "user_reviews" (
  "serial_id" serial,
  "grade" int,
  "text" text,
  "date" VARCHAR(20)
);

CREATE TABLE "items" (
  "num_id" integer PRIMARY KEY,
  "name" text,
  "category" VARCHAR(20),
  "sell_value" decimal,
  "sell_currency" VARCHAR(10),
  "buy_value" decimal,
  "buy_currency" VARCHAR(10)
);

ALTER TABLE "special_character" ADD FOREIGN KEY ("characters") REFERENCES "characters" ("characters");

ALTER TABLE "villagers" ADD FOREIGN KEY ("characters") REFERENCES "characters" ("characters");


