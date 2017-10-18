-- 4)a
CREATE TABLE IF NOT EXISTS `Genres` (`genreId` int(11) NOT NULL AUTO_INCREMENT, `genre` varchar(255) NOT NULL, PRIMARY KEY (`genreId`));
ALTER TABLE Books ADD genreId int(11) NOT NULL AFTER bookId;
INSERT INTO Genres (genre) VALUES ('Programming');
INSERT INTO Genres (genre) VALUES ('Networking');
INSERT INTO Genres (genre) VALUES ('Other');
UPDATE Books SET genreId=1 WHERE bookId=1;
UPDATE Books SET genreId=1 WHERE bookId=2;
UPDATE Books SET genreId=2 WHERE bookId=3;
UPDATE Books SET genreId=1 WHERE bookId=4;
UPDATE Books SET genreId=1 WHERE bookId=5;
-- 4)b, c
ALTER TABLE Authors ADD bookId int(11) NOT NULL AFTER authorId;
UPDATE Authors SET bookId=1 WHERE authorId=1;
UPDATE Authors SET bookId=2 WHERE authorId=3;
UPDATE Authors SET bookId=2 WHERE authorId=5;
UPDATE Authors SET bookId=3 WHERE authorId=4;
UPDATE Authors SET bookId=4 WHERE authorId=6;
UPDATE Authors SET bookId=5 WHERE authorId=7;
ALTER TABLE Books DROP COLUMN authorId;
-- 4)d 
SELECT Books.bookId, Books.title, Books.year, GROUP_CONCAT(Authors.name) AS Authors FROM Books LEFT JOIN Authors ON Books.bookId = Authors.bookId GROUP BY bookId;
-- 4)e
ALTER TABLE Books CONVERT TO CHARACTER SET utf8 COLLATE utf8_general_ci;
ALTER TABLE Authors CONVERT TO CHARACTER SET utf8 COLLATE utf8_general_ci;
INSERT INTO Books (title, year, genreId) VALUES ('Motina - auklėtoja', 1926, 3);
INSERT INTO Authors (name, bookId) VALUES ('Šatrijos Raganėlė', 13);
