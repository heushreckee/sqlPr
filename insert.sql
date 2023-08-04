INSERT INTO Company (comp_name, number_of_branch, comp_rating, comp_inst, comp_tel)
VALUES
('Company1', 5, 4, 'Company1_inst', '111-111-1111'),
('Company2', 2, 3, 'Company2_inst', '222-222-2222'),
('Company3', 3, 5, 'Company3_inst', '333-333-3333'),
('Company4', 1, 2, 'Company4_inst', '444-444-4444'),
('Company5', 4, 4, 'Company5_inst', '555-555-5555'),
('Company6', 2, 3, 'Company6_inst', '666-666-6666'),
('Company7', 1, 5, 'Company7_inst', '777-777-7777'),
('Company8', 3, 2, 'Company8_inst', '888-888-8888'),
('Company9', 4, 4, 'Company9_inst', '999-999-9999'),
('Company10', 2, 3, 'Company10_inst', '000-000-0000');

INSERT INTO Branch (branch_id, comp_name, number_of_hall, adress, metro, shower, toilet, locker_room)
VALUES
(1, 'Company1', 3, 'Adress1', 'Metro1', true, 3, 2),
(2, 'Company1', 2, 'Adress2', 'Metro2', false, 2, 1),
(3, 'Company2', 4, 'Adress3', 'Metro3', true, 4, 3),
(4, 'Company3', 1, 'Adress4', 'Metro4', false, 1, 0),
(5, 'Company4', 2, 'Adress5', 'Metro5', true, 2, 1),
(6, 'Company5', 3, 'Adress6', 'Metro6', false, 3, 2),
(7, 'Company6', 1, 'Adress7', 'Metro7', true, 1, 0),
(8, 'Company7', 5, 'Adress8', 'Metro8', false, 5, 4),
(9, 'Company8', 2, 'Adress9', 'Metro9', true, 2, 1),
(10, 'Company9', 3, 'Adress10', 'Metro10', false, 3, 2);

INSERT INTO Dancing_hall (hall_id, branch_id, size, capacity, style, floor, prof_light, photo, const_rent, price, dan_locker)
VALUES
(1, 1, 50, 30, 'Hip-hop', 'Marble', true, 'photo1', 'monthly', 2000, true),
(2, 1, 70, 40, 'Contemporary', 'Wooden', true, 'photo2', 'monthly', 2500, false),
(3, 1, 40, 20, 'Jazz', 'Parquet', false, 'photo3', 'hourly', 500, true),
(4, 2, 60, 35, 'Salsa', 'Tile', true, 'photo4', 'hourly', 700, false),
(5, 2, 100, 50, 'Ballet', 'Marley', true, 'photo5', 'monthly', 3000, true),
(6, 3, 80, 45, 'Ballroom', 'Linoleum', false, 'photo6', 'hourly', 600, false),
(7, 4, 30, 15, 'Tap', 'Concrete', true, 'photo7', 'hourly', 400, true),
(8, 5, 90, 50, 'Hip-hop', 'Marble', true, 'photo8', 'monthly', 2800, true),
(9, 7, 50, 30, 'Contemporary', 'Wooden', true, 'photo9', 'hourly', 550, false),
(10, 9, 70, 40, 'Ballet', 'Marley', true, 'photo10', 'monthly', 3200, true);

INSERT INTO Service (serv_id, branch_id, category)
VALUES
(1, 1, 'Locker rental'),
(2, 3, 'Shower'),
(3, 4, 'Personal training'),
(4, 5, 'Costume rental'),
(5, 7, 'Photography'),
(6, 7, 'Video recording'),
(7, 8, 'Cafe'),
(8, 8, 'Party rental'),
(9, 10, 'Individual coaching'),
(10, 10, 'Group classes');

INSERT INTO Teacher (teach_id, teach_name, style, experience, indiv_price, group_price, teach_inst, teach_raiting, sex, age)
VALUES
(1, 'Teacher1', 'Contemporary', 7, 2000, '5000/10 classes', 'Instr1', 4, 'F', 28),
(2, 'Teacher2', 'Hip-hop', 5, 1500, '4000/10 classes', 'Instr2', 3, 'M', 25),
(3, 'Teacher3', 'Ballet', 10, 2500, '8000/10 classes', 'Instr3', 5, 'F', 32),
(4, 'Teacher4', 'Ballroom', 3, 1000, '3000/10 classes', 'Instr4', 2, 'M', 23),
(5, 'Teacher5', 'Salsa', 6, 1200, '3500/10 classes', 'Instr5', 3, 'F', 30),
(6, 'Teacher6', 'Jazz', 12, 3000, '10000/10 classes', 'Instr6', 5, 'M', 35),
(7, 'Teacher7', 'Tap', 4, 800, '2500/10 classes', 'Instr7', 2, 'F', 24),
(8, 'Teacher8', 'Contemporary', 8, 2200, '6000/10 classes', 'Instr8', 4, 'M', 29),
(9, 'Teacher9', 'Ballet', 5, 1800, '5000/10 classes', 'Instr9', 3, 'F', 27),
(10, 'Teacher10', 'Hip-hop', 2, 1000, '2800/10 classes', 'Instr10', 2, 'M', 22);

