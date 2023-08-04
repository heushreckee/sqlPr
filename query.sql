----1. Вывести все компании, у которых рейтинг выше 4.

SELECT comp_name FROM Company WHERE comp_rating > 4;

--2. Вывести адреса всех филиалов компании ABC Company.

SELECT adress FROM Branch WHERE comp_name = 'ABC Company';

--3. Вывести все залы для танцев с профессиональным освещением.

SELECT * FROM Dancing_hall WHERE prof_light = TRUE;

--4. Вывести все услуги, которые предоставляет филиал с адресом "ул. Пушкина, дом 10".

SELECT category FROM Service WHERE branch_id = (SELECT branch_id FROM Branch WHERE adress = 'ул. Пушкина, дом 10');

--5. Вывести всех учителей, которые преподают стиль "сальса".

SELECT teach_name FROM Teacher WHERE style = 'сальса';

--6. Вывести расписание занятий для учителя с ID 3.

SELECT * FROM Timing WHERE teach_id = 3;

--7. Вывести все компании, у которых есть учителя, преподающие в понедельник в 10:00.

SELECT comp_name FROM Company_teachers WHERE monday_time_st = '10:00';

--8. Вывести все компании, у которых доля владельца с именем "John Smith" больше 30%.

SELECT comp_name FROM Owners WHERE owner_name = 'John Smith' AND share > 30;

--9. Вывести количество залов для танцев в каждом филиале.

SELECT comp_name, COUNT(Dancing_hall.hall_id) FROM Branch JOIN Dancing_hall ON Branch.branch_id = Dancing_hall.branch_id GROUP BY comp_name;

--10. Вывести среднюю цену индивидуального занятия для всех учителей.

SELECT AVG(indiv_price) FROM Teacher;

DELETE FROM Owners WHERE share < 35;

UPDATE Teacher SET indiv_price = 1500 WHERE style = 'Contemporary';
