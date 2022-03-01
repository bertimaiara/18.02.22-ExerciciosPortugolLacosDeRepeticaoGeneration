programa {
//A prefeitura de uma cidade fez uma pesquisa entre 20 de seus habitantes, coletando
//dados sobre o salário e número de filhos. A prefeitura deseja saber:   
//a) média do salário da população; 
//b) média do número de filhos; 
//c) maior salário; 
//d) percentual de pessoas com salário até R$100,00. 

	inclua biblioteca Matematica --> mat
	funcao inicio()
	{
		inteiro salarioMenor100 = 0
		real habitantes = 20, filhos, quantidadeFilhos = 0, salario, maiorSalario = 0, somaSalario = 0, mediaSalario = 0, percentual = 0, mediaQuantidadeFilhos = 0
		
		para(inteiro i = 1; i <= habitantes; i++)
		{
			escreva("\nInforme o salário: ")
			leia(salario)

			escreva("Informe a quantidade de filhos: ")
			leia(filhos)

			limpa()

			mat.arredondar(somaSalario += salario, 2)
			mediaSalario = mat.arredondar((somaSalario / habitantes),2)

			// VERIFICA E GUARDA O MAIOR SALÁRIO DIGITADO
			se(salario > maiorSalario)
			{
				maiorSalario = mat.arredondar(salario, 2)
			}

			// VERIFICA E SOMA A QUANTIDADE DE PESSOAS COM O SLÁRIO MENOR OU IGUAL A 100
			se(salario <= 100.0)
			{
				salarioMenor100++
				percentual = mat.arredondar(((salarioMenor100 * 100) / habitantes), 2)
			}
			
			quantidadeFilhos += filhos
			mediaQuantidadeFilhos = mat.arredondar((quantidadeFilhos / habitantes),2)
		}
		escreva("\n *Informações adicionais* ")
		escreva("\n--------------------------------")
		escreva("\nMÉDIA SALÁRIO = " + mediaSalario)
		escreva("\nMAIOR SALÁRIO = " + maiorSalario)
		escreva("\nMÉDIA DE FILHOS = " + mediaQuantidadeFilhos)
		escreva("\nPERCENTUAL DE PESSOAS COM SALÁRIO ATÉ R$100,00 = " + percentual + "%")
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 431; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */