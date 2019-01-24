install.packages("RMySQL")
library(RMySQL)
mydb=dbConnect(MySQL(),user='root',password='',host='localhost',dbname="GCT")

dbSendQuery(mydb,"CREATE TABLE books(book_id INT,title VARCHAR(50));")

dbListTables(mydb)
dbSendQuery(mydb,"ALTER TABLE books CHANGE COLUMN book_id book_id INT AUTO_INCREMENT PRIMARY KEY,ADD COLUMN author_id INT,ADD COLUMN describtion TEXT,
ADD COLUMN genre ENUM('novel','poetry','tutorials','text','other'),
            ADD COLUMN publisher_id INT,
            ADD COLUMN pub_year VARCHAR(4),
            ADD COLUMN isbn VARCHAR(20);")

dbSendQuery(mydb,"CREATE TABLE authors(author_id INT AUTO_INCREMENT PRIMARY KEY,
            author_last VARCHAR(50),
            author_first VARCHAR(50),
            country VARCHAR(50));")
dbSendQuery(mydb,"INSERT INTO authors (author_last,author_first,country)
            VALUES('Kumar','dinesh','India'));"
            
            