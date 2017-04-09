# -*- coding: utf-8 -*-
"""
Created on Sun Apr  9 17:34:47 2017

@author: Davidson
"""

#Importing the libraries

import numpy as np
import pandas as pd
import matplotlib.pyplot as plt

#Importing the dataset
dataset = pd.read_csv('Data.csv')
#Importa todas as linhas menos da ultima coluna
X = dataset.iloc[:,:-1].values
#Importa todas as linha da coluna index 3 , lembrnado que pyton comeca de 0                
Y = dataset.iloc[:,3].values          
 
#Taking care of missing data  bibiliteca daora para pre processamento machine learning              
from sklearn.preprocessing import Imputer
#Esse objeto mauluco aqui precisa saber o que voce quer substituir,depois qual a estrategia e depois 
#se vai usar como base para substituir os valores da coluna(0) ou os valores da linha 1
imputer = Imputer(missing_values='NaN',strategy='mean',axis=0)
imputer = imputer.fit(X[:,1:3])
X[:,1:3] = imputer.transform(X[:,1:3])