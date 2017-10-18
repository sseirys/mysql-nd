-- mysql -uroot -p 
CREATE DATABASE Books;
-- exit
-- mysql -uroot -p Books < Downloads/Books\ \(5\)
-- mysql -uroot -p Books
-- 3)a
INSERT INTO Authors (name) VALUES ('Jon Duckett');
INSERT INTO Authors (name) VALUES ('Robin Nixon');
INSERT INTO Authors (name) VALUES ('Davey Shafik');
INSERT INTO Authors (name) VALUES ('Matt Strauffer');
-- 3)b
INSERT INTO Books (authorId, title, year) VALUES (8, 'JavaScript and JQuery: Interactive Front-End Web Development', 2014);
INSERT INTO Books (authorId, title, year) VALUES (9, 'Learning PHP, MySQL & JavaScript: With jQuery, CSS & HTML5 (Learning Php, Mysql, Javascript, Css & Html5), 4th Edition', 2014);
INSERT INTO Books (authorId, title, year) VALUES (10, 'PHP Pocket Reference: PHP in your pocket, 3rd Edition', 2018);
INSERT INTO Books (authorId, title, year) VALUES (11, 'Laravel: Up and Running: A Framework for Building Modern PHP Apps', 2016);
-- 3)c kadangi nepasakyta isrinkti tik tas knygas, kurios turi autorius todel left join, kitaip butu inner
SELECT * FROM Books LEFT JOIN Authors ON Books.authorId = Authors.authorId;
-- 3)d
UPDATE Books SET authorId = 4 WHERE bookId = 2;
-- 3)e
-- neiskaitant knygu be autoriaus:
SELECT COUNT(*), Authors.name FROM Books INNER JOIN Authors ON Books.authorId = Authors.authorId GROUP BY Books.authorId;
-- visos knygos:
SELECT COUNT(*), Authors.name FROM Books LEFT JOIN Authors ON Books.authorId = Authors.authorId GROUP BY Books.authorId;
-- 3)f
DELETE FROM Authors WHERE authorId > 7;
-- 3)g
DELETE FROM Books WHERE authorId IS NULL OR authorId > 7;

