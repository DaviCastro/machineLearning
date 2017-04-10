# Data PreProcessing

#Importing the dataset
dataSet = read.csv('Data.csv')

#Taking care of the missing data, funcao ifElse
# se verdadeiro o valor da coluna de acordo com a estrategia
dataSet$Age = ifelse(is.na(dataSet$Age),
                     ave(dataSet$Age,FUN = function(x) mean(x,na.rm=TRUE)),
                     dataSet$Age
                     )

#Se possui valor entao valor, senao  valor igual a media da coluna 

dataSet$Salary = ifelse(is.na(dataSet$Salary),
                     ave(dataSet$Salary,FUN = function(x) mean(x,na.rm=TRUE)),
                     dataSet$Salary
)

#Encoding categorical data
# c e vetor em R, o segundo parametro 'levels' vao ser os nomes das categorias na coluna

dataSet$Country = factor(dataSet$Country,
                         levels = c('France','Spain','Germany'),labels = c(1,2,3))

dataSet$Purchased = factor(dataSet$Purchased,
                         levels = c('No','Yes'),labels = c(0,1))