CREATE TABLE professor(
 id_professor SERIAL PRIMARY KEY,
 nome varchar(255),
 email varchar(255),
 cpf varchar(15)
 );


 SELECT * FROM professor;


 INSERT INTO professor (nome,email,cpf) VALUES ('pedro', 'pedro.santos.gois@escola.pr.gov.br', '6766777667');

