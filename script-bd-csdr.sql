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



