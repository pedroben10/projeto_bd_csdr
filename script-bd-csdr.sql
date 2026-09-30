CREATE TABLE registro_aplicativo(
id_registro_aplicativo SERIAL PRIMARY KEY,
aplicativo_id varchar(36)not null,
tipo tipo_requisito varchar(255)not null,
so_minimo varchar(50) not null,
versao_so_minima varchar(50) not null,
ram_minima_mb int not null,
espaco_armazenamento_mb bigint not null,
frequencia_cpu_minima_ghz decimal(4,2),
nucleos_cpu_minimos int,


);




SELECT * FROM registro_aplicativo;

