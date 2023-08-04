
--Вывести название компаний (comp_name) и среднее количество залов (number_of_hall) для каждого филиала (Branch), группирует результаты по названию компании, фильтрует только те компании, у которых среднее количество залов больше 3, и сортирует результаты по убыванию среднего количества залов.
SELECT comp_name, AVG(number_of_hall) AS avg_halls 
FROM Branch 
GROUP BY comp_name 
HAVING avg_halls >= 3 
ORDER BY avg_halls DESC;

-- Вывести всех учителей танцевальных залов, расположенных на ветке метро "Red line", которые преподают Contemporary и имеют индивидуальные занятия (указана цена)
SELECT Teacher.teach_name, Teacher.style, Timing.monday_time_st, Timing.monday_time_end
FROM Teacher JOIN Timing ON Teacher.teach_id = Timing.teach_id
JOIN Branch ON Timing.branch_id = Branch.branch_id
WHERE Teacher.style = 'Contemporary' AND Branch.metro = 'Red line' AND Teacher.indiv_price IS NOT NULL;


-- Вывести все услуги, предоставляемые в филиалах компании с названием "Danceway", в которых есть хотя бы один зал с профессиональным светом:
SELECT Service.category, Branch.adress, Dancing_hall.prof_light
FROM Service JOIN Branch ON Service.branch_id = Branch.branch_id
JOIN Dancing_hall ON Dancing_hall.branch_id = Branch.branch_id
WHERE Branch.comp_name = 'Danceway' AND Dancing_hall.prof_light = TRUE;

--Вывести название компаний, адрес филиала и имя преподавателя танцев, отсортированных по убыванию опыта преподавателя
SELECT Company.comp_name, Branch.adress, Teacher.teach_name
FROM Company
JOIN Branch ON Company.comp_name = Branch.comp_name
JOIN Dancing_hall ON Branch.branch_id = Dancing_hall.branch_id
JOIN Teacher ON Dancing_hall.style = Teacher.style
ORDER BY Teacher.experience DESC;

--Вывести адрес филиала, цену за занятие в танцевальном зале и имя преподавателя танцев.
SELECT Branch.adress, Dancing_hall.price, Teacher.teach_name
FROM Branch
JOIN Dancing_hall ON Branch.branch_id = Dancing_hall.branch_id
JOIN Timing ON Branch.branch_id = Timing.branch_id
JOIN Teacher ON Timing.teach_id = Teacher.teach_id
ORDER BY Dancing_hall.price DESC;

--
SELECT Teacher.teach_name, Teacher.age, Dancing_hall.style, Service.category, Dancing_hall.dan_locker, Dancing_hall.photo
FROM Teacher 
INNER JOIN Timing ON Teacher.teach_id = Timing.teach_id 
INNER JOIN Dancing_hall ON Timing.branch_id = Dancing_hall.branch_id 
INNER JOIN Service ON Dancing_hall.branch_id = Service.branch_id 
ORDER BY Teacher.age DESC;
