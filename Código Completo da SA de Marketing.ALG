Algoritmo "Análise de marketing"
// Disciplina   : Linguagem e Lógica de Programação
// Professor   : Julia Caroline Pereira
// Descrição   : Esse programa irá analisar o sistema de marketing precisamente
// Autor(a)    : Gabriel Kyochi Bernardes
// Data atual  : 18/11/2024
Var
   // Seção de Declarações das variáveis
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

   // Seção de Procedimentos para armazenar respostas
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

// Seção de Procedimento para a realização do questionário
Procedimento questionario
var
inicio
   escreval("Esse questionário foi criado com o intuito,")
   escreval("de gerar melhorias de acordo,")
   escreval("com as respostas de nossos clientes!")
   escreval("-----------")
   escreval("Digite s para Sim e n para Não")

   para i de 0 ate 2 faca
      escreval("Você já viu algum defeito em um motor elétrico comprado?")
      leia(resposta_defeito[i])
      resposta_defeito_sim_nao
   fimpara
   escreval("-----------------------------")


   para i de 0 ate 2 faca
      escreval("Você acha que os preços dos motores elétricos estão justos?")
      leia(resposta_preco[i])
      resposta_preco_sim_nao
   fimpara
   escreval("-----------------------------")

   para i de 0 ate 2 faca
      escreval("Já passou por adulterações durante o uso de algum motor elétrico?")
      leia(resposta_adulteracao[i])
      resposta_adulteracao_sim_nao
   fimpara
   escreval("-----------------------------")

   para i de 0 ate 2 faca
      escreval("Já ouviu falar sobre os motores elétricos da WEG antes?")
      leia(resposta_compartilhamento[i])
      resposta_compartilhamento_sim_nao
   fimpara
   escreval("-----------------------------")
fimprocedimento

// Seção do procedimento da finalização das análises
Procedimento finalizacao_analise_defeito
var
inicio
   escreval("Essa é a recomendação para os defeitos dos produtos...")
   escreval("Alterando para a análise de preços...")
fimprocedimento

Procedimento finalizacao_analise_preco
var
inicio
   escreval("Essa é a recomendação para os preços dos produtos...")
   escreval("Alterando para a análise de adulterações...")
fimprocedimento

Procedimento finalizacao_analise_adulteracao
var
inicio
   escreval("Essa é a recomendação para as adulterações dos produtos...")
   escreval("Alterando para a análise de compartilhamento dos produtos...")
fimprocedimento

Procedimento finalizacao_final
var
inicio
   escreval("Essa é a recomendação para o compartilhamento dos produtos...")
   escreval("-----------------------------")
   escreval("Essa foi a análise completa do grupo de marketing!")
   escreval("Esperamos que tenha sido útil para passar as informações de,")
   escreval("melhora, e para conseguir aumentar os lucros da empresa!")
   escreval("Encerrando programa...")
fimprocedimento

