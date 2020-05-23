**#ANIMAL CROSSING**

![AnimalCrossingimg2](https://vignette.wikia.nocookie.net/animalcrossing/images/4/4c/Poncho_NewLeaf_Official.png/revision/latest?cb=20130721204234)

The ETL (EXTRACT--TRANFORM--LOAD) project aims to use Pandas, PostGreSQL, and SQLAlchemy among other programming languages to scrape a website and profile the relevant data to tell a story. Our story involves a prime source of comfort, wholesome DIY crafts, and adorable anthromorphic villagers: Animal Crossing.  

Animal Crossing is a video game created by Nintendo which lets a user create their own village and interact with characters of different species, personality types, and catch phrases. Our primary datasources were Kaggle, Wiki, and AnimalCrossing.fandom. The URLs are listed below, however we utilized 4 additional data sources from Kaggle as CSVs.  

*url1 = 'https://en.wikipedia.org/wiki/Animal_Crossing'*

*url2 = 'https://en.wikipedia.org/wiki/Characters_in_the_Animal_Crossing_series'*

*url3=  'https://animalcrossing.fandom.com/wiki/Category:Special_characters'*

These websites and CSVs helped execute the first part of the project: Extract.

![AnimalCrossingimg](https://media.wired.com/photos/5e8cebbda231050008136013/master/w_2560%2Cc_limit/animal-crossing-history-wired.jpg)

***Extract*** - We used pandas dataframes to read the above urls and CSV files from Kaggle, and extracted the columns we wanted to portray in jupyter notebook. These columns contained additional information apart from the above listed qualities such as villager songs, villager birthdays, and names. Once we had this data we realized that there were duplicates due to the multiple versions of the game, which led us to step II. 

***Transform*** - To transform the data, we used various Pandas functions like drop.duplicates, dropna to filter for duplicates and scrub the data so that the information we had was relevant to our project. We concatenated character information from the 5 tables scraped from Url2 to create one unique dataset. We additionally used string.split to clean the Wikepedia references in our sales summary dataframe so that we that we had number data types on Units Sold and Critic Score. Now that we had clean and relevant data, we move on to step III.

***Load*** - To get an idea of where we needed to load our database, we needed to sketch a database diagram using dbdiagram.io. This structured our tables with appropriate primary key and foreign key relationships between character, special character, and villagers tables before we executed our database schema on PostgreSQL. Once we had table schemata, we created the tables and columns and loaded all the data into the database in PostgreSQL. SQLAlchemy was a tool we used to move our data into the tables we created using the to.sql commands. We were able to execute various queries (select *), JOIN, and UNION ALL to analyze the data further. 

In conclusion, this project helped us learn how the end-end process of ETL works and we enjoyed doing it :). 
