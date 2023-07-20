-- Определить кто больше поставил лайков (всего): мужчины или женщины

USE semimar_4;
SELECT IF(
(SELECT COUNT(l.user_id) FROM likes AS l
WHERE l.user_id IN (SELECT p.user_id AS female FROM profiles AS p
WHERE p.gender = 'f')) > (SELECT (COUNT(l.user_id) - (SELECT COUNT(l.user_id) FROM likes AS l
WHERE l.user_id IN (SELECT p.user_id AS female FROM profiles AS p
WHERE p.gender = 'f'))) FROM likes AS l), 'Больше лайкнули женщины', 'Больше лайкнули мужчины') AS 'Кто больше лайкнул?'