import sqlite3 as sq

class ConnectionDb:
    def __init__(self):
        self.con = sq.connect("db/gerenciador.sqlite")
        self.cursor = self.con.cursor()
    
    def getTarefas(self):
        self.cursor.execute("SELECT * FROM tarefa")
        return self.cursor.fetchall()[0]
    
    def getTarefa(self, tarefa):
        self.cursor.execute("SELECT * FROM tarefa WHERE nome = %(tarefa)s", {tarefa: tarefa})
        return self.cursor.fetchall()[0]
    
    def getDias(self, tarefa):
        self.cursor.execute("SELECT segunda, terca, quarta, quinta, sexta, sabado, domingo FROM tarefa WHERE nome = %(tarefa)s", {tarefa: tarefa})
        return self.cursor.fetchall()[0]

    def setStateDia(self, tarefa, dia, state):
        self.cursor.execute("UPDATE tarefa SET %(dia)s = %(state)s WHERE nome = %(tarefa)s", {dia: dia, state: state, tarefa: tarefa})

        self.con.commit()

if __name__ == "__main__":
    starter = ConnectionDb()
    print(starter.getTarefas())
    