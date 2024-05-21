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

Table discipline {
  id varchar(6) [primary key]
  name varchar(25)
  hours integer(3)
  class_id varchar(4)
  departament_name varchar(20)
}


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