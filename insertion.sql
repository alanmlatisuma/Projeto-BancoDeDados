INSERT INTO student (id, name)
VALUES 
    ('100000000', 'João Silva'),
    ('100000001', 'Maria Santos'),
    ('100000002', 'Pedro Oliveira'),
    ('100000003', 'Ana Costa'),
    ('100000004', 'Luiz Pereira'),
    ('100000005', 'Carla Martins'),
    ('100000006', 'Fernando Almeida'),
    ('100000007', 'Juliana Ferreira'),
    ('100000008', 'Gabriel Souza'),
    ('100000009', 'Mariana Lima'),
    ('100000010', 'Adriel Henrique'),
    ('100000011', 'Lucas Barbosa'),
    ('100000012', 'Bruno Santos'),
    ('100000013', 'Patrícia Silva'),
    ('100000014', 'André Pereira'),
    ('100000015', 'Paula Costa'),
    ('100000016', 'Thiago Martins'),
    ('100000017', 'Alan Mlatisuma'),
    ('100000018', 'Gustavo Silva'),
    ('100000019', 'Bianca Souza'),
    ('100000020', 'Vinícius Lima'),
    ('100000021', 'Renata Santos'),
    ('100000022', 'Rodrigo Almeida'),
    ('100000023', 'Vanessa Ferreira'),
    ('100000024', 'Luciana Barbosa'),
    ('100000025', 'Felipe Santos'),
    ('100000026', 'Aline Pereira'),
    ('100000027', 'Daniel Costa'),
    ('100000028', 'Carolina Martins'),
    ('100000029', 'José Oliveira');

INSERT INTO course (id, name)
VALUES 
    ('11111', 'C. da Computação'),
    ('22222', 'Eng. de Produção'),
    ('33333', 'Medicina'),
    ('44444', 'Administração'),
    ('55555', 'Biomedicina'),
    ('66666', 'Letras'),
    ('77777', 'Arq. e Urbanismo');

UPDATE student
SET course_id = '11111'
WHERE id IN ('100000000', '100000004', '100000009', '100000010');

UPDATE student
SET course_id = '22222'
WHERE id IN ('100000001', '100000002', '100000014', '100000011', '100000025');

UPDATE student
SET course_id = '33333'
WHERE id IN ('100000005', '100000013', '100000012', '100000027');

UPDATE student
SET course_id = '44444'
WHERE id IN ('100000006', '100000015', '100000019', '100000029');

UPDATE student
SET course_id = '55555'
WHERE id IN ('100000003', '100000016', '100000020', '100000024');

UPDATE student
SET course_id = '66666'
WHERE id IN ('100000007', '100000017', '100000022', '100000026');

UPDATE student
SET course_id = '77777'
WHERE id IN ('100000008', '100000018', '100000023', '100000028', '100000021');

INSERT INTO tcc_group (id)
VALUES 
    ('10'),
    ('20'),
    ('30');

UPDATE student
SET tcc_id = '10'
WHERE id IN ('100000003', '100000016', '100000020');

UPDATE student
SET tcc_id = '20'
WHERE id IN ('100000001', '100000002', '100000014', '100000025');

UPDATE student
SET tcc_id = '30'
WHERE id IN ('100000008', '100000023', '100000028', '100000021');

INSERT INTO professor (id, name, salary)
 VALUES
    ('000001', 'João Silva', 8500.00),
    ('000002', 'Maria Santos', 9200.00),
    ('000003', 'Carlos Oliveira', 10150.00),
    ('000004', 'Ana Pereira', 8700.00),
    ('000005', 'Pedro Almeida', 11300.00),
    ('000006', 'Sofia Costa', 10400.00),
    ('000007', 'Lucas Martins', 12500.00),
    ('000008', 'Laura Ferreira', 8000.00),
    ('000009', 'Marcela Rodrigues', 9500.00),
    ('000010', 'Rafael Cardoso', 12800.00);

UPDATE tcc_group
SET professor_id = '000001'
WHERE id IN ('10');

UPDATE tcc_group
SET professor_id = '000007'
WHERE id IN ('20');

UPDATE tcc_group
SET professor_id = '000010'
WHERE id IN ('30');

INSERT INTO departament (name, boss_id)
 VALUES
    ('Matemática', '000001'),
    ('Sociologia', '000002'),
    ('Biológicas', '000003'),
    ('Física', '000004'),
    ('Finanças', '000006');
    

UPDATE professor
SET departament_name = 'Matemática'
WHERE id IN ('000001');

