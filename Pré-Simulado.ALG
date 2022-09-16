Algoritmo "Estou surtando!!"

Var
   cont, cod, tipoIMV, area, reg : real
   t1, t2, consMensal, consTotal, areaTotal, areaMedia : real
   frade, sana, glicerio, medSan, medFra, medGli, consSana, consFrade, consGlicerio : real
   rural, rural3, percRural : real

Inicio
   cont<-0
   cod<-101
   enquanto cont<78 faca
      tipoIMV<- randi(3)+1
      area<- randi(531)+20
      reg<- randi(3)+1
      t1<- randi(1201)+300
      t2<- randi(1201)+300
      consTotal<- t1+t2
      consMensal<- consTotal/6
      areaTotal<- areaTotal+area
      escreval("Código:",cod," | Total:",consTotal," | Mensal: ",consMensal:6:2)

      cont<-cont+1
      cod<-cod+1

      se reg=1 entao
         sana<-sana+consTotal
         consSana<-consSana+1
      fimse

      se reg=2 entao
         frade<-frade+consTotal
         consFrade<-consFrade+1
      fimse

      se reg=3 entao
         glicerio<-glicerio+consTotal
         consGlicerio<-consGlicerio+1
      fimse

      //Questão  4
      se tipoIMV=3 entao
         rural<-rural+1
         se consMensal>300 entao
            rural3<-rural3+1
         fimse
      fimse

   fimenquanto

   // Questão 2
   areaMedia<-areaTotal/cont
   escreval("================================================================")
   escreval("Área Média: ",areaMedia:6:2,"m²")
   //Questão 4
    percRural<-(rural3/rural)*100
   escreval("Percentual Rural:",percRural:6:2,"%")
   //Questão 3
   medSan<-sana/consSana
   escreval("Média de consumo pelos imóveis do Sana: R$",medSan:6:2)
   medFra<-frade/consFrade
   escreval("Média de consumo pelos imóveis do Frade: R$",medFra:6:2)
   medGli<-glicerio/consGlicerio
   escreval("Média de consumo pelos imóveis de Glicério: R$",medGli:6:2)

Fimalgoritmo