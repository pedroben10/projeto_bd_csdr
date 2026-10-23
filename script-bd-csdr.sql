CREATE TABLE requisito_aplicativo(
  id_requisito_aplicativo SERIAL PRIMARY KEY,
  fk_aplicativo int not null,
  tipo_requisito varchar(255) not null,
  so_minimo varchar(50) not null,
  versao_so_minima varchar(50) not null,
  ram_minima_mb int not null,
  espaco_armazenamento_mb bigint not null,
  frequencia_cpu_minima_ghz decimal(4,2),
  nucleos_cpu_minimos int,
  constraint fk_aplicativo foreign key (fk_aplicativo) references aplicativo (id_aplicativo)
);

CREATE TABLE relatorio_divergencia(
id_relatorio_divergencia SERIAL PRIMARY KEY,
usuario_id varchar(36) not null,
aplicativo_id varchar(36),
dispositivo_id varchar(36),
descricao_problema text not null,
status varchar(255),
criado_em timestamp
);

CREATE TABLE aplicativo (
id_aplicativo SERIAL PRIMARY KEY,
nome           varchar (150) not null,
desenvolvedora  varchar (100),
descricao      text,
categoria      varchar (50),
criado_por     varchar (36),
criado_em      timestamp 
);


create table usuario (
  id_usuario serial not null,
  nome character varying(100) not null,
  email character varying(150) not null,
  senha_hash character varying(255) not null,
  perfil character varying(255) not null,
  criado_em timestamp without time zone,
  atualizado_em timestamp without time zone ,
  constraint usuario_pkey primary key (id_usuario)
);
select * from public.usuario

INSERT INTO usuario (nome, email, senha_hash, perfil, criado_em, atualizado_em) VALUES
('Ana Silva', 'ana.silva@email.com', '$2b$12$eImiTXuWVxfM37uY4JANjO3z565v8G6/2', 'Administrador', NOW(), NOW()),
('Carlos Souza', 'carlos.souza@email.com', '$2b$12$L7R2m30mS4mS8mQ7mE1mO.7mR30mS4mS8', 'Gestor', NOW(), NOW()),
('Mariana Costa', 'mariana.costa@email.com', '$2b$12$Z1x2c3v4b5n6m7asdfghjklpowqeyruti', 'Cliente', NOW(), NOW());

CREATE TABLE sessao_usuario(
id_sessao_usuario SERIAL PRIMARY KEY,
fk_usuario int not null,
token_jwt    varchar(500) not null,
ip_origem    varchar(45),
user_agent   text,
expira_em    timestamp not null,
criado_em    timestamp,
constraint fk_usuario foreign key (fk_usuario) references usuario (id_usuario)
);
select * from sessao_usuario


 INSERT INTO sessao_usuario (fk_usuario, token_jwt, ip_origem, user_agent, expira_em, criado_em)
 VALUES (7, 'eyJhbGciOiJIUzI1NiIsInR5cjg0ODAwfQ.abc123xyz_example_token_pc', '192.168.1.50',
 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36',
 CURRENT_TIMESTAMP + INTERVAL '1 day', CURRENT_TIMESTAMP);


 INSERT INTO sessao_usuario (fk_usuario, token_jwt, ip_origem, user_agent, expira_em, criado_em)
 VALUES (8, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiO456uvw_example_token_mobile',  '2001:0db8:85a3:0000:0000:8a2e:0370:7334',  'Mozilla/5.0 (Linux; Android 13; SM-G998B) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Mobile Safari/537.36',  CURRENT_TIMESTAMP + INTERVAL '2 days',CURRENT_TIMESTAMP);


INSERT INTO sessao_usuario (fk_usuario, token_jwt, ip_origem, user_agent, expira_em, criado_em)
VALUES (9, 'eyJhbGciOiJIUzI1NiIsInR5zk4Njg0ODAwfQ.ghi789rst_example_token_iphone', '187.54.210.12',
   'Mozilla/5.0 (iPhone; CPU iPhone OS 16_5 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/16.5 Mobile/15E148 Safari/604.1',
   CURRENT_TIMESTAMP + INTERVAL '2 hours',  CURRENT_TIMESTAMP );


CREATE TABLE id_consentimento_usuario(
 id_consentimento_usuario SERIAL PRIMARY KEY,
 usuario_id varchar(36) not null,
 termo_id int not null,
 aceito boolean not null,
 data_consentimento  timestamp
);

-- Exemplo 1: Usuário aceitou o termo de privacidade (ID 1)
INSERT INTO consentimento_usuario (usuario_id, termo_id, aceito) 
VALUES ('a1b2c3d4-e5f6-7a8b-9c0d-1e2f3a4b5c6d', 1, TRUE);

-- Exemplo 2: Outro usuário aceitou o termo de uso do app (ID 2)
INSERT INTO consentimento_usuario (usuario_id, termo_id, aceito) 
VALUES ('f9e8d7c6-b5a4-3f2e-1d0c-9b8a7f6e5d4c', 2, TRUE);

-- Exemplo 3: Usuário rejeitou ou revogou o consentimento de cookies (ID 3)
INSERT INTO consentimento_usuario (usuario_id, termo_id, aceito) 
VALUES ('12345678-abcd-ef01-2345-6789abcdef01', 3, FALSE);



SELECT * FROM consentimento_usuario;

 