UPDATE professor
SET departament_name = 'Sociologia'
WHERE id IN ('000002');

UPDATE professor
SET departament_name = 'Biológicas'
WHERE id IN ('000003');

UPDATE professor
SET departament_name = 'Física'
WHERE id IN ('000004');

UPDATE professor
SET departament_name = 'Finanças'
WHERE id IN ('000006');

INSERT INTO discipline (id, name, hours, class_id, departament_name)
 VALUES
    ('MA0001', 'Álgebra Linear', 60, 'K201', 'Matemática'),
    ('MA0002', 'Cálculo I', 80, 'K002', 'Matemática'),
    ('MA0003', 'Geometria Analítica', 40, 'K103', 'Matemática'),

    ('FI0001', 'Mecânica Clássica', 60, 'J001', 'Física'),
    ('FI0002', 'Eletromagnetismo', 60, 'J102', 'Física'),
    ('FI0003', 'Termodinâmica', 80, 'J103', 'Física'),

    ('FN0001', 'Gestão Financeira', 40, 'D101', 'Finanças'),
    ('FN0002', 'Análise de Investimentos', 60, 'K002', 'Finanças'),
    ('FN0003', 'Contabilidade Gerencial', 60, 'D103', 'Finanças'),

    ('BI0001', 'Biologia Celular', 40, 'J101', 'Biológicas'),
    ('BI0002', 'Genética', 60, 'K102', 'Biológicas'),
    ('BI0003', 'Ecologia', 80, 'I103', 'Biológicas'),

    ('SO0001', 'Introdução à Sociologia', 60, 'D101', 'Sociologia'),
    ('SO0002', 'Teorias Sociológicas', 80, 'K102', 'Sociologia'),
    ('SO0003', 'Sociologia Urbana', 60, 'K003', 'Sociologia');


INSERT INTO course_curriculum (course_id, discipline_id)
VALUES 
    ('11111', 'MA0001'),
    ('11111', 'MA0002'),
    ('11111', 'MA0003'),
    ('11111', 'FI0001'),
    ('11111', 'FI0002'),
    ('11111', 'SO0001'),

    ('22222', 'MA0002'),
    ('22222', 'MA0003'),
    ('22222', 'FI0001'),
    ('22222', 'FI0002'),
    ('22222', 'FI0003'),
    ('22222', 'SO0003'),

    ('33333', 'BI0001'),
    ('33333', 'BI0002'),
    ('33333', 'BI0003'),
    ('33333', 'FN0001'),
    ('33333', 'SO0002'),
    ('33333', 'SO0003'),

    ('44444', 'FN0001'),
    ('44444', 'FN0002'),
    ('44444', 'FN0003'),
    ('44444', 'MA0002'),
    ('44444', 'FI0003'),
    ('44444', 'SO0002'),

    ('55555', 'BI0001'),
    ('55555', 'BI0002'),
    ('55555', 'BI0003'),
    ('55555', 'FN0003'),
    ('55555', 'SO0001'),
    ('55555', 'SO0003'),

    ('66666', 'SO0001'),
    ('66666', 'SO0002'),
    ('66666', 'SO0003'),
    ('66666', 'FN0001'),
    ('66666', 'FN0002'),
    ('66666', 'FN0003'),
    
    ('77777', 'MA0001'),
    ('77777', 'MA0002'),
    ('77777', 'MA0003'),
    ('77777', 'FI0002'),
    ('77777', 'FI0003'),
    ('77777', 'SO0003');


