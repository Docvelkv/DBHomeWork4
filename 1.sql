-- Подсчитать общее количество лайков, которые получили пользователи младше 12 лет

USE semimar_4;
SELECT COUNT(media_id)
FROM likes AS l
WHERE l.media_id IN (SELECT m.id
FROM media AS m
WHERE m.user_id IN (SELECT p.user_id FROM profiles AS p
WHERE (YEAR(CURRENT_DATE) - YEAR(p.birthday)) - (RIGHT(CURRENT_DATE, 5) < RIGHT(p.birthday, 5)) < 12))