CREATE TABLE "medico" (
  "med_id" SERIAL PRIMARY KEY,
  "med_nome" VARCHAR(100) NOT NULL,
  "med_datanasc" DATE NOT NULL,
  "med_cpf" "CHAR (14)" UNIQUE NOT NULL,
  "med_rg" "CHAR (12)",
  "med_apelido" "CHAR (20)",
  "med_cep" "CHAR (10)",
  "med_endereco" VARCHAR(100),
  "med_cidade" VARCHAR(50),
  "med_uf_medico" "CHAR (2)",
  "med_bairro" VARCHAR(50),
  "med_fone" VARCHAR(20) NOT NULL,
  "med_crm" INT UNIQUE NOT NULL,
  "med_uf_crm" VARCHAR(2) NOT NULL,
  "med_ativo" "CHAR (1)"
);

CREATE TABLE "especialidade" (
  "esp_id" SERIAL PRIMARY KEY,
  "esp_nome_especialidade" VARCHAR(100) NOT NULL,
  "esp_codigo_especialidade" SMALLINT UNIQUE NOT NULL,
  "esp_ativo" "CHAR (1)"
);

CREATE TABLE "medico_especialidade" (
  "med_esp_id" SERIAL PRIMARY KEY,
  "fk_med_id" INT NOT NULL,
  "fk_esp_id" INT NOT NULL,
  "med_esp_ativo" "CHAR (1)" NOT NULL
);

CREATE TABLE "convenio" (
  "con_id" SERIAL PRIMARY KEY,
  "con_nome_convenio" VARCHAR(50) NOT NULL,
  "con_tipo_plano" "CHAR (3)" NOT NULL,
  "con_fone" VARCHAR(20) NOT NULL,
  "con_ativo" "CHAR (1)"
);

CREATE TABLE "paciente" (
  "pac_prontuario" SERIAL PRIMARY KEY,
  "pac_nome" VARCHAR(100) NOT NULL,
  "pac_nome_social" VARCHAR(100),
  "pac_datanasc" DATE NOT NULL,
  "pac_cpf" "CHAR (14)" UNIQUE NOT NULL,
  "pac_rg" "CHAR (12)",
  "pac_genero" "CHAR (10)" NOT NULL,
  "pac_estado_civil" "CHAR (15)",
  "pac_nome_mae" VARCHAR(100),
  "pac_nome_pai" VARCHAR(100),
  "fk_con_id" INT NOT NULL,
  "pac_ativo" "CHAR (1)"
);

CREATE TABLE "pac_endereco" (
  "pac_end_id" SERIAL PRIMARY KEY,
  "pac_end_endereco" VARCHAR(100),
  "pac_end_cidade" VARCHAR(50),
  "pac_end_bairro" VARCHAR(50),
  "pac_end_cep" "CHAR (10)",
  "fk_pac_prontuario" INT NOT NULL
);

CREATE TABLE "pac_informacao" (
  "pac_inf_id" SERIAL PRIMARY KEY,
  "pac_inf_responsavel" VARCHAR(100),
  "pac_inf_fone" VARCHAR(20) NOT NULL,
  "fk_pac_prontuario" INT NOT NULL
);

CREATE TABLE "mov_consulta_paciente" (
  "mov_id" SERIAL PRIMARY KEY,
  "fk_pac_prontuario" INT NOT NULL,
  "fk_med_id" INT NOT NULL,
  "fk_esp_id" INT NOT NULL,
  "fk_con_id" INT NOT NULL,
  "mov_data_atende" DATE NOT NULL,
  "mov_hora_atende" TIME NOT NULL,
  "mov_ativo" "CHAR (1)",
  "mov_evolucao_medica" TEXT
);

ALTER TABLE "medico_especialidade" ADD CONSTRAINT "fk_medico_especialidade_medico" FOREIGN KEY ("fk_med_id") REFERENCES "medico" ("med_id");

ALTER TABLE "medico_especialidade" ADD CONSTRAINT "fk_medico_especialidade_especialidade" FOREIGN KEY ("fk_esp_id") REFERENCES "especialidade" ("esp_id");

ALTER TABLE "paciente" ADD CONSTRAINT "fk_paciente_convenio" FOREIGN KEY ("fk_con_id") REFERENCES "convenio" ("con_id");

ALTER TABLE "pac_endereco" ADD CONSTRAINT "fk_pac_endereco_paciente" FOREIGN KEY ("fk_pac_prontuario") REFERENCES "paciente" ("pac_prontuario");

ALTER TABLE "pac_informacao" ADD CONSTRAINT "fk_pac_informacao_paciente" FOREIGN KEY ("fk_pac_prontuario") REFERENCES "paciente" ("pac_prontuario");

ALTER TABLE "mov_consulta_paciente" ADD CONSTRAINT "fk_mov_consulta_paciente_paciente" FOREIGN KEY ("fk_pac_prontuario") REFERENCES "paciente" ("pac_prontuario");

ALTER TABLE "mov_consulta_paciente" ADD CONSTRAINT "fk_mov_consulta_paciente_medico" FOREIGN KEY ("fk_med_id") REFERENCES "medico" ("med_id");

ALTER TABLE "mov_consulta_paciente" ADD CONSTRAINT "fk_mov_consulta_paciente_especialidade" FOREIGN KEY ("fk_esp_id") REFERENCES "especialidade" ("esp_id");

ALTER TABLE "mov_consulta_paciente" ADD CONSTRAINT "fk_mov_consulta_paciente_convenio" FOREIGN KEY ("fk_con_id") REFERENCES "convenio" ("con_id");
