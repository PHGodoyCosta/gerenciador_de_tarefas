CREATE TABLE tarefa(
  nome TEXT PRIMARY KEY NOT NULL,
  descricao TEXT,
  estrelas INT DEFAULT 0,
  dataInicio DATE,
  segunda BOOL DEFAULT FALSE,
  terca BOOL DEFAULT FALSE,
  quarta BOOL DEFAULT FALSE,
  quinta BOOL DEFAULT FALSE,
  sexta BOOL DEFAULT FALSE,
  sabado BOOL DEFAULT FALSE,
  domingo BOOL DEFAULT FALSE
);

CREATE TABLE dia(
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  nome TEXT
);

CREATE TABLE tarefas_feitas(
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  nome TEXT,
  idDia INTEGER,
  isDone BOOL DEFAULT FALSE,
  FOREIGN KEY (nome) REFERENCES tarefa(nome),
  FOREIGN KEY (idDia) REFERENCES dia(id)
);

INSERT INTO dia (nome) VALUES ('segunda');
INSERT INTO dia (nome) VALUES ('terça');
INSERT INTO dia (nome) VALUES ('quarta');
INSERT INTO dia (nome) VALUES ('quinta');
INSERT INTO dia (nome) VALUES ('sexta');
INSERT INTO dia (nome) VALUES ('sabado');
INSERT INTO dia (nome) VALUES ('domingo');
