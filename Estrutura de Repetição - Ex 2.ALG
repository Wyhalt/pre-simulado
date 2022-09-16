Algoritmo "Estruturas Sequencias - Exemplo 2"

Var
   cont, a, c : inteiro
   b : real

Inicio
   cont<-0
   enquanto cont<100 faca
   
      a<- randi(10)
      b<- randi(100)/10
      c<- randi(16)+15

      escreval(a,"   ",b:4:1,"   ",c)
      cont<-cont+1
   fimenquanto

Fimalgoritmo