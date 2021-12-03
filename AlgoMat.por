programa{
/* 
Universidade Federal da Bahia
Instituto de Humanidades, Artes e Ciências Prof. Milton Santos
Bacharelado Interdiciplinar em Ciências e Tecnologia
Disciplina: HACA38
Equipe : EVERTON SANTANA RODRIGUES, GABRIELA DOS SANTOS OLIVEIRA, JÚLIA FERNANDEZ DE MORAES, LUÍS GUILHERME BARRUECO DOS SANTOS, NICOLE SILVA DE JESUS,RAFAEL SANTOS MARIANO MUNIZ, STEPHANIE SANTOS QUARESMA ROCHA MOREIRA, YASMIN DOS SANTOS MAGALHÃES.

Licença : Este programa é software livre: você pode redistribuí-lo e/ou modificá
 sob os termos da GNU Affero General Public License,
 publicada pela Free Software Foundation, tanto a versão 3 da
 Licença, ou (por sua opção) qualquer versão posterior.

 Este programa é distribuído na esperança de que seja útil,
 mas sem QUALQUER GARANTIA; SEM mesmo a garantia implícita de
 COMERCIALIZAÇÃO ou ADEQUAÇÃO PARA UMA FINALIDADE ESPECÍFICA. Ver o
 GNU Affero General Public License para mais detalhes.

 Você deve ter recebido uma cópia da Licença Pública Geral GNU Affero
 juntamente com este programa. Se não, consulte <https://www.gnu.org/licenses/>.

 http://licencas.softwarelivre.org/agpl-3.0.pt-br.html
*/
	funcao inicio(){
		
	//Variavéis globais
	cadeia operacao_usuario, chegamos_ao_fim
	chegamos_ao_fim = "nao"
	
	//Automatização do programa :  Tem como funcionalidade encerrar o programa apenas quando o usuário desejar, caso contrário retorna ao menu inicial
	faca{
			
		//Contato inicial com usuário : Apresenta as funcionalidades do programa
		escreva(" Ola! Atraves do nosso programa podemos oferecer as seguintes informacoes: \n a quantidade de  raizes de uma funcao, os intervalos positivos ou negativos do seu grafico, e sua paridade.\n Observacao : Nosso programa nao oferece o grafico da funcao nem possibilita a entrada de uma funcao, apenas ajuda a descobrir caracteristicas da funcao atraves dos dados apresentados pelo mesmo. \n Aconselhamos que voce tenha uma calculadora grafica em maos, para que atraves de sua analise nosso programa consiga induzir voce aos conceitos de funcao.^_")
		escreva("\n..........................................................................................................................................................................\n")
		escreva("\nDigite qual operacao você deseja utilizar  \n QR - Quantidade de Raizes \n IP -  Intervalos Positivos \n IN - Intervalos Negativos \n P - Paridade \n")
		leia(operacao_usuario)	
		limpa()
		//Raizes : Através de informações inseridas pelos usuários, informa quantas raizes a função possui 
		inteiro interseccao_eixoX = 0
		se(operacao_usuario == "QR"){
			escreva("\nQuantas vezes o grafico da função corta o eixo X no plano cartesiano ? \n (obs: Limitamos a analise para ate 5 raizes) \n")
			leia(interseccao_eixoX)
				escolha(interseccao_eixoX){
					caso 1:
						 escreva("A funcao analisada tem 1 raiz")
						 pare // Impede que as instruções  sejam executadas caso elas sejam falsas
					caso 2:
						escreva("A funcao analisada tem 2 raizes")
						pare
					caso 3:
						escreva("A funcao analisada tem 3 raizes")
						pare
					caso 4:
						 escreva("A funcao analisada tem 4 raizes")
						 pare
					caso 5:
						escreva("A funcao analisada tem 5 raizes")
						pare
					caso contrario:
						escreva("Opcao invalida")
				}
			}					
		//Intervalos positivos da função : Informa ,através de características dadas pelo usuário e analisadas a partir de um grafico , em quais intervalos a função é positiva
		cadeia resposta = "sim", encerrar = "nao"
		inteiro valor1 = 0, valor2 = 0
		se(operacao_usuario == "IP"){
				faca{
					limpa()
					escreva(" \nA partir de qual valor a funcao fica acima do eixo X ?\n  ")
					//Entrada do valor inicial do intervalo
					leia(valor1)
					//Verifica se tem mais algum valor 
					escreva("\nTem mais algum valor no qual esse comportamento se repete ? (sim) (nao)\n")
					leia(resposta)
					limpa()
						//Entrada de mais valores, caso tenha
						se(resposta == "sim"){
							escreva("\nDigite o segundo valor e caso a funcao nao tenha fim digite 0\n")
							leia(valor2)
							limpa()
								//Indentifica quando o intervalo tende ao infinito
								se( valor2 == 0){		
									escreva("\nNo intervalo ]",valor1,",+ infinito[ a funcao é positiva\n")	
								}senao{		
									escreva("\nNo intervalo ]",valor1,",",valor2,"["," a funcao é positiva\n")
								}	
						}senao{
							escreva("\nNaturalmente quando um intervalo nao tende ao infinito ele tem inicio e fim, analise novamente para ver se o comportamento nao se repete\n")
						}
				//Flag de resposta : funciona como um interruptor, ler se o usuário deseja encerrar o programa
				escreva("\nDeseja encerrar a funcao 'Intervalos Positivos da funcao'?\n")
				leia(encerrar)	
				}enquanto(encerrar == "nao")
				
		}
		//Intervalos negativo da função : Informa ,através de características dadas pelo usuário e analisadas a partir de um grafico , em quais intervalos a função é negativa
		cadeia resp = "sim",finalizar_funcao = "nao"
		inteiro var1 = 0, var2 = 0
		se(operacao_usuario == "IN"){
				faca{
					limpa()
					escreva(" \nA partir de qual valor a funcao fica aabaixo do eixo X ?\n  ")
					//Entrada do valor inicial do intervalo
					leia(var1)
					//Verifica se tem mais algum valor 
					escreva("\nTem mais algum valor no qual esse comportamento se repete ? (sim) (nao)\n")
					leia(resp)
					limpa()
						//Entrada de mais valores, caso tenha
						se(resp == "sim"){
							escreva("\nDigite o segundo valor e caso a funcao nao tenha fim digite 0\n")
							leia(var2)
							limpa()
								//Indentifica quando o intervalo tende ao infinito
								se( var2 == 0){		
									escreva("\nNo intervalo ]",var1,",- infinito[ a funcao é negativa\n")	
								}senao{		
									escreva("\nNo intervalo ]",var1,",",var2,"["," a funcao é negativa\n")
								}		
						}senao{
							escreva("\nNaturalmente quando um intervalo nao tende ao infinito ele tem inicio e fim, analise novamente para ver se o comportamento nao se repete\n")
						}
				//Flag de resposta : funciona como um interruptor, ler se o usuário deseja encerrar o programa
				escreva("\nDeseja encerrar a funcao 'Intervalos Negativos da funcao'?\n")
				leia(finalizar_funcao)	
				limpa()
				}enquanto(finalizar_funcao == "nao")
				
			}		

		//Joguinho divertido: Descubra através do domínio e do contradomínio 	apresentado se a função é par ou ímpar
		// Função ímpar : Quando -f(x) = f(-x), para todo x pertencente ao domínio da função
		inteiro dominioI[5] = {-2,-1,0,1,2}
		inteiro contradominioI[5] = {-10,-5,0,5,10}
		cadeia paridadeI 
			se(operacao_usuario == "P"){
			//Apresenta o QUIZ 
			escreva("............................................................................................................")
			escreva("\n Testaremos seu conhecimento sobre paridade de funcoes\n Portanto, nao sera necessario que o usuario de informacoes analisadas a partir do grafico")
			escreva("............................................................................................................")
			//Apresenta a 1° questão
			escreva("\n 1°) Dada o dominio(primeira tabela de valores )e o contradominio(segunda tabela de valores),para F(x)= 5x, diga se essa funcao e (par) ou (impar)\n")
				//Escreve o domínio e o contradomínio da função exemplo
				para(inteiro cont = 0; cont < 5; cont ++){
					escreva(dominioI[cont],"  ---->  ",contradominioI[cont],"\n")
				}
				leia(paridadeI)
				limpa()
					//Corrige a resposta dada pelo usúario
					se(paridadeI == "impar"){
						escreva("Parabens, você assimilou bem o conteudo\n")
						escreva("Sua resposta foi = ", paridadeI,"\n")
						
					}senao{
						escreva("Ops, revise o conteúdo\n")
						escreva("Sua resposta foi = ", paridadeI,"\n")
						
					}
			}
		//Função Par : f(x) = f(-x), para todo x pertencente ao domínio da função
		inteiro dominioP[11] = {-5,-4,-3,-2,-1,0,1,2,3,4,5}
		inteiro contradominioP[11] = {25,16,9,4,1,0,1,4,9,16,25}
		cadeia paridadeP 
			se(operacao_usuario == "P"){
			//Apresenta a  2° questão
			escreva("\n 2°) Dada o dominio(primeira tabela de valores )e o contradominio(segunda tabela de valores),para F(x)= x², diga se essa funcao e (par) ou (impar)\n")
				//Escreve o domínio e o contradomínio da função exemplo
				para(inteiro cont = 0; cont < 11; cont ++){
					escreva(dominioP[cont],"  ---->  ",contradominioP[cont],"\n")
				}
				leia(paridadeP)
				limpa()
					//Corrige a resposta dada pelo usuário
					se(paridadeP == "par"){
						escreva("Parabens, voce assimilou bem o conteudo\n")
						escreva("Sua resposta foi = ", paridadeP,"\n")
					}senao{
						escreva("Ops, revise o conteudo\n")
						escreva("Sua resposta foi = ", paridadeP,"\n")
					}
			}
			
		// Flag de resposta : funciona como um interruptor, ler se o usuário deseja finalizar o programa
		escreva("\nDeseja encerrar o programa? ")
		leia(chegamos_ao_fim)
		limpa()
		}enquanto(chegamos_ao_fim != "sim")
		
		
	}
												
}	
		
			
			
			
			
			
			
			
			
		
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 8688; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */