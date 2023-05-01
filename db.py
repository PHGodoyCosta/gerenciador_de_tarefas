import sqlite3 as sq

class ConnectionDb:
    def __init__(self):
        self.con = sq.connect("db/gerenciador.sqlite")
        self.cursor = self.con.cursor()
    
    def getTarefas(self):
        self.cursor.execute("SELECT * FROM tarefas")
        return self.cursor.fetchall()
    
    def getDias(self, tarefa):
        self.cursor.execute(f"SELECT * dias WHERE %(tarefa)s == myTarefa", {tarefa: tarefa})
        return self.cursor.fetchall()

if __name__ == "__main__":
    starter = ConnectionDb()
    