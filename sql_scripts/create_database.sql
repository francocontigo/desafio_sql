CREATE TABLE "Equipe" (
  "id" SERIAL PRIMARY KEY,
  "nome_equipe" VARCHAR(100) NOT NULL
);

CREATE TABLE "Vendedor" (
  "id" SERIAL PRIMARY KEY,
  "equipe_id" INTEGER,
  "nome_vendedor" VARCHAR(100) NOT NULL,
  FOREIGN KEY ("equipe_id") REFERENCES "Equipe" ("id")
);

CREATE TABLE "Cliente" (
  "id" SERIAL PRIMARY KEY,
  "nome_cliente" VARCHAR(100) NOT NULL
);

CREATE TABLE "Venda" (
  "id" SERIAL PRIMARY KEY,
  "cliente_id" INTEGER NOT NULL,
  "vendedor_id" INTEGER NOT NULL,
  "data_da_venda" DATE NOT NULL,
  "categoria" VARCHAR(50),
  "tipo" VARCHAR(50),
  "valor" DECIMAL(10, 2),
  "duracao_contrato" INTEGER
);

ALTER TABLE "Venda"
ADD CONSTRAINT "fk_venda_vendedor"
FOREIGN KEY ("vendedor_id") REFERENCES "Vendedor" ("id");