INSERT INTO takes (student_id, discipline_id, semester, year, grade)
VALUES

    ('100000000', 'MA0001', '1', 2019, 8.5),
    ('100000000', 'MA0002', '2', 2019, 8.2),
    ('100000000', 'MA0003', '1', 2020, 6.5),
    ('100000000', 'FI0001', '2', 2020, 8.5),
    ('100000000', 'FI0002', '1', 2021, 7.8),
    ('100000000', 'SO0001', '2', 2021, 9.2),

    ('100000001', 'MA0002', '1', 2024, 9.0),
    ('100000001', 'FI0002', '2', 2023, 8.7),
    ('100000001', 'SO0003', '1', 2024, 8.5),
    ('100000001', 'FI0001', '1', 2023, 7.9),

    ('100000002', 'MA0003', '1', 2017, 7.2),
    ('100000002', 'FI0003', '2', 2017, 8.0),

    ('100000003', 'BI0001', '1', 2020, 8.9),
    ('100000003', 'BI0002', '2', 2020, 7.5),
    ('100000003', 'FN0003', '1', 2021, 8.3),

    ('100000004', 'MA0002', '2', 2020, 7.8),
    ('100000004', 'FI0002', '2', 2020, 8.4),

    ('100000005', 'BI0003', '1', 2014, 8.0),
    ('100000005', 'BI0002', '2', 2013, 9.2),
    ('100000005', 'FN0001', '1', 2014, 7.7),
    ('100000005', 'BI0001', '1', 2013, 8.6),

    ('100000006', 'MA0002', '1', 2017, 6.3),
    ('100000006', 'FI0003', '2', 2017, 8.8),
    ('100000006', 'FN0001', '1', 2018, 8.1),
    ('100000006', 'FN0002', '1', 2018, 9.3),
    ('100000006', 'FN0003', '2', 2019, 7.8),
    ('100000006', 'SO0002', '1', 2019, 8.9),

    ('100000007', 'SO0001', '1', 2022, 8.8),
    ('100000007', 'FN0002', '2', 2023, 8.4),

    ('100000008', 'MA0001', '1', 2018, 9.5),
    ('100000008', 'MA0002', '2', 2018, 8.3),
    ('100000008', 'MA0003', '1', 2019, 6.9),
    ('100000008', 'FI0002', '1', 2019, 9.5),
    ('100000008', 'FI0003', '2', 2019, 8.3),
    ('100000008', 'SO0003', '1', 2020, 7.4),

    ('100000009', 'MA0002', '2', 2022, 8.2),
    ('100000009', 'FI0001', '1', 2020, 7.6),
    ('100000009', 'MA0001', '1', 2021, 8.9),

    ('100000010', 'MA0002', '2', 2019, 9.9),
    ('100000010', 'FI0002', '1', 2020, 9.8),
    ('100000010', 'SO0001', '1', 2019, 9.5),
    ('100000010', 'MA0003', '1', 2021, 9.0),

    ('100000011', 'MA0002', '2', 2017, 7.9),
    ('100000011', 'FI0001', '1', 2017, 8.7),
    ('100000011', 'SO0003', '2', 2018, 9.2),

    ('100000012', 'SO0003', '1', 2009, 8.4),
    ('100000012', 'BI0002', '2', 2008, 9.0),
    ('100000012', 'FN0001', '1', 2008, 7.5),
    ('100000012', 'BI0003', '2', 2009, 8.8),

    ('100000013', 'BI0001', '1', 2023, 8.0),
    ('100000013', 'SO0002', '2', 2023, 8.6),

    ('100000014', 'MA0002', '1', 2016, 7.7),
    ('100000014', 'MA0003', '2', 2015, 7.1),
    ('100000014', 'FI0001', '1', 2015, 8.4),
    ('100000014', 'FI0002', '1', 2016, 8.7),
    ('100000014', 'FI0003', '2', 2015, 9.1),
    ('100000014', 'SO0003', '1', 2016, 8.4),

    ('100000015', 'MA0002', '1', 2004, 8.3),
    ('100000015', 'FI0003', '2', 2004, 7.2),
    ('100000015', 'FN0002', '1', 2005, 8.7),
    ('100000015', 'SO0002', '2', 2005, 9.0),

    ('100000016', 'BI0001', '1', 2010, 9.2),
    ('100000016', 'SO0003', '2', 2010, 7.9),
    ('100000016', 'FN0003', '1', 2011, 8.8),

    ('100000017', 'SO0001', '1', 2020, 7.7),
    ('100000017', 'SO0002', '2', 2020, 9.2),
    ('100000017', 'SO0003', '1', 2021, 5.6),
    ('100000017', 'FN0001', '2', 2021, 8.9),
    ('100000017', 'FN0002', '1', 2021, 5.1),
    ('100000017', 'FN0003', '2', 2021, 9.0),

    ('100000018', 'MA0002', '1', 2020, 7.4),
    ('100000018', 'FI0003', '2', 2020, 8.5),
    ('100000018', 'MA0003', '1', 2021, 9.1),

    ('100000019', 'FN0001', '1', 2019, 8.6),
    ('100000019', 'FN0002', '2', 2019, 9.0),

    ('100000020', 'BI0001', '1', 2020, 8.9),
    ('100000020', 'BI0002', '2', 2020, 7.7),
    ('100000020', 'BI0003', '1', 2021, 7.3),
    ('100000020', 'SO0001', '1', 2020, 8.2),
    ('100000020', 'SO0003', '2', 2020, 6.7),
    ('100000020', 'FN0003', '1', 2021, 8.3),

    ('100000021', 'MA0002', '1', 2020, 8.2),
    ('100000021', 'FI0003', '2', 2020, 8.8),
    ('100000021', 'MA0003', '1', 2021, 7.5),
    ('100000021', 'FI0002', '2', 2021, 9.2),

    ('100000022', 'SO0001', '1', 2016, 7.9),
    ('100000022', 'SO0002', '2', 2016, 8.3),
    ('100000022', 'FN0001', '1', 2017, 9.0),

    ('100000023', 'MA0003', '1', 2009, 8.7),
    ('100000023', 'FI0002', '2', 2010, 7.6),

    ('100000024', 'BI0002', '1', 2012, 9.1),
    ('100000024', 'SO0001', '2', 2012, 8.4),
    ('100000024', 'FN0003', '1', 2013, 8.8),

    ('100000025', 'MA0003', '1', 2022, 7.8),
    ('100000025', 'FI0002', '1', 2021, 9.2),
    ('100000025', 'FI0003', '1', 2021, 8.6),
    ('100000025', 'SO0003', '2', 2021, 7.9),

    ('100000026', 'SO0003', '1', 2010, 8.4),
    ('100000026', 'FN0001', '2', 2011, 7.9),
    ('100000026', 'FN0003', '1', 2012, 8.3),

    ('100000027', 'BI0002', '1', 2020, 9.0),
    ('100000027', 'BI0003', '2', 2020, 8.0),
    ('100000027', 'BI0001', '1', 2021, 9.0),
    ('100000027', 'FN0001', '2', 2021, 8.6),
    ('100000027', 'SO0002', '1', 2023, 7.0),
    ('100000027', 'SO0003', '2', 2022, 8.9),

    ('100000028', 'MA0001', '1', 2018, 7.5),
    ('100000028', 'MA0002', '2', 2018, 8.9),
    ('100000028', 'MA0003', '1', 2020, 8.1),

    ('100000029', 'MA0002', '1', 2015, 8.3),
    ('100000029', 'FI0003', '2', 2015, 9.0),
    ('100000029', 'FN0003', '1', 2016, 8.5),
    ('100000029', 'FN0001', '2', 2016, 7.7);


