from flask import (
    Flask,
    request
)
from app.database import task

app= Flask(__name__)

@app.get("/")
@app.get("/tasks")  
def get_all_tasks():
    out= {
        "tasks" : task.scan(),
        "ok" : True
    }
    return out

@app.get("task/<in:pk>")
def get_singe_tasks(pk) :
    out = {
        "task" : task.slect_by_id(pk),
        "ok" : True
    }
    return out

@app.post("/task")
def create_task():
    task_data =request.json
    task.insert(task_data)
    return "",204

@app.delete("/task/<in:pk>")
def delete_task(pk):
    task.delete_by_id(pk)
    return "",204
