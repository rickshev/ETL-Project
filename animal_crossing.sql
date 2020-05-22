--creating table critic_review
CREATE TABLE critic_review
(
    grade int not null,
    publication VARCHAR(100) primary key ,
    date VARCHAR(20)
)

drop table characters
CREATE TABLE characters
(
    "Character" varchar(100) primary key,
    "Species" VARCHAR(20),
    "Description" VARCHAR(200)
  
)


---create table special_characters
CREATE TABLE special_characters
(
    "Name" varchar(100) Primary Key,
    "Species" VARCHAR(20),
    "Birthday" VARCHAR(200),
    service VARCHAR(100)
  
)

-- DROP TABLE sales_summary;
CREATE TABLE sales_summary
(
    "Name" VARCHAR,
    "Year." integer,
    "Units_Sold" decimal,
    "Critic_Score" integer"
)

-- DROP TABLE villagers;
CREATE TABLE villagers
(
    name VARCHAR(50) Primary Key,
    gender VARCHAR(6),
    species VARCHAR(10),
    birthday VARCHAR(20),
    personality VARCHAR(10),
    song VARCHAR(200),
    phrase VARCHAR(20)
)

-- DROP TABLE user_reviews;
CREATE TABLE user_reviews
(
    grade int,
    "text" VARCHAR(100),
    date VARCHAR(20)
    )



# items table
-- DROP TABLE items;
CREATE TABLE items
(
    num_id integer,
    "name" VARCHAR(20),
    category VARCHAR(20),
    sell_value decimal,
    sell_currency VARCHAR(10),
    buy_value decimal,
    buy_currency VARCHAR(10),
)

__________________________________________________________________________________________________________________________________________
--comparison of critic review b/w Kaggle and Wiki

select * from critic_review;

select (sum(distinct grade )/count(distinct grade)) as critic_score_from_kaggle 
from critic_review1 
union all
select cast((substring("Critic_Score" ,1,2) ) as integer) as critic_score_from_Wiki
from sales_summary where "Name"='Animal Crossing: New Horizons' 