CREATE TABLE IF NOT EXISTS Company
(
comp_name VARCHAR(50) PRIMARY KEY,
number_of_branch INT,
comp_rating INT,
comp_inst VARCHAR(50),
comp_tel VARCHAR(10)
);

CREATE TABLE IF NOT EXISTS Branch
(
branch_id INT PRIMARY KEY,
comp_name VARCHAR(50),
number_of_hall INT,
adress VARCHAR(50),
metro VARCHAR(30),
shower BOOL,
toilet INT,
locker_room INT,
FOREIGN KEY (comp_name) REFERENCES Company (comp_name)
);

CREATE TABLE IF NOT EXISTS Dancing_hall
(
hall_id INT PRIMARY KEY,
branch_id INT,
size INT,
capacity INT,
style VARCHAR(10),
floor VARCHAR(20),
prof_light BOOL,
photo VARCHAR(30),
const_rent VARCHAR(10),
price INT,
dan_locker BOOL,
FOREIGN KEY (branch_id) REFERENCES Branch (branch_id)
);

CREATE TABLE IF NOT EXISTS Service
(
serv_id INT PRIMARY KEY,
branch_id INT,
category VARCHAR(100),
FOREIGN KEY (branch_id) REFERENCES Branch (branch_id)
);

CREATE TABLE IF NOT EXISTS Teacher
(
teach_id INT PRIMARY KEY,
teach_name VARCHAR(50),
style VARCHAR(20),
experience INT,
indiv_price INT,
group_price VARCHAR(20),
teach_inst VARCHAR(50),
teach_raiting INT,
sex VARCHAR(3),
age INT
);

CREATE TABLE IF NOT EXISTS Timing
(
teach_id INT,
branch_id INT,
monday_time_st VARCHAR(5),
tuesday_time_st VARCHAR(5),
wednesday_time_st VARCHAR(5),
thursday_time_st VARCHAR(5),
friday_time_st VARCHAR(5),
saturday_time_st VARCHAR(5),
sunday_time_st VARCHAR(5),
monday_time_end VARCHAR(5),
tuesday_time_end VARCHAR(5),
wednesday_time_end VARCHAR(5),
thursday_time_end VARCHAR(5),
friday_time_end VARCHAR(5),
saturday_time_end VARCHAR(5),
sunday_time_end VARCHAR(5),
PRIMARY KEY (branch_id, teach_id),
FOREIGN KEY (teach_id) REFERENCES Teacher (teach_id),
FOREIGN KEY (branch_id) REFERENCES Branch (branch_id)
);

CREATE TABLE IF NOT EXISTS Company_teachers
(
teach_id INT,
comp_name VARCHAR(50),
monday_time_st VARCHAR(5),
tuesday_time_st VARCHAR(5),
wednesday_time_st VARCHAR(5),
thursday_time_st VARCHAR(5),
friday_time_st VARCHAR(5),
saturday_time_st VARCHAR(5),
sunday_time_st VARCHAR(5),
monday_time_end VARCHAR(5),
tuesday_time_end VARCHAR(5),
wednesday_time_end VARCHAR(5),
thursday_time_end VARCHAR(5),
friday_time_end VARCHAR(5),
saturday_time_end VARCHAR(5),
sunday_time_end VARCHAR(5),
group_price INT,
PRIMARY KEY (comp_name, teach_id),
FOREIGN KEY (teach_id) REFERENCES Teacher (teach_id),
FOREIGN KEY (comp_name) REFERENCES Company (comp_name)
);


CREATE TABLE IF NOT EXISTS Owners
(
owner_id INT PRIMARY KEY,
comp_name VARCHAR(50),
share INT,
profit INT,
owner_name VARCHAR(50),
FOREIGN KEY (comp_name) REFERENCES Company (comp_name)
);
