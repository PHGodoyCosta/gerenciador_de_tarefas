CREATE TABLE tarefa(
	nome TEXT PRIMARY KEY NOT NULL,
    descricao TEXT,
    estrelas INT DEFAULT 0,
    dataInicio DATE
);

CREATE TABLE dia(
	id INT PRIMARY KEY NOT NULL,
    nome TEXT,
    isDone BOOL DEFAULT FALSE,
    myTarefa TEXT,
    FOREIGN KEY(myTarefa) REFERENCES tarefa(nome)
);
