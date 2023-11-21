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
  "med_fone" "CHAR (20)" NOT NULL,
  "med_crm" INT UNIQUE NOT NULL,
  "med_uf_crm" VARCHAR(2) NOT NULL,
  "med_ativo" "char (1)"
);

CREATE TABLE "especialidade" (
  "esp_id" SERIAL PRIMARY KEY,
  "esp_nome_especialidade" VARCHAR(100) NOT NULL,
  "esp_codigo_especialidade" SMALLINT UNIQUE NOT NULL,
  "esp_ativo" "char (1)"
);

CREATE TABLE "medico_especialidade" (
  "med_esp_id" SERIAL PRIMARY KEY,
  "fk_med_id" INT NOT NULL,
  "fk_esp_id" INT NOT NULL,
  "med_esp_ativo" "char (1)" NOT NULL
);

CREATE TABLE "convenio" (
  "con_id" SERIAL PRIMARY KEY,
  "con_nome_convenio" VARCHAR(50) NOT NULL,
  "con_tipo_plano" "CHAR (3)" NOT NULL,
  "con_fone" "CHAR (20)" NOT NULL,
  "con_ativo" "char (1)"
);

CREATE TABLE "paciente" (
  "pac_prontuario" SERIAL PRIMARY KEY,
  "pac_nome" VARCHAR(100) NOT NULL,
  "pac_datanasc" DATE NOT NULL,
  "pac_cpf" "CHAR (14)" UNIQUE NOT NULL,
  "pac_rg" "CHAR (12)",
  "pac_sexo" "CHAR (1)" NOT NULL,
  "pac_estado_civil" "CHAR (15)",
  "pac_endereco" VARCHAR(100),
  "pac_cidade" VARCHAR(50),
  "pac_bairro" VARCHAR(50),
  "pac_cep" "CHAR (10)",
  "pac_fone" "CHAR (20)" NOT NULL,
  "pac_nome_mae" VARCHAR(100),
  "pac_nome_pai" VARCHAR(100),
  "pac_responsavel" VARCHAR(100) NOT NULL,
  "fk_con_id" INT NOT NULL,
  "pac_ativo" "char (1)"
);

CREATE TABLE "mov_consulta_paciente" (
  "mov_id" SERIAL PRIMARY KEY,
  "fk_pac_prontuario" INT NOT NULL,
  "fk_med_id" INT NOT NULL,
  "fk_esp_id" INT NOT NULL,
  "fk_con_id" INT NOT NULL,
  "mov_data_atende" DATE NOT NULL,
  "mov_hora_atende" TIME NOT NULL,
  "mov_ativo" "char (1)",
  "mov_evolucao_medica" TEXT
);

ALTER TABLE "medico_especialidade" ADD CONSTRAINT "fk_med_id" FOREIGN KEY ("fk_med_id") REFERENCES "medico" ("med_id");

ALTER TABLE "medico_especialidade" ADD CONSTRAINT "fk_esp_id" FOREIGN KEY ("fk_esp_id") REFERENCES "especialidade" ("esp_id");

ALTER TABLE "paciente" ADD CONSTRAINT "fk_con_id" FOREIGN KEY ("fk_con_id") REFERENCES "convenio" ("con_id");

ALTER TABLE "mov_consulta_paciente" ADD FOREIGN KEY ("fk_pac_prontuario") REFERENCES "paciente" ("pac_prontuario");

ALTER TABLE "mov_consulta_paciente" ADD FOREIGN KEY ("fk_med_id") REFERENCES "medico" ("med_id");

ALTER TABLE "mov_consulta_paciente" ADD FOREIGN KEY ("fk_esp_id") REFERENCES "especialidade" ("esp_id");

ALTER TABLE "mov_consulta_paciente" ADD FOREIGN KEY ("fk_con_id") REFERENCES "convenio" ("con_id");
