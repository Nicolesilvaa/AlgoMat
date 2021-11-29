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
	chegamos_ao_fim = "não"
	
	//Automatização do programa :  Tem como funcionalidade encerrar o programa apenas quando o usuário desejar, caso contrário retorna ao menu inicial
	faca{
			
		//Contato inicial com usuário : Apresenta as funcionalidades do programa
		escreva(" Olá! Através do nosso programa podemos oferecer as seguintes informações: \n a quantidade de  raizes de uma função, os intervalos positivos ou negativos do seu gráfico, e sua paridade.\n Observação : Nosso programa não oferece o gráfico da função nem possibilita a entrada de uma função, apenas ajuda a descobrir características da função através dos dados apresentados pelo mesmo. \n Aconselhamos que você tenha uma calculadora gráfica em mãos, para que através de sua analise nosso programa consiga induzir você aos conceitos de função.^_")
		escreva("\n..........................................................................................................................................................................\n")
		escreva("\nDigite qual operação você deseja utilizar  \n QR - Quantidade de Raizes \n IP -  Intervalos Positivos \n IN - Intervalos Negativos \n P - Paridade \n")
		leia(operacao_usuario)	
		limpa()
		//Raizes : Através de informações inseridas pelos usuários, informa quantas raizes a função possui 
		inteiro interseccao_eixoX = 0
		se(operacao_usuario == "QR"){
			escreva("\nQuantas vezes o gráfico da função corta o eixo X no plano cartesiano ? \n (obs: Limitamos a análise para até 5 raizes) \n")
			leia(interseccao_eixoX)
				escolha(interseccao_eixoX){
					caso 1:
						 escreva("A função analisada tem 1 raiz")
						 pare // Impede que as instruções  sejam executadas caso elas sejam falsas
					caso 2:
						escreva("A função analisada tem 2 raizes")
						pare
					caso 3:
						escreva("A função analisada tem 3 raizes")
						pare
					caso 4:
						 escreva("A função analisada tem 4 raizes")
						 pare
					caso 5:
						escreva("A função analisada tem 5 raizes")
						pare
					caso contrario:
						escreva("Opção inválida")
				}
			}					
		//Intervalos positivos da função : Informa ,através de características dadas pelo usuário e analisadas a partir de um grafico , em quais intervalos a função é positiva
		cadeia resposta = "sim", encerrar = "não"
		inteiro valor1 = 0, valor2 = 0
		se(operacao_usuario == "IP"){
				faca{
					limpa()
					escreva(" \nA partir de qual valor a função fica acima do eixo X ?\n  ")
					//Entrada do valor inicial do intervalo
					leia(valor1)
					//Verifica se tem mais algum valor 
					escreva("\nTem mais algum valor no qual esse comportamento se repete ? (sim) (não)\n")
					leia(resposta)
					limpa()
						//Entrada de mais valores, caso tenha
						se(resposta == "sim"){
							escreva("\nDigite o segundo valor e caso a função não tenha fim digite 0\n")
							leia(valor2)
							limpa()
								//Indentifica quando o intervalo tende ao infinito
								se( valor2 == 0){		
									escreva("\nNo intervalo ]",valor1,",+ infinito[ a função é positiva\n")	
								}senao{		
									escreva("\nNo intervalo ]",valor1,",",valor2,"["," a função é positiva\n")
								}	
						}senao{
							escreva("\nNaturalmente quando um intervalo não tende ao infinito ele tem inicio e fim, analise novamente para ver se o comportamento não se repete\n")
						}
				//Flag de resposta : funciona como um interruptor, ler se o usuário deseja encerrar o programa
				escreva("\nDeseja encerrar a função 'Intervalos Positivos da função'?\n")
				leia(encerrar)	
				}enquanto(encerrar == "não")
				
		}
		//Intervalos negativo da função : Informa ,através de características dadas pelo usuário e analisadas a partir de um grafico , em quais intervalos a função é negativa
		cadeia resp = "sim",finalizar_funcao = "não"
		inteiro var1 = 0, var2 = 0
		se(operacao_usuario == "IN"){
				faca{
					limpa()
					escreva(" \nA partir de qual valor a função fica aabaixo do eixo X ?\n  ")
					//Entrada do valor inicial do intervalo
					leia(var1)
					//Verifica se tem mais algum valor 
					escreva("\nTem mais algum valor no qual esse comportamento se repete ? (sim) (não)\n")
					leia(resp)
					limpa()
						//Entrada de mais valores, caso tenha
						se(resp == "sim"){
							escreva("\nDigite o segundo valor e caso a função não tenha fim digite 0\n")
							leia(var2)
							limpa()
								//Indentifica quando o intervalo tende ao infinito
								se( var2 == 0){		
									escreva("\nNo intervalo ]",var1,",- infinito[ a função é negativa\n")	
								}senao{		
									escreva("\nNo intervalo ]",var1,",",var2,"["," a função é negativa\n")
								}		
						}senao{
							escreva("\nNaturalmente quando um intervalo não tende ao infinito ele tem inicio e fim, analise novamente para ver se o comportamento não se repete\n")
						}
				//Flag de resposta : funciona como um interruptor, ler se o usuário deseja encerrar o programa
				escreva("\nDeseja encerrar a função 'Intervalos Negativos da função'?\n")
				leia(finalizar_funcao)	
				limpa()
				}enquanto(finalizar_funcao == "não")
				
			}		

		//Joguinho divertido: Descubra através do domínio e do contradomínio 	apresentado se a função é par ou ímpar
		// Função ímpar : Quando -f(x) = f(-x), para todo x pertencente ao domínio da função
		inteiro dominioI[5] = {-2,-1,0,1,2}
		inteiro contradominioI[5] = {-10,-5,0,5,10}
		cadeia paridadeI 
			se(operacao_usuario == "P"){
			//Apresenta o QUIZ 
			escreva("............................................................................................................")
			escreva("\n Testaremos seu conhecimento sobre paridade de funções\n Portanto, não será necessário que o usuário dê informações analisadas à partir do gráfico")
			escreva("............................................................................................................")
			//Apresenta a 1° questão
			escreva("\n 1°) Dada o domínio(primeira tabela de valores )e o contradomínio(segunda tabela de valores),para F(x)= 5x, diga se essa função é (par) ou (impar)\n")
				//Escreve o domínio e o contradomínio da função exemplo
				para(inteiro cont = 0; cont < 5; cont ++){
					escreva(dominioI[cont],"  ---->  ",contradominioI[cont],"\n")
				}
				leia(paridadeI)
				limpa()
					//Corrige a resposta dada pelo usúario
					se(paridadeI == "impar"){
						escreva("Parabens, você assimilou bem o conteúdo\n")
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
			escreva("\n 2°) Dada o domínio(primeira tabela de valores )e o contradomínio(segunda tabela de valores),para F(x)= x², diga se essa função é (par) ou (impar)\n")
				//Escreve o domínio e o contradomínio da função exemplo
				para(inteiro cont = 0; cont < 11; cont ++){
					escreva(dominioP[cont],"  ---->  ",contradominioP[cont],"\n")
				}
				leia(paridadeP)
				limpa()
					//Corrige a resposta dada pelo usuário
					se(paridadeP == "par"){
						escreva("Parabens, você assimilou bem o conteúdo\n")
						escreva("Sua resposta foi = ", paridadeP,"\n")
					}senao{
						escreva("Ops, revise o conteúdo\n")
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
 * @POSICAO-CURSOR = 1135; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */