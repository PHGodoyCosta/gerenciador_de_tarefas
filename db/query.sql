CREATE TABLE tarefa(
	nome TEXT PRIMARY KEY NOT NULL,
    descricao TEXT,
    estrelas INT DEFAULT 0,
    dataInicio DATE
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
