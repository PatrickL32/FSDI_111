from flask import Flask                   #From the flask module import the Flask class

#OOP -Object Oriented Paradigm
app=Flask(__name__)                       #create an instance of the Flask class (an object)

@app.get("/")                             # flask decorator that maps route to view functions

def profile():
    me= {                                 # Python dictionary 
        "first_name":"Patrick",
        "last_name":"Lewis",
        "hobbies":"listening to podcasts..",
        " is_online": True
}
    return me                         # Returning a dictionary from a Flask view function converts to JSON!