INSERT INTO graduated (student_id, course_id, year, semester)
VALUES
    ('100000000', '11111', 2021, '2'),
    ('100000014', '22222', 2016, '1'),
    ('100000027', '33333', 2023, '1'),
    ('100000006', '44444', 2019, '2'),
    ('100000020', '55555', 2021, '1'),
    ('100000017', '66666', 2021, '2'),
    ('100000008', '77777', 2020, '1');
    

INSERT INTO teaches (professor_id, semester, year,discipline_id)
VALUES
    ('000001', '1', 2020, 'MA0001'),
    ('000001', '2', 2020, 'MA0002'),
    ('000001', '1', 2021, 'MA0003'),

    ('000002', '1', 2015, 'SO0001'),
    ('000002', '2', 2015, 'SO0002'),
    ('000002', '1', 2016, 'SO0003'),

    ('000003', '1', 2019, 'BI0001'),
    ('000003', '2', 2018, 'BI0002'),
    ('000003', '1', 2019, 'BI0003'),

    ('000004', '1', 2020, 'FI0001'),
    ('000004', '2', 2020, 'FI0002'),
    ('000004', '1', 2022, 'FI0003'),

    ('000005', '1', 2022, 'FN0001'),
    ('000005', '2', 2022, 'FN0002'),
    ('000005', '1', 2023, 'SO0001'),
    ('000005', '2', 2023, 'SO0002'),

    ('000006', '1', 2019, 'FN0001'),
    ('000006', '2', 2018, 'FN0002'),
    ('000006', '1', 2019, 'FN0003'),

    ('000007', '1', 2020, 'MA0001'),
    ('000007', '2', 2020, 'FI0001'),

    ('000008', '1', 2023, 'BI0001'),
    ('000008', '2', 2023, 'BI0002'),
    ('000008', '1', 2024, 'SO0003'),
    ('000008', '2', 2024, 'SO0002'),
    ('000008', '2', 2024, 'FI0001'),

    ('000009', '1', 2015, 'MA0001'),
    ('000009', '2', 2015, 'MA0002'),
    ('000009', '1', 2016, 'MA0003'),
    ('000009', '1', 2016, 'FI0001'),
    ('000009', '2', 2016, 'FI0002'),
    ('000009', '1', 2017, 'FN0003'),

    ('000010', '1', 2021, 'FN0001'),
    ('000010', '2', 2021, 'FN0002');