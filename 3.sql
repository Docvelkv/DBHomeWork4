-- Вывести всех пользователей, которые не отправляли сообщения

USE semimar_4;
SELECT id, firstname, lastname FROM users
WHERE id NOT IN (SELECT from_user_id FROM messages)