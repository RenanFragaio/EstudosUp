function deletaDado (idDado){
				//seta o caminho para quando clicar em "Sim".
				var href = "../artigo/excluir_artigo.php?id_artigo=" + idDado;
				//adiciona atributo de delecao ao link
				$('#confirmaDelecao').prop("href", href);
}