
-- HISTORICO ESCOLAR DE QUALQUER ALUNO
SELECT s.name AS "student", d.id AS "discipline id", d.name AS "discipline", t.semester, t.year, t.grade
FROM takes t
LEFT JOIN student s
ON s.id = t.student_id
LEFT JOIN discipline d
ON d.id = t.discipline_id;
--WHERE s.id = '100000017' (para selecionar um aluno específico)



--HISTORICO PROFESSOR
SELECT p.name AS "professor", d.name AS "discipline", t.semester, t.year
FROM teaches t
LEFT JOIN professor p
ON p.id = t.professor_id
LEFT JOIN discipline d
ON d.id = t.discipline_id;
--WHERE p.id = '000001' (para selecionar um professor específico)



--ALUNOS GRADUADOS
SELECT s.name AS "student", g.student_id, g.course_id, c.name AS "course", g.semester, g.year
FROM graduated g 
LEFT JOIN student s 
ON  s.id = g.student_id
LEFT JOIN course c 
ON c.id = g.course_id;



--PROFESSORES CHEFES DE DEPARTAMENTO
SELECT p.name AS "professor", d.boss_id, d.name AS "departament"
FROM departament d 
LEFT JOIN professor p 
ON p.id = d.boss_id;



--GRUPOS DE TCC
SELECT s.name AS "student", t.id AS "tcc group id", p.name AS "professor"
FROM tcc_group t
LEFT JOIN student s 
ON t.id = s.tcc_id
LEFT JOIN professor p 
ON p.id = t.professor_id;
--WHERE t.id = '10' [para selecionar um grupo específico (10, 20 ou 30)]