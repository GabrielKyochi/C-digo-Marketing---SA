Algoritmo "An�lise de marketing"
// Disciplina   : Linguagem e L�gica de Programa��o
// Professor   : Julia Caroline Pereira
// Descri��o   : Esse programa ir� analisar o sistema de marketing precisamente
// Autor(a)    : Gabriel Kyochi Bernardes
// Data atual  : 18/11/2024
Var
   // Se��o de Declara��es das vari�veis
   resposta_defeito: vetor[0 .. 2] de caractere
   resposta_preco: vetor[0 .. 2] de caractere
   resposta_adulteracao: vetor[0 .. 2] de caractere
   resposta_compartilhamento: vetor[0 .. 2] de caractere
   armazena_defeito_sim: inteiro
   armazena_defeito_nao: inteiro
   armazena_preco_sim: inteiro
   armazena_preco_nao: inteiro
   armazena_adulteracao_sim: inteiro
   armazena_adulteracao_nao: inteiro
   armazena_compartilhamento_sim: inteiro
   armazena_compartilhamento_nao: inteiro
   i: inteiro

   // Se��o de Procedimentos para armazenar respostas
Procedimento resposta_defeito_sim_nao
var
inicio
   se resposta_defeito[i] = "s" entao
      armazena_defeito_sim <- armazena_defeito_sim + 1
   senao
      armazena_defeito_nao <- armazena_defeito_nao + 1
   fimse
fimprocedimento

Procedimento resposta_preco_sim_nao
var
inicio
   se resposta_preco[i] = "s" entao
      armazena_preco_sim <- armazena_preco_sim + 1
   senao
      armazena_preco_nao <- armazena_preco_nao + 1
   fimse
fimprocedimento

Procedimento resposta_adulteracao_sim_nao
var
inicio
   se resposta_adulteracao[i] = "s" entao
      armazena_adulteracao_sim <- armazena_adulteracao_sim + 1
   senao
      armazena_adulteracao_nao <- armazena_adulteracao_nao + 1
   fimse
fimprocedimento

Procedimento resposta_compartilhamento_sim_nao
var
inicio
   se resposta_compartilhamento[i] = "s" entao
      armazena_compartilhamento_sim <- armazena_compartilhamento_sim + 1
   senao
      armazena_compartilhamento_nao <- armazena_compartilhamento_nao + 1
   fimse
fimprocedimento

// Se��o de Procedimento para a realiza��o do question�rio
Procedimento questionario
var
inicio
   escreval("Esse question�rio foi criado com o intuito,")
   escreval("de gerar melhorias de acordo,")
   escreval("com as respostas de nossos clientes!")
   escreval("-----------")
   escreval("Digite s para Sim e n para N�o")

   para i de 0 ate 2 faca
      escreval("Voc� j� viu algum defeito em um motor el�trico comprado?")
      leia(resposta_defeito[i])
      resposta_defeito_sim_nao
   fimpara
   escreval("-----------------------------")


   para i de 0 ate 2 faca
      escreval("Voc� acha que os pre�os dos motores el�tricos est�o justos?")
      leia(resposta_preco[i])
      resposta_preco_sim_nao
   fimpara
   escreval("-----------------------------")

   para i de 0 ate 2 faca
      escreval("J� passou por adultera��es durante o uso de algum motor el�trico?")
      leia(resposta_adulteracao[i])
      resposta_adulteracao_sim_nao
   fimpara
   escreval("-----------------------------")

   para i de 0 ate 2 faca
      escreval("J� ouviu falar sobre os motores el�tricos da WEG antes?")
      leia(resposta_compartilhamento[i])
      resposta_compartilhamento_sim_nao
   fimpara
   escreval("-----------------------------")
fimprocedimento

// Se��o do procedimento da finaliza��o das an�lises
Procedimento finalizacao_analise_defeito
var
inicio
   escreval("Essa � a recomenda��o para os defeitos dos produtos...")
   escreval("Alterando para a an�lise de pre�os...")
fimprocedimento

Procedimento finalizacao_analise_preco
var
inicio
   escreval("Essa � a recomenda��o para os pre�os dos produtos...")
   escreval("Alterando para a an�lise de adultera��es...")
fimprocedimento

Procedimento finalizacao_analise_adulteracao
var
inicio
   escreval("Essa � a recomenda��o para as adultera��es dos produtos...")
   escreval("Alterando para a an�lise de compartilhamento dos produtos...")
fimprocedimento

Procedimento finalizacao_final
var
inicio
   escreval("Essa � a recomenda��o para o compartilhamento dos produtos...")
   escreval("-----------------------------")
   escreval("Essa foi a an�lise completa do grupo de marketing!")
   escreval("Esperamos que tenha sido �til para passar as informa��es de,")
   escreval("melhora, e para conseguir aumentar os lucros da empresa!")
   escreval("Encerrando programa...")
fimprocedimento

Inicio
   //Se��o de perguntas para clientes
   questionario

   //Se��o de implementa��o de ideias para melhorar o marketing da empresa

   // Se��o da an�lise de defeitos
   escreval("-----------------------------")
   escreval("-----------------------------")
   escreval("-----------------------------")
   escreval("Analisando respostas...")
   se armazena_defeito_sim > armazena_defeito_nao entao
      escreval("Percebe-se que os defeitos est�o frequentes nos produtos")
      escreval("-----------------------------")
      escreval("O grupo de marketing sugere que altere a qualidade dos produtos.")
      escreval("Para isso, fa�a examina��es nos atuais produtos e analise se,")
      escreval("os funcion�rios est�o fazendo o seu trabalho corretamente")
      escreval("-----------------------------")
      finalizacao_analise_defeito
   senao
      se armazena_defeito_sim > 0 entao
         escreval("Percebe-se que alguns defeitos foram encontrados nos produtos")
         escreval("-----------------------------")
         escreval("O grupo de marketing considera que,")
         escreval("n�o h� defeito significativos nos produtos da empresa,")
         escreval("mas recomenda-se que os produtos sejam analisados para,")
         escreval("evitar qualquer erro futuro nos produtos.")
         escreval("-----------------------------")
         finalizacao_analise_defeito
      senao
         escreval("Percebe-se que n�o h� nenhum defeito nos produtos")
         escreval("-----------------------------")
         escreval("O grupo de marketing considera que,")
         escreval("n�o h� nenhum defeito nos produtos da empresa.")
         escreval("Apenas recomenda-se que a empresa continue fazendo,")
         escreval("o �timo trabalho que est� sendo realizado.")
         escreval("-----------------------------")
         finalizacao_analise_defeito
      fimse
   fimse
   escreval("-----------------------------")

   // Se��o da an�lise de pre�os
   escreval("-----------------------------")
   escreval("-----------------------------")
   escreval("Analisando respostas...")
   se armazena_preco_nao > armazena_preco_sim entao
      escreval("Percebe-se que os pre�os dos produtos est�o fora da padroniza��o,")
      escreval("do mercado")
      escreval("-----------------------------")
      escreval("O grupo de marketing sugere que os pre�os dos produtos sejam,")
      escreval("alterados de acordo com o pre�o atual no mercado de forma geral.")
      escreval("Para isso, a empresa deve an�lisar todos os pre�os com o intuito de gerar,")
      escreval("o pre�o mais lucrativo e justo para consumo, melhorando as,")
      escreval("vendas totais da empresa.")
      escreval("-----------------------------")
      finalizacao_analise_preco
   senao
      se armazena_preco_nao > 0 entao
         escreval("Percebe-se que os pre�os est�o quase perfeitos,")
         escreval("perante a padroniza��o do mercaedo")
         escreval("-----------------------------")
         escreval("O grupo de marketing considera que,")
         escreval("n�o h� reclama��es significativas dos pre�os dos produtos,")
         escreval("mas recomenda-se que os pre�os sejam revisados para n�o,")
         escreval("gerar muita insatisfa��es por parte dos clientes")
         escreval("-----------------------------")
         finalizacao_analise_preco
      senao
         escreval("Percebe-se que os pre�os est�o totalmente dentro,")
         escreval("da padroniza��o do mercado")
         escreval("-----------------------------")
         escreval("O grupo de marketing considera que,")
         escreval("os pre�os est�o padronizados da maneira correta.")
         escreval("A �nica recomenda��o � que os funcion�rios que analisam os pre�os,")
         escreval("continuem realizando seu trabalho de forma concreta e precisa.")
         escreval("-----------------------------")
         finalizacao_analise_preco
      fimse
   fimse

   // Se��o de an�lise de adultera��es
   escreval("-----------------------------")
   escreval("-----------------------------")
   escreval("Analisando respostas...")
   se armazena_adulteracao_sim > armazena_adulteracao_nao entao
      escreval("Percebe-se que os produtos da empresa est�o sendo adulterados")
      escreval("-----------------------------")
      escreval("O grupo de marketing sugere que os funcion�rios sejam,")
      escreval("revisados e que todos os produtos entrem em an�lise,")
      escreval("parando a produ��o em massa dos produtos para,")
      escreval("evitar acidentes envolvendo os produtos para n�o manchar,")
      escreval("a reputa��o da empresa, al�m de gerar cr�ticas macivas sob,")
      escreval("os m�todos de produ��o da empresa.")
      escreval("-----------------------------")
      finalizacao_analise_adulteracao
   senao
      se armazena_adulteracao_sim > 0 entao
         escreval("Percebe-se que os produtos possuem algumas adultera��es")
         escreval("-----------------------------")
         escreval("O grupo de marketing recomenda que os funcion�rios e produtos,")
         escreval("sejam avaliados, mas n�o se necessita de parar as produ��es,")
         escreval("ou de m�todos mais complexos, apenas de uma revis�o geral.")
         escreval("-----------------------------")
         finalizacao_analise_adulteracao
      senao
         escreval("Percebe-se que todos os produtos est�o em ordem e sem adultera��es")
         escreval("-----------------------------")
         escreval("O grupo de marketing considera que a �nica coisa a ser feita,")
         escreval("� que os funcion�rios continuem realizando a produ��o com legitividade,")
         escreval("e recomenda-se que continuem escolhendo os funcion�rios da forma correta.")
         escreval("-----------------------------")
         finalizacao_analise_adulteracao
      fimse
   fimse

   // Se��o de an�lise do compartilhamento dos produtos
   escreval("-----------------------------")
   escreval("-----------------------------")
   escreval("Analisando respostas...")
   se armazena_compartilhamento_nao > armazena_compartilhamento_sim entao
      escreval("Percebe-se que os produtos da WEG est�o sendo pouco compartilhados")
      escreval("-----------------------------")
      escreval("O grupo de marketing trabalhar� para compartilhar os produtos nas,")
      escreval("redes sociais, e utilizar de propagandas pagas para conseguir,")
      escreval("divulgar os produtos da WEG a todos.")
      escreval("-----------------------------")
      finalizacao_final
   senao
      se armazena_compartilhamento_nao > 0 entao
         escreval("Percebe-se que os produtos da WEG est�o precisam de mais divulga��o")
         escreval("-----------------------------")
         escreval("O grupo de marketing ir� pagar marcas famosas para divulgar o que,")
         escreval("se necessita dos produtos da WEG para garantir que as pessoas,")
         escreval("conhe�am mais a marca e comprem da mesma para aumentar os lucos da empresa.")
         escreval("-----------------------------")
         finalizacao_final
      senao
         escreval("Percebe-se que os produtos da WEG est�o sendo altamente divulgados")
         escreval("-----------------------------")
         escreval("O grupo de marketing apenas ir� continuar realizando o seu trabalho,")
         escreval("com proeza para manter os produtos da WEG sob a devida aten��o em,")
         escreval("diversas redes sociais e propagandas que far�o os produtos ficarem,")
         escreval("cada vez mais conhecidos por todos.")
         escreval("-----------------------------")
         finalizacao_final
      fimse
   fimse
Fimalgoritmo