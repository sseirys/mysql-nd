-- 1)
SELECT COUNT(DISTINCT userId) AS UniqueUserCount, MONTH(dateTime) AS Month FROM UserClicks WHERE YEAR(dateTime) = YEAR(CURDATE()) GROUP BY Month;
-- 2)
SELECT *, TIMESTAMPDIFF(YEAR, birthDate, CURDATE()) AS Age FROM Clients WHERE MONTH(birthDate) = MONTH(CURDATE()) AND DAY(birthDate) = DAY(CURDATE());
-- 3)
SELECT * FROM News n LEFT JOIN Comments c ON c.newsId = n.newsId WHERE (c.commentId IS NULL OR c.commentId = (SELECT c2.commentId FROM Comments c2 WHERE c2.newsId = n.newsId ORDER BY c2.date DESC LIMIT 1)) ORDER BY n.date DESC LIMIT 10;