Inicio
   //Seção de perguntas para clientes
   questionario

   //Seção de implementação de ideias para melhorar o marketing da empresa

   // Seção da análise de defeitos
   escreval("-----------------------------")
   escreval("-----------------------------")
   escreval("-----------------------------")
   escreval("Analisando respostas...")
   se armazena_defeito_sim > armazena_defeito_nao entao
      escreval("Percebe-se que os defeitos estão frequentes nos produtos")
      escreval("-----------------------------")
      escreval("O grupo de marketing sugere que altere a qualidade dos produtos.")
      escreval("Para isso, faça examinações nos atuais produtos e analise se,")
      escreval("os funcionários estão fazendo o seu trabalho corretamente")
      escreval("-----------------------------")
      finalizacao_analise_defeito
   senao
      se armazena_defeito_sim > 0 entao
         escreval("Percebe-se que alguns defeitos foram encontrados nos produtos")
         escreval("-----------------------------")
         escreval("O grupo de marketing considera que,")
         escreval("não há defeito significativos nos produtos da empresa,")
         escreval("mas recomenda-se que os produtos sejam analisados para,")
         escreval("evitar qualquer erro futuro nos produtos.")
         escreval("-----------------------------")
         finalizacao_analise_defeito
      senao
         escreval("Percebe-se que não há nenhum defeito nos produtos")
         escreval("-----------------------------")
         escreval("O grupo de marketing considera que,")
         escreval("não há nenhum defeito nos produtos da empresa.")
         escreval("Apenas recomenda-se que a empresa continue fazendo,")
         escreval("o ótimo trabalho que está sendo realizado.")
         escreval("-----------------------------")
         finalizacao_analise_defeito
      fimse
   fimse
   escreval("-----------------------------")

   // Seção da análise de preços
   escreval("-----------------------------")
   escreval("-----------------------------")
   escreval("Analisando respostas...")
   se armazena_preco_nao > armazena_preco_sim entao
      escreval("Percebe-se que os preços dos produtos estão fora da padronização,")
      escreval("do mercado")
      escreval("-----------------------------")
      escreval("O grupo de marketing sugere que os preços dos produtos sejam,")
      escreval("alterados de acordo com o preço atual no mercado de forma geral.")
      escreval("Para isso, a empresa deve análisar todos os preços com o intuito de gerar,")
      escreval("o preço mais lucrativo e justo para consumo, melhorando as,")
      escreval("vendas totais da empresa.")
      escreval("-----------------------------")
      finalizacao_analise_preco
   senao
      se armazena_preco_nao > 0 entao
         escreval("Percebe-se que os preços estão quase perfeitos,")
         escreval("perante a padronização do mercaedo")
         escreval("-----------------------------")
         escreval("O grupo de marketing considera que,")
         escreval("não há reclamações significativas dos preços dos produtos,")
         escreval("mas recomenda-se que os preços sejam revisados para não,")
         escreval("gerar muita insatisfações por parte dos clientes")
         escreval("-----------------------------")
         finalizacao_analise_preco
      senao
         escreval("Percebe-se que os preços estão totalmente dentro,")
         escreval("da padronização do mercado")
         escreval("-----------------------------")
         escreval("O grupo de marketing considera que,")
         escreval("os preços estão padronizados da maneira correta.")
         escreval("A única recomendação é que os funcionários que analisam os preços,")
         escreval("continuem realizando seu trabalho de forma concreta e precisa.")
         escreval("-----------------------------")
         finalizacao_analise_preco
      fimse
   fimse

   // Seção de análise de adulterações
   escreval("-----------------------------")
   escreval("-----------------------------")
   escreval("Analisando respostas...")
   se armazena_adulteracao_sim > armazena_adulteracao_nao entao
      escreval("Percebe-se que os produtos da empresa estão sendo adulterados")
      escreval("-----------------------------")
      escreval("O grupo de marketing sugere que os funcionários sejam,")
      escreval("revisados e que todos os produtos entrem em análise,")
      escreval("parando a produção em massa dos produtos para,")
      escreval("evitar acidentes envolvendo os produtos para não manchar,")
      escreval("a reputação da empresa, além de gerar críticas macivas sob,")
      escreval("os métodos de produção da empresa.")
      escreval("-----------------------------")
      finalizacao_analise_adulteracao
   senao
      se armazena_adulteracao_sim > 0 entao
         escreval("Percebe-se que os produtos possuem algumas adulterações")
         escreval("-----------------------------")
         escreval("O grupo de marketing recomenda que os funcionários e produtos,")
         escreval("sejam avaliados, mas não se necessita de parar as produções,")
         escreval("ou de métodos mais complexos, apenas de uma revisão geral.")
         escreval("-----------------------------")
         finalizacao_analise_adulteracao
      senao
         escreval("Percebe-se que todos os produtos estão em ordem e sem adulterações")
         escreval("-----------------------------")
         escreval("O grupo de marketing considera que a única coisa a ser feita,")
         escreval("é que os funcionários continuem realizando a produção com legitividade,")
         escreval("e recomenda-se que continuem escolhendo os funcionários da forma correta.")
         escreval("-----------------------------")
         finalizacao_analise_adulteracao
      fimse
   fimse

   // Seção de análise do compartilhamento dos produtos
   escreval("-----------------------------")
   escreval("-----------------------------")
   escreval("Analisando respostas...")
   se armazena_compartilhamento_nao > armazena_compartilhamento_sim entao
      escreval("Percebe-se que os produtos da WEG estão sendo pouco compartilhados")
      escreval("-----------------------------")
      escreval("O grupo de marketing trabalhará para compartilhar os produtos nas,")
      escreval("redes sociais, e utilizar de propagandas pagas para conseguir,")
      escreval("divulgar os produtos da WEG a todos.")
      escreval("-----------------------------")
      finalizacao_final
   senao
      se armazena_compartilhamento_nao > 0 entao
         escreval("Percebe-se que os produtos da WEG estão precisam de mais divulgação")
         escreval("-----------------------------")
         escreval("O grupo de marketing irá pagar marcas famosas para divulgar o que,")
         escreval("se necessita dos produtos da WEG para garantir que as pessoas,")
         escreval("conheçam mais a marca e comprem da mesma para aumentar os lucos da empresa.")
         escreval("-----------------------------")
         finalizacao_final
      senao
         escreval("Percebe-se que os produtos da WEG estão sendo altamente divulgados")
         escreval("-----------------------------")
         escreval("O grupo de marketing apenas irá continuar realizando o seu trabalho,")
         escreval("com proeza para manter os produtos da WEG sob a devida atenção em,")
         escreval("diversas redes sociais e propagandas que farão os produtos ficarem,")
         escreval("cada vez mais conhecidos por todos.")
         escreval("-----------------------------")
         finalizacao_final
      fimse
   fimse
Fimalgoritmo