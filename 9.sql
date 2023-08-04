CREATE VIEW teacher_info AS
SELECT
teach_id,
teach_name,
style,
experience,
indiv_price,
group_price,
LEFT(teach_inst, 2) AS teach_inst,
teach_raiting,
sex,
age
FROM
Teacher;

CREATE VIEW Owners_info AS
SELECT
owner_id,
comp_name,
share AS _hidden_share_,
profit AS _hidden_profit_,
owner_name
FROM
Owners;

CREATE VIEW Company_info AS
SELECT
comp_name,
number_of_branch,
comp_rating,
'**************' AS comp_inst,
'***-***-****' AS comp_tel
FROM
Company 

CREATE OR REPLACE VIEW teacher_info AS
SELECT
teach_id,
teach_name,
style,
experience,
indiv_price,
group_price,
LEFT(teach_inst, 1) AS teach_inst,
teach_raiting,
sex,
age
FROM
Teacher;



