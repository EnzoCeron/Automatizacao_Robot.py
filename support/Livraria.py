
import requests as req
import os
import json



def usuariocomcarrinho():
    lista = []
    i = 0
    r = req.get("http://localhost:3000/carrinhos")
    formula = r.json()
    total = formula["quantidade"]
    for i in range(0,int(total)):
        lista.append(formula["carrinhos"][i]["idUsuario"])
    print(lista)
    return lista


def listarids():
    lista = []
    i = 0
    r = req.get("http://localhost:3000/usuarios")
    formula = r.json()
    total = formula["quantidade"]
    for i in range(0, int(total)-1):
        lista.append(formula["usuarios"][i]["_id"])
    return lista


def estoquetotal():
    lista = []
    i = 0
    soma = 0
    r = req.get("http://localhost:3000/produtos")
    formula = r.json()
    total = formula["quantidade"]
    for i in range(0, int(total)-1):
        lista.append(formula["produtos"][i]["quantidade"])
    oi = sum(lista)
    return oi



