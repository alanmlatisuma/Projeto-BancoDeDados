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