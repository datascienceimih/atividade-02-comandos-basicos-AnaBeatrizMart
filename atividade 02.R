############################################################

# Centro Universit?rio Metodista Izabela Hendrix
# Professor Neylson Crepalde
# Atividade 02 - Projeto Integrador
# Por Ana Beatriz Martins

############################################################

# 1 - Crie 4 vetores de tamanho 10. Esses vetores devem ser
# nomeados com apenas uma letra minuscula cada um.

e <- c (12, 23, 36, 65, 54, 49, 98, 87, 14, 36)
x <- c (10, 12, 14, 16, 18, 20, 22, 24, 28, 30)
o <- c (18, 27, 36, 63, 90, 82, 74, 66, 58, 50)
m <- c (10, 15, 20, 25, 30, 35, 40, 45, 50, 55)

############################################################

# 2- Execute a soma dos vetores, a subtração dos vetores, 
# multiplica??o e divis?o. Apresente os resultados.

e + x + o + m # soma os vetores
#  [1]  50  77 106 169 192 186 234 222 150 171
 
e - x - o - m # subtração dos vetores
# [1]  -26  -31  -34  -39  -84  -88  -38  -48 -122  -99

e * x * o * m # multiplica??o dos vetores
# [1]   21600  111780  362880 1638000 2624400 2812600 6381760
# [8] 6201360 1136800 2970000

e / x / o / m # divis?o dos vetores
# [1] 0.0066666667 0.0047325103 0.0035714286 0.0025793651
# [5] 0.0011111111 0.0008536585 0.0015049140 0.0012205387
# [9] 0.0001724138 0.0004363636

#########################################################

# 3 - Execute a soma da raiz quadrada dos dos primeiros 
# vetores com a divis?o da quarta potencia dos dois ultimos.

sqrt(e) + sqrt(x) + ( o^4 / m^4 ) # soma a raiz dos 
# vetores e e x, divide a quarta potencia dos vetores
# o e m, depois soma todos

# [1] 17.12398 18.75753 20.23926 52.38984 92.59111 41.60103
# [7] 26.30342 18.85364 10.84380 12.16024

#########################################################

# 4- Crie duas matrizes de tamanho 10x10 com numeros que
# assumem casas decimais.

primeira <- matrix(1.1:10.1, nrow= 10, ncol=10)

segunda <- matrix(1.2:10.2, nrow= 10, ncol=10)

#########################################################

# 5 - Multiplique as matrizes por 10; Divida as matrizes 
# por 3; Multiplique as duas matrizes.

primeira * 10

segunda * 10

primeira / 3

segunda / 3

primeira * segunda

primeira %*% segunda

#########################################################

# 6 - Monte um banco de dados com os nomes de todos os seus
# colegas da aula de Programção Funcional e Orientada a
# objetos. Coloque no banco de dados

# a idade de cada um
# o curso que faz
# o time de futebol
# numero de horas gastas fazendo exercicios no R (para essa variavel,
# use numeros com 2 casas decimais.)

# Exiba o banco no console. Aten??o os dados do tipo 
# character devem ser character mesmo, n?o devem ser 
# tranformados automaticamente em factor.

nomes <- c("Ana", "Larissa", "Fabiano", 
           "Gerson", "Layla", "Edesio", "Adelvan")

idade <- c(18L, 29L, 38L, 25L, 26L, 33L, 23L)

curso <- c ("bioinfo", "bioinfo", "bioinfo", "cd", "cd",
            "cd", "cd")

time <- c  ("cruzeiro", "cruzeiro", "atletico", "atletico",
            "america", "america", "cruzeiro" 
            )

horas <- c (2.2, 3.3, 4.4, 1.1, 1.4, 2.1, 2.4)
 
colegas <- data.frame (nomes, idade, curso, time, horas)

colegas

########################################################

# 7 - Com um comando, exiba o banco de dados numa nova tela

View(colegas)

########################################################

# 8 - Confira varias informações sobre o banco de dados 
# tamanho, classse das variaveis, nomes das variaveis)
# usando apenas um comando

str(colegas)

# 'data.frame':	7 obs. of  5 variables:
#  $ nomes: Factor w/ 7 levels "Adelvan","Ana",..: 2 6 4 5 7 3 1
# $ idade: int  18 29 38 25 26 33 23
# $ curso: Factor w/ 2 levels "bioinfo","cd": 1 1 1 2 2 2 2
# $ time : Factor w/ 3 levels "america","atletico",..: 3 3 2 2 1 1 3
# $ horas: num  2.2 3.3 4.4 1.1 1.4 2.1 2.4


##########################################################

# 9 - Algumas variaveis fazem sentido serem do tipo factor
# (variaveis categoricas).
# O curso e o time de futebol são duas delas. Usando um
# comando transforme as variaveis em factor.

colegas$curso <- as.factor(colegas$curso)
colegas$time <- as.factor(colegas$time) 

########################################################

# 10 - Acrescente, no final do banco de dados, mais uma
# linha com as informações de todas as variaveis para o 
# professor.

rbind (colegas, variaveis = c(sapply(colegas, class)))

########################################################

# 11 - Crie uma lista com todos os objetos que voc? criou
# neste exercicio; Exiba a lista; Apresente a classe da 
# lista.

objetos <- list(e, x, o, m, curso, horas, idade, 
                nomes, time)

View(objetos)
class(objetos)

