from pymongo import MongoClient 
MONGO_URI='mongodb://localhost'
cliente=MongoClient('mongodb://localhost')
db=cliente['salud']
coleccion=db['eps']
#eps1=coleccion.find({"ideps":"1"})
eps1=coleccion.find()
for r in eps1:
    print(r['ideps']+"-"+r['nombre'])