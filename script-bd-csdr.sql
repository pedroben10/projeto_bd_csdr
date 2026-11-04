CREATE TABLE aplicativo (
 id_aplicativo SERIAL PRIMARY KEY,
 nome varchar (150) not null,
 desenvolvedora varchar (100),
 descricao text,
 categoria varchar (50),
 criado_por varchar (36),
 criado_em timestamp 
);

SELECT * FROM aplicativo

INSERT INTO aplicativo (nome , desenvolvedora , descricao , categoria , criado_por , criado_em ) 
VALUES('whatsapp', 'meta', 'aplicativo de comunicacao', 'todas as idades', 'meta', '2009-02-24 14:00:00');
INSERT INTO aplicativo (nome , desenvolvedora , descricao , categoria , criado_por , criado_em ) 
VALUES('faceboock', 'meta', 'aplicativo de entretenimento', 'todas as idades', 'meta', '2004-06-19 14:00:00');
INSERT INTO aplicativo (nome , desenvolvedora , descricao , categoria , criado_por , criado_em ) 
VALUES('instagram', 'meta', 'aplicativo de entretenimento', 'todas as idades', 'meta', '2005-01-14 14:00:00');
