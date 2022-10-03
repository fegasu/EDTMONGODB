'''
from pymongo import MongoClient 
MONGO_URI='mongodb://localhost'
cliente=MongoClient('mongodb://localhost')
db=cliente['salud']
coleccion=db['eps']
#eps1=coleccion.find({"ideps":"1"})
eps1=coleccion.find()
for r in eps1:
    print(r['ideps']+"-"+r['nombre'])
'''

#python.exe -m pip install "pymongo[srv]"
#python -m pip install django~=4.0.0
#django-admin startproject uno1
#python manage.py runserver
#http://127.0.0.1:8000/
#python manage.py startapp pages


from pymongo import MongoClient 
MONGO_URI='mongodb://localhost'
cliente=MongoClient('mongodb+srv://fegasu:maloca2019@cluster0.kprce3j.mongodb.net/test')
db=cliente['covid19']
coleccion=db['casos']
#eps1=coleccion.find({"ideps":"1"})
eps1=coleccion.find()
for r in eps1:
    print(str(r['caso'])+"-"+r['estado'])