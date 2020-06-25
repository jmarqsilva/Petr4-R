##install.packages(c("ggplot2", "ggthemes", "reshape2"))

#EXEMPLO
rm(list = ls())
# Carregando os pacotes necessários
library(ggplot2)
library(reshape2)

# Configurando a coluna de datas corretamente
setAs("character","myDate", function(from) as.Date(from, format="%d/%m/%Y"))

# Obter o caminho atual
getwd()
# Configurar o caminho do seu arquivo PETR4_VALE5.csv 
setwd("C:\\Users\\josemar.marques\\OneDrive\\Pós Graduação\\Liguagem R\\Projeto\\Exemplo2")
# Carregando os dados
dados <- read.csv("PETR4_VALE5.csv", colClasses=c('myDate','numeric','numeric'),  header = TRUE, sep= ";", dec = ",")

# Ajustando os dados para gráfico
meltdados <- melt(dados,id="Date")

# Criando o gráfico
ggplot(meltdados,aes(x=Date,y=value,colour=variable,group=variable)) + 
  geom_line() +
  theme(axis.text.x = element_text(angle=90, hjust=1))

View(iris)
mode(iris)