INSERT INTO Timing (teach_id, branch_id, monday_time_st, tuesday_time_st, wednesday_time_st, thursday_time_st, friday_time_st, saturday_time_st, sunday_time_st, monday_time_end, tuesday_time_end, wednesday_time_end, thursday_time_end, friday_time_end, saturday_time_end, sunday_time_end)
VALUES
(1, 1, '10:00', '15:00', '09:00', '13:00', '12:00', '16:00', '17:00', '12:00', '17:00', '11:00', '14:00', '15:00', '18:00', '19:00'),
(2, 2, '12:00', '15:00', '16:00', '13:00', '17:00', '16:00', '11:00', '14:00', '13:00', '16:00', '18:00', '19:00', '18:00', '20:00'),
(3, 3, '09:00', '12:00', '15:00', '10:00', '13:00', '14:00', '16:00', '18:00', '12:00', '15:00', '17:00', '14:00', '
17:00', '19:00'),
(4, 7, '11:00', '16:00', '09:00', '14:00', '11:00', '17:00', '12:00', '15:00', '10:00', '16:00', '12:00', '15:00', '13:00', '18:00'),
(5, 5, '10:00', '14:00', '15:00', '11:00', '13:00', '16:00', '12:00', '16:00', '13:00', '17:00', '16:00', '18:00', '18:00', '20:00'),
(6, 6, '10:00', '13:00', '09:00', '12:00', '11:00', '14:00', '15:00', '17:00', '12:00', '15:00', '13:00', '16:00', '16:00', '19:00'),
(7, 4, '12:00', '16:00', '15:00', '10:00', '14:00', '16:00', '13:00', '17:00', '14:00', '18:00', '16:00', '20:00', '19:00', '22:00'),
(8, 10, '09:00', '13:00', '14:00', '10:00', '15:00', '13:00', '16:00', '11:00', '15:00', '16:00', '11:00', '14:00', '17:00', '18:00'),
(9, 9, '14:00', '17:00', '10:00', '13:00', '16:00', '12:00', '15:00', '11:00', '16:00', '16:00', '12:00', '15:00', '18:00', '20:00'),
(10, 8, '11:00', '16:00', '14:00', '12:00', '16:00', '15:00', '10:00', '13:00', '13:00', '18:00', '15:00', '19:00', '17:00', '20:00');

INSERT INTO Company_teachers (teach_id, comp_name, monday_time_st, tuesday_time_st, wednesday_time_st, thursday_time_st, friday_time_st, saturday_time_st, sunday_time_st, monday_time_end, tuesday_time_end, wednesday_time_end, thursday_time_end, friday_time_end, saturday_time_end, sunday_time_end, group_price) 
VALUES 
(1, 'Company1', '09:00', '10:00', '11:00', '12:00', '13:00', '14:00', '15:00', '10:00', '11:00', '12:00', '13:00', '14:00', '15:00', '16:00', 100), 
(2, 'Company2', '10:00', '11:00', '12:00', '13:00', '14:00', '15:00', '16:00', '11:00', '12:00', '13:00', '14:00', '15:00', '16:00', '17:00', 120), 
(3, 'Company3', '08:00', '09:00', '10:00', '11:00', '12:00', '13:00', '14:00', '09:00', '10:00', '11:00', '12:00', '13:00', '14:00', '15:00', 90), 
(4, 'Company4', '11:00', '12:00', '13:00', '14:00', '15:00', '16:00', '17:00', '12:00', '13:00', '14:00', '15:00', '16:00', '17:00', '18:00', 110), 
(5, 'Company5', '09:00', '10:00', '11:00', '12:00', '13:00', '14:00', '15:00', '10:00', '11:00', '12:00', '13:00', '14:00', '15:00', '16:00', 100), 
(6, 'Company6', '10:00', '11:00', '12:00', '13:00', '14:00', '15:00', '16:00', '11:00', '12:00', '13:00', '14:00', '15:00', '16:00', '17:00', 120), 
(7, 'Company7', '08:00', '09:00', '10:00', '11:00', '12:00', '13:00', '14:00', '09:00', '10:00', '11:00', '12:00', '13:00', '14:00', '15:00', 90), 
(8, 'Company8', '11:00', '12:00', '13:00', '14:00', '15:00', '16:00', '17:00', '12:00', '13:00', '14:00', '15:00', '16:00', '17:00', '18:00', 110), 
(9, 'Company9', '09:00', '10:00', '11:00', '12:00', '13:00', '14:00', '15:00', '10:00', '11:00', '12:00', '13:00', '14:00', '15:00', '16:00', 100), 
(10, 'Company10', '10:00', '11:00', '12:00', '13:00', '14:00', '15:00', '16:00', '11:00', '12:00', '13:00', '14:00', '15:00', '16:00', '17:00', 120);

INSERT INTO Owners (owner_id, comp_name, share, profit, owner_name) 
VALUES 
(1, 'Company1', 50, 5000, 'John Smith'), 
(2, 'Company2', 30, 3000, 'Jane Doe'), 
(3, 'Company3', 20, 2000, 'Bob Johnson'), 
(4, 'Company4', 25, 2500, 'Emily Davis'), 
(5, 'Company5', 40, 4000, 'David Lee'), 
(6, 'Company6', 35, 3500, 'Karen Brown'), 
(7, 'Company7', 10, 1000, 'Mike Wilson'), 
(8, 'Company8', 15, 1500, 'Amy Green'), 
(9, 'Company9', 45, 4500, 'Tom Jones'), 
(10, 'Company10', 5, 500, 'Samantha Taylor');
