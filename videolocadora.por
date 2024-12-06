programa
{	
	inteiro filmesCadastrados = 0

	funcao inicio()
	{
		cadeia nomes [10] 
		inteiro quantoAlugado [10], anos [10]
		logico disponivel[10] 


		exibirMenuEDefineOpcao(nomes, quantoAlugado, anos, disponivel)		
	}

	funcao alugarFilme(cadeia nomes [], inteiro quantoAlugado [], inteiro anos [], logico disponivel []){
		inteiro filmeEscolhido
		
		escreva("\n\n ### Alugar um filme ###\n\n")
		escreva("Qual filme deseja alugar?\n")
		para(inteiro i = 0; i < filmesCadastrados; i++){
			se(disponivel[i]){
				escreva((i+1) + ". " + nomes[i] + "\n")
			}
		}
		escreva("\n")

		leia(filmeEscolhido)

		disponivel[filmeEscolhido - 1] = falso

		escreva("Filme " + nomes[filmeEscolhido - 1] + " alugado com sucesso!\n")

		exibirMenuEDefineOpcao(nomes, quantoAlugado, anos, disponivel)	
		
	}

	funcao cadastrarFilme(cadeia nomes [], inteiro quantoAlugado [], inteiro anos [], logico disponivel []){
		cadeia nome
		inteiro ano, i 

		i = filmesCadastrados
		
		se(filmesCadastrados == 10){
			escreva("\nLimite de 10 filmes atingido!\n")
		}

		escreva("\nQual o nome do filme?\n")
		leia(nome)

		escreva("Qual o ano de lançamento?\n")
		leia(ano)

		nomes[i] = nome
		anos[i] = ano
		quantoAlugado[i] = 0
		disponivel[i] = verdadeiro

		escreva("\n\nFilme " + nome + " cadastrado com sucesso!\n\n")
		filmesCadastrados++

		exibirMenuEDefineOpcao(nomes, quantoAlugado, anos, disponivel)
	}
	

	funcao devolverFilme(cadeia nomes [], inteiro quantoAlugado [], inteiro anos [], logico disponivel []){
		inteiro filmeEscolhido
		escreva("\n\n### Devolver Filme ###\n\n")
		para(inteiro i = 0; i < filmesCadastrados; i++){
			se(nao disponivel[i]){
				escreva((i+1) + ". " + nomes[i] + "\n")
			}
		}
		escreva("\n")


		escreva("\nQual filme deseja devolver?\n")
		leia(filmeEscolhido)

		disponivel[filmeEscolhido - 1] = verdadeiro

		escreva("\n\nFilme " + nomes[filmeEscolhido - 1] + " devolvido com sucesso!\n\n")

		exibirMenuEDefineOpcao(nomes, quantoAlugado, anos, disponivel)
	}

	funcao exibirMenuEDefineOpcao(cadeia nomes [], inteiro quantoAlugado [], inteiro anos [], logico disponivel []){
		inteiro opcao = 0

		
		escreva("Locadora Filmes Incriveis\nEscolha uma opçao: \n")
		escreva("1. Cadastrar um filme\n")
		escreva("2. Listar filmes locados e disponíveis\n")
		escreva("3. Filmes locados\n")
		escreva("4. Alugar um filme\n")
		escreva("5. Devolver um filme\n")
		escreva("6. Filme mais locado\n")
		escreva("7. Sair do programa\n")
		
		leia(opcao)

		escolha(opcao){
			caso 1:
				cadastrarFilme(nomes, quantoAlugado, anos, disponivel)
			caso 2:
				listarFilmes(nomes, quantoAlugado, anos, disponivel)
			caso 3: 
				filmesLocados(nomes, quantoAlugado, anos, disponivel)
			caso 4:
				alugarFilme(nomes, quantoAlugado, anos, disponivel)
			caso 5: 
				devolverFilme(nomes, quantoAlugado, anos, disponivel)
			caso 6:
				filmeMaisLocado(nomes, quantoAlugado, anos, disponivel)
			caso 7:
				sairDoPrograma()
		}
	}

	funcao filmeMaisLocado(cadeia nomes [], inteiro quantoAlugado [], inteiro anos [], logico disponivel []){
		
	}


	funcao filmesLocados(cadeia nomes [], inteiro quantoAlugado [], inteiro anos [], logico disponivel []){
		escreva("\n\n### Filmes Locados ###\n\n")
		para(inteiro i = 0; i < filmesCadastrados; i++){
			se(nao disponivel[i]){
				escreva(nomes[i])
			} 
		}
		escreva("\n\n")
		exibirMenuEDefineOpcao(nomes, quantoAlugado, anos, disponivel)
	}

	
	funcao listarFilmes(cadeia nomes [], inteiro quantoAlugado [], inteiro anos [], logico disponivel []){
		escreva("\n\n### Filmes Cadastrados ###\n")
		para(inteiro i = 0; i < filmesCadastrados; i++){
			escreva((i + 1) + ". " + nomes[i] + " | " + anos[i] + " | ")
			se(disponivel[i]){
				escreva(" Disponível\n")
			} senao {
				escreva(" Locado\n")
			}
		}
		escreva("\n\n")
		exibirMenuEDefineOpcao(nomes, quantoAlugado, anos, disponivel)
	}

	funcao sairDoPrograma(){
		
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 1993; 
 * @DOBRAMENTO-CODIGO = [123];
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */