drop database if exists id8729701_estudosup;

create database id8729701_estudosup

default character set utf8
default collate utf8_general_ci;

use id8729701_estudosup;

create table usuario
(
id_usuario int auto_increment,
nome varchar(30),
email varchar(80),
senha varchar(60),
nivel varchar(30),
foto varchar(255),
Primary key(id_usuario)
);

create table artigo
(
id_artigo int auto_increment,
titulo varchar(80),
subtitulo text,
texto text,
visualizacoes  int default 0,
imagem varchar(255),
visivel varchar(3),
data_pub datetime,
nome_categoria varchar(80),
Primary key(id_artigo)
);

create table categoria
(
nome_categoria varchar(80),
Primary key(nome_categoria)
);

alter table artigo
add(
Foreign Key(nome_categoria)
references categoria(nome_categoria)
on update cascade
on delete restrict
);

insert into usuario(nome,email,senha,nivel,foto)
values ("Administrador","admin@exemplo.com","a!d@m#i$n","adm","../usuario/foto/semfoto.jpg");

insert into usuario(nome,email,senha,nivel,foto)
values ("Renan dos Santos Fragaio","renanfragaio@hotmail.com","123456","adm","../usuario/foto/semfoto.jpg");

insert into usuario(nome,email,senha,nivel,foto)
values ("Júlio César Júnior","julinho15.junior@gmail.com","123456","visitante","../usuario/foto/semfoto.jpg");

insert into usuario(nome,email,senha,nivel,foto)
values ("Renan Outro Email","resinhofragaio@gmail.com","123456","visitante","../usuario/foto/semfoto.jpg");

insert into categoria(nome_categoria)
values ("Português");

insert into categoria(nome_categoria)
values ("Matemática");

insert into categoria(nome_categoria)
values ("História");

insert into categoria(nome_categoria)
values ("Geografia");

insert into categoria(nome_categoria)
values ("Biologia");

insert into categoria(nome_categoria)
values ("Física");

insert into categoria(nome_categoria)
values ("Química");

insert into categoria(nome_categoria)
values ("Vestibular");

insert into categoria(nome_categoria)
values ("Dicas de Estudo");

insert into categoria(nome_categoria)
values ("Orientação Profissional");

insert into categoria(nome_categoria)
values ("Ocultado");

insert into artigo(titulo,subtitulo,texto,imagem,visivel,data_pub,nome_categoria)
values ("Funções de Linguagem","Um dos temas de Portugês mais cobrados no ENEM!","A linguagem, uma eficiente forma de comunicação, é elemento fundamental para estabelecermos comunicação com outras pessoas. Por ser múltipla e apresentar peculiaridades de acordo com a intenção do falante, divide-se em seis funções:

<b>Função referencial ou denotativa:</b> transmite uma informação objetiva, expõe dados da realidade de modo objetivo, não faz comentários, nem avaliação. Geralmente, o texto apresenta-se na terceira pessoa do singular ou plural, pois transmite impessoalidade. A linguagem é denotativa, ou seja, não há possibilidades de outra interpretação além da que está exposta.
Em alguns textos é mais predominante essa função, como: científicos, jornalísticos, técnicos, didáticos ou em correspondências comerciais.
Por exemplo: “Bancos terão novas regras para acesso de deficientes”. O Popular, 16 out. 2008.

<b>Função emotiva ou expressiva:</b> o objetivo do emissor é transmitir suas emoções e anseios. A realidade é transmitida sob o ponto de vista do emissor, a mensagem é subjetiva e centrada no emitente e, portanto, apresenta-se na primeira pessoa. A pontuação (ponto de exclamação, interrogação e reticências) é uma característica da função emotiva, pois transmite a subjetividade da mensagem e reforça a entonação emotiva. Essa função é comum em poemas ou narrativas de teor dramático ou romântico.
Por exemplo: “Porém meus olhos não perguntam nada./ O homem atrás do bigode é sério, simples e forte./Quase não conversa./Tem poucos, raros amigos/o homem atrás dos óculos e do bigode.” (Poema de sete faces, Carlos Drummond de Andrade)

<b>Função conativa ou apelativa:</b> O objetivo é de influenciar, convencer o receptor de alguma coisa por meio de uma ordem (uso de vocativos), sugestão, convite ou apelo (daí o nome da função). Os verbos costumam estar no imperativo (Compre! Faça!) ou conjugados na 2ª ou 3ª pessoa (Você não pode perder! Ele vai melhorar seu desempenho!). Esse tipo de função é muito comum em textos publicitários, em discursos políticos ou de autoridade.
Por exemplo: Não perca a chance de ir ao cinema pagando menos!

<b>Função metalinguística:</b> Essa função refere-se à metalinguagem, que é quando o emissor explica um código usando o próprio código. Quando um poema fala da própria ação de se fazer um poema, por exemplo. Veja:

“Pegue um jornal
Pegue a tesoura.
Escolha no jornal um artigo do tamanho que você deseja dar a seu poema.
Recorte o artigo.”

Este trecho da poesia, intitulada “Para fazer um poema dadaísta” utiliza o código (poema) para explicar o próprio ato de fazer um poema.

<b>Função fática:</b> O objetivo dessa função é estabelecer uma relação com o emissor, um contato para verificar se a mensagem está sendo transmitida ou para dilatar a conversa.
Quando estamos em um diálogo, por exemplo, e dizemos ao nosso receptor “Está entendendo?”, estamos utilizando este tipo de função ou quando atendemos o celular e dizemos “Oi” ou “Alô”.

<b>Função poética:</b> O objetivo do emissor é expressar seus sentimentos através de textos que podem ser enfatizados por meio das formas das palavras, da sonoridade, do ritmo, além de elaborar novas possibilidades de combinações dos signos lingüísticos. É presente em textos literários, publicitários e em letras de música.
Por exemplo: negócio/ego/ócio/cio/0

Na poesia acima “Epitáfio para um banqueiro”, José de Paulo Paes faz uma combinação de palavras que passa a ideia do dia a dia de um banqueiro, de acordo com o poeta.

Por Sabrina Vilarinho
Graduada em Letras

fonte:http://brasilescola.uol.com.br/gramatica/funcoes-linguagem.htm","../artigo/imagem-artigo/fl.jpg","Sim","2017/01/09 - 16:30","Português");

insert into artigo(titulo,subtitulo,texto,imagem,visivel,data_pub,nome_categoria)
values ("Figuras de Linguagem","Um dos temas de Portugês mais cobrados no ENEM!","TEXTO TEXTO TEXTO","../artigo/imagem-artigo/portugues.jpg","Não","2017/01/04 - 16:00","Português");

insert into artigo(titulo,subtitulo,texto,imagem,visivel,data_pub,nome_categoria)
values ("Elementos da Comunicação","Um dos temas de Portugês mais cobrados no ENEM!","TEXTO TEXTO TEXTO","../artigo/imagem-artigo/portugues.jpg","Não","2017/01/04 - 18:00","Português");

insert into artigo(titulo,subtitulo,texto,imagem,visivel,data_pub,nome_categoria)
values ("Teorema de Pitágoras","O teorema de Pitágoras relaciona as medidas dos catetos de um triângulo retângulo à medida de sua hipotenusa.","O Teorema de Pitágoras é considerado uma das principais descobertas da Matemática. Ele descreve uma relação existente no triângulo retângulo. Vale lembrar que o triângulo retângulo pode ser identificado pela existência de um ângulo reto, isto é, que mede 90º. O triângulo retângulo é formado por dois catetos e a hipotenusa, que constitui o maior segmento do triângulo e localiza-se opostamente ao ângulo reto. Observe:

Catetos: a e b
Hipotenusa: c

Triângulo retângulo de catetos a e b e hipotenusa c
Triângulo retângulo de catetos a e b e hipotenusa c

O Teorema de Pitágoras diz que: “a soma dos quadrados dos catetos é igual ao quadrado da hipotenusa.”

a² + b² = c²

Exemplos:

1º) Calcule o valor do segmento desconhecido no triângulo retângulo a seguir.



x² = 9² + 12²
x² = 81 + 144
x² = 225
√x² = √225
x = 15

A descoberta dos números irracionais

Foi por meio do Teorema de Pitágoras que os números irracionais começaram a ser introduzidos na Matemática. O primeiro irracional a surgir foi √2, que apareceu no cálculo da hipotenusa de um triângulo retângulo com catetos medindo 1. Veja:



x² = 1² + 1²
x² = 1 + 1
x² = 2
√x² = √2
x = √2
√2 = 1,414213562373....

2º) Calcule o valor do cateto no triângulo retângulo abaixo:



x² + 20² = 25²
x² + 400 = 625
x² = 625 – 400
x² = 225
√x² = √225
x = 15

3º) Um ciclista acrobático passará de um prédio a outro com uma bicicleta especial e sobre um cabo de aço, como demonstra o esquema a seguir:



Qual é a medida mínima do comprimento do cabo de aço?



Pelo Teorema de Pitágoras, temos:

x² = 10² + 40²
x² = 100 + 1600
x² = 1700
x = 41,23 (aproximadamente)

Por Marcos Noé
Graduado em Matemática

fonte:http://brasilescola.uol.com.br/matematica/teorema-pitagoras.htm","../artigo/imagem-artigo/triangulo-retangulo.jpg","Sim","2017/01/04 - 20:00","Matemática");

insert into artigo(titulo,subtitulo,texto,imagem,visivel,data_pub,nome_categoria)
values ("Análise Combinatória","Um dos temas de Matemática mais cobrados no ENEM!","TEXTO TEXTO TEXTO","../artigo/imagem-artigo/matematica.jpg","Não","2017/01/05 - 16:00","Matemática");

insert into artigo(titulo,subtitulo,texto,imagem,visivel,data_pub,nome_categoria)
values ("Progressão Aritmética(PA)","Um dos temas de Matemática mais cobrados no ENEM!","Progressão aritmética é um tipo de seqüência numérica que a partir do segundo elemento cada termo (elemento) é a soma do seu antecessor por uma constante. 

(5,7,9,11,13,15,17) essa seqüência é uma Progressão aritmética, pois os seus elementos são formados pela soma do seu antecessor com a constante 2. 
a1 = 5

a2 = 5 + 2 = 7 
a3 = 7 + 2 = 9 
a4 = 9 + 2 = 11 
a5 = 11 + 2 = 13 
a6 = 13 + 2 = 15 
a7 = 15 + 2 = 17 

Essa constante é chamada de razão e representada por r. Dependendo do valor de r a progressão aritmética pode ser crescente, constante ou decrescente. 

P.A crescente: r > 0, então os elementos estarão em ordem crescente. 

P.A constate: r = 0, então os elementos serão todos iguais. 

P.A decrescente: r < 0, então os elementos estarão em ordem decrescente. 

<b>Termo Geral de uma P.A</b>

Considere uma P.A finita qualquer (a1, a2, a3, a4, ... , an) de razão igual a r, sabemos que: 

a2 – a1 = r → a2 = a1 + r 
a3 – a2 = r → a3 – a1 – r = r → a3 = a1 + 2r 
a4 – a3 = r → a4 – a1 – 2r = r → a4 = a1 + 3r 
… 

a n = a1 + (n – 1) . r 

<b>Portanto o termo geral de uma P.A é calculado utilizando a seguinte fórmula: 

a n = a1 + (n – 1) . r</b>

Exemplo 1: 
Calcule o 16º termo de uma P.A, sabendo que a1 = -10 e r = 3. 

an = a1 + (n – 1) . r 
a16 = -10 + (16 – 1) . 3 
a16 = -10 + 15 . 3 
a16 = -10 + 45 
a16 = 35 

O 16º termo de uma P.A é 35. 

<b>Soma dos termos de uma P.A finita</b> 

Se tivermos uma P.A finita qualquer, para somarmos os seus termos (elementos) chegaremos à seguinte fórmula para somarmos os n elementos de uma P.A finita. 

Sn = <u>(a1 + an) . n </u>
                2 

Exemplo 2: 

Determine uma P.A sabendo que a soma de seus 8 primeiros termos é 324 e que 
a 8 = 79. 

Retirando os dados: 
n = 8 
Sn = 324 
a 8 = 79 

Sn = <u>(a1 + an) . n </u>
                2 

324 = <u>(a1 + 79) . 8 </u>
                2 

324 . 2 = 8 a1 + 79 . 8 
648 = 8 a1 + 632 
16 = 8 a1 
a1 = 2 

Precisamos encontrar o valor de r (razão) para encontrar o valor dos outros elementos. 

a n = a1 + (n – 1) . r 
79 = 2 + (8 – 1) . r 
79 = 2 + 7 . r 
79 – 2 = 7r 
77 = r
 7
r = 11","../artigo/imagem-artigo/matematica.jpg","Não","2017/01/09 - 16:42","Matemática");

insert into artigo(titulo,subtitulo,texto,imagem,visivel,data_pub,nome_categoria)
values ("1ª Guerra Mundial","Um dos temas de História mais cobrados no ENEM!","TEXTO TEXTO TEXTO","../artigo/imagem-artigo/historia.jpg","Não","2017/01/05 - 18:00","História");

insert into artigo(titulo,subtitulo,texto,imagem,visivel,data_pub,nome_categoria)
values ("2ª Guerra Mundial","Um dos temas de História mais cobrados no ENEM!","<b>Antecedentes da Segunda Guerra Mundial</b>

Após a Primeira Guerra Mundial, a Liga das Nações falhou em manter a paz, especialmente porque representavam apenas o interesse das nações vencedoras do conflito. A Revolução Russa e a Crise de 1929, serviram para estremecer a burguesia europeia com medo do avanço do comunismo no continente.
Na  Alemanha do pós Primeira Guerra Mundial, depois de sucessivas crises políticas e econômicas  Adolf Hitler chega  ao poder em 1933 prometendo aos alemães recuperar o orgulho perdido na derrota recente, e defende para os os alemães um país expansionista e poderoso. O que Hitler anunciara era uma realidade oposta ao que vivia a Alemanha depois da derrota da Alemanha na 1ª Guerra Mundial, da qual o país saiu com severas punições econômicas impostas no Tratado de Versalhes, assinado ao final da primeira Grande Guerra.

Hitler conseguiu rapidamente armar o país novamente, combater a inflação, gerar empregos e anexar territórios, gerando um forte nacionalismo entre a população alemã. É importante perceber como foi importante esta postura de Hitler, uma vez que o povo alemão estava descrente e desmoralizado com o fim da Primeira Guerra.
A Segunda Guerra Mundial foi principalmente desencadeada pelas nações que tinham governos de orientação fascista e nazista na Europa (Alemanha e Itália), e um governo Imperial na Ásia (o Japão). Juntos, estes três países formavam ‘As Potências do Eixo’.  Em 1936, a Alemanha fez um pacto com o Japão (anti-Komintern), a fim de combater o comunismo. O que ia contra a URSS, mas também aos demais países como a França, Inglaterra e Estados Unidos.

Pode-se dizer que a guerra passou por três fases: as vitórias do EIXO (Alemães, Italianos e Japoneses), de 1939 a 1941); O equilíbrio de forças (1941-43); e as vitórias dos países ALIADOS (liderados por Estados Unidos, União Soviética e Inglaterra) de 1943 a 1945.

O Brasil entra oficialmente na 2ª Guerra Mundial em 31 de agosto de 1942, declarando-se em guerra contra a Alemanha. A região Nordeste do Brasil, em função da proximidade com os continentes da África e da Europa passou a funcionar como base de apoio e de logística para as tropas norte-americanas. E, soldados brasileiros foram enviados para combater nas tropas Aliadas na Europa.

<b>A Segunda Guerra Mundial</b>
A guerra inicia-se pela invasão da Polônia pela Alemanha, em 1º de setembro de 1939. Por conta disto, a Inglaterra e a França decidiram declarar guerra à Alemanha. Enquanto isto, a Rússia firmou o Acordo Nazi-Soviético, que estabelecia ausência de ataques entre a Rússia e a Alemanha. Estava armado o cenário da 2ª Guerra Mundial.
As estratégias alemãs surpreenderam os aliados, e em 1940, ocupou a Dinamarca, e posteriormente a Noruega. Graças a estas conquistas, o primeiro-ministro inglês, Chamberlain, foi substituído por Churchill.

Os franceses adotaram uma tática de guerra ultrapassada, pois acreditavam que estavam protegidos pela chamada “Linha Maginot”, centenas de quilômetros fortificados que iam da fronteira da Bélgica à Suíça. Porém, os alemães romperam esta linha, e partiram rumo à Paris. A França, rendida, assinou um acordo, que determinou que seu território seria dividido em dois: uma zona “livre”, governada por um governo colaboracionista e uma outra área que ficou sob domínio dos alemães. Veja na imagem Hitler no auge do poder, comandando as forças armadas alemãs.
Com a derrota francesa, Hitler esperava a rendição da Inglaterra, porém não foi o que aconteceu. Para tentar remediar esta situação e pressionar os ingleses  a Alemanha organizou ataques aéreos constantes à Inglaterra. Londres era bombardeada praticamente todas as noites, o que ocasionou muitas mortes de civis ingleses. Porém, os soldados alemães não tinham acesso ao território da Inglaterra, e sofreram muitas baixas nos combates aéreos e navais com os ingleses. Hitler não conseguia derrotar ou conseguir uma rendição dos britânicos.

A Itália demorou a se juntar à guerra, pois Mussolini achava que o país não estava pronto para um conflito armado. Porém, com as subsequentes vitórias alemãs, a Itália adentrou a guerra ao lado do Eixo. Porém, em 1940, os ingleses conseguiram conter os avanços italianos.

O pacto Nazi-Soviético foi bem sucedido, até que em 1941, Hitler decidiu invadir a Rússia. Este excesso de otimismo dos alemães, aliado à imensidão do território russo e seu inverno rigoroso e a grande mobilização popular foram alguns dos fatores que explicam o insucesso alemão a partir daí.

Os Estados Unidos da América se juntaram à guerra após o ataque japonês a base norte-americana Pearl Harbor, em 1941. Este ataque devastador foi motivado principalmente pelos conflitos econômicos entre estes dois países, pois disputavam mercados.

fonte:https://blogdoenem.com.br/historia-enem-2a-guerra-mundial/","../artigo/imagem-artigo/2guerra.jpg","Sim","2017/01/09 - 14:45","História");

insert into artigo(titulo,subtitulo,texto,imagem,visivel,data_pub,nome_categoria)
values ("República Velha","Um dos temas de História mais cobrados no ENEM!","TEXTO TEXTO TEXTO","../artigo/imagem-artigo/historia.jpg","Não","2017/01/05 - 20:20","História");

insert into artigo(titulo,subtitulo,texto,imagem,visivel,data_pub,nome_categoria)
values ("Problemas Ambientais Urbanos","Um dos temas de Geografia mais cobrados no ENEM!","A urbanização se intensificou com a expansão das atividades industriais, fato que atraiu (e ainda atrai) milhões de pessoas para as cidades. Esse fenômeno provocou mudanças drásticas na natureza, desencadeando diversos problemas ambientais, como poluições, desmatamento, redução da biodiversidade, mudanças climáticas, produção de lixo e de esgoto, entre outros.

A expansão da rede urbana sem o devido planejamento ocasiona a ocupação de áreas inadequadas para a moradia. Encostas de morros, áreas de preservação permanente, planícies de inundação e áreas próximas a rios são loteadas e ocupadas. Os resultados são catastróficos, como o deslizamento de encostas, ocasionado a destruição de casas e um grande número de vítimas fatais.


A compactação do solo e o asfaltamento, muito comuns nas cidades, dificultam a infiltração da água, visto que o solo está impermeabilizado. Sendo assim, o abastecimento do lençol freático fica prejudicado, reduzindo a quantidade de água subterrânea. Outro fator agravante dessa medida é o aumento do escoamento superficial, podendo gerar grandes alagamentos nas áreas mais baixas.

Outro problema ambiental urbano preocupante é o lixo. O aumento populacional causa uma maior produção de lixo, especialmente no atual modelo de produção e consumo. A coleta, destino e tratamento do lixo são questões a serem solucionadas por várias cidades. Em muitos locais, o lixo é despejado nos chamados lixões, locais sem estrutura para o tratamento dos resíduos. As consequências são: odor, proliferação de doenças, contaminação do solo e do lençol freático pelo chorume, etc.

O déficit nos serviços de saneamento básico contribui para o cenário de degradação ambiental. A quantidade de esgoto doméstico e industrial lançado nos rios sem o devido tratamento é imensa. Esse fenômeno reduz a qualidade das águas, gerando a mortandade de espécies aquáticas e a redução do uso dessa água para o consumo humano.

Nos grandes centros industrializados, os problemas ambientais são mais alarmantes. Nesses locais, a emissão de gases dos automóveis e das fábricas polui a atmosfera e retém calor, intensificando o efeito estufa. Com isso, vários transtornos são gerados à população: doenças respiratórias, chuvas ácidas, inversão térmica, ilhas de calor, etc.

A poluição sonora e a visual também geram transtornos para a população. Os ruídos ensurdecedores e o excesso de elementos destinados à comunicação visual espalhados pelas cidades (cartazes, banners, placas, outdoors, fios elétricos, pichações, etc.) afetam a saúde dos habitantes.

Portanto, diante desse cenário de diferentes problemas ambientais urbanos, é urgente a necessidade de elaboração e aplicação de políticas ambientais eficazes, além da conscientização da população. Entre as medidas a serem tomadas estão a redução da produção do lixo, a reciclagem, o tratamento adequado do lixo (incineração ou compostagem), o saneamento ambiental, o planejamento urbano, a educação ambiental, a redução da emissão de gases poluentes, entre outras.
Por Wagner de Cerqueira e Francisco
Graduado em Geografia

fonte:http://mundoeducacao.bol.uol.com.br/geografia/os-problemas-ambientais-urbanos.htm","../artigo/imagem-artigo/p-amb-urbano.jpg","Sim","2017/01/08 - 15:40","Geografia");

insert into artigo(titulo,subtitulo,texto,imagem,visivel,data_pub,nome_categoria)
values ("Conferências Ambientais","Um dos temas de Geografia mais cobrados no ENEM!","TEXTO TEXTO TEXTO","../artigo/imagem-artigo/geografia.jpg","Não","2017/01/06 - 18:30","Geografia");

insert into artigo(titulo,subtitulo,texto,imagem,visivel,data_pub,nome_categoria)
values ("Países Emergentes","Um dos temas de Geografia mais cobrados no ENEM!","TEXTO TEXTO TEXTO","../artigo/imagem-artigo/geografia.jpg","Não","2017/01/06 - 19:15","Geografia");

insert into artigo(titulo,subtitulo,texto,imagem,visivel,data_pub,nome_categoria)
values ("Sistema Nervoso","Um dos temas de Biologia mais cobrados no ENEM!","TEXTO TEXTO TEXTO","../artigo/imagem-artigo/biologia.jpg","Não","2017/01/06 - 10:30","Biologia");

insert into artigo(titulo,subtitulo,texto,imagem,visivel,data_pub,nome_categoria)
values ("Divisão Celular","Um dos temas de Biologia mais cobrados no ENEM!","TEXTO TEXTO TEXTO","../artigo/imagem-artigo/biologia.jpg","Não","2017/01/07 - 15:24","Biologia");

insert into artigo(titulo,subtitulo,texto,visualizacoes,imagem,visivel,data_pub,nome_categoria)
values ("Genética","Um dos temas de Biologia mais cobrados no ENEM!","A <b>genética</b> é a parte da ciência que estuda a hereditariedade, a estrutura e função dos genes e a variação dos seres vivos. É através da genética que buscamos compreender os mecanismos e leis de transmissão das características através das gerações.

Os primeiros estudos da genética na ciência moderna iniciaram-se com o monge austríaco Gregor Mendel, na década de 1860. Realizando cruzamentos entre linhagens de ervilhas, ele observou a existência de “fatores” distintos que eram transmitidos dos genitores para a prole. Os padrões de herança observados por Mendel correspondem aos padrões de distribuição dos cromossomos nos gametas no processo da meiose. Mais tarde, com o aprofundamento das pesquisas, os “fatores” foram chamados de genes.
Antes de Mendel, um nobre húngaro, Imre Festetics, foi o primeiro a usar o termo genética. Em seu livro, ele descreveu várias regras sobre herança genética, tendo sido o primeiro a descrever os princípios básicos da mutação.
Em genética, a transmissão de informação envolve quatro elementos básicos: a diversidade de estruturas celulares com inúmeras formas especificando aspectos diferentes do organismo; um mecanismo de replicação que copia a informação e repassa à prole; a capacidade de mutação para que haja maior variabilidade; e a capacidade da prole em traduzir as informações herdadas em proteínas.
O método genético fundamental para o estudo dos fenômenos biológicos é a diferença genética entre os indivíduos ou variação genética. Essa variabilidade pode ser de ocorrência natural entre os indivíduos da mesma espécie, caracterizando o polimorfismo genético. Mas pode também ser causada por mutações, onde cada gene mutante revelará um componente genético do processo.
O estudo da genética abrange desde as moléculas até as populações. São nas moléculas de DNA (ácido desoxirribonucleico), parte estrutural dos cromossomos, que se localizam os genes. São os genes que trazem as informações necessárias para a síntese de proteínas. A partir da observação das variantes dos genes é possível investigar as propriedades biológicas dos organismos de forma geral.
As variações de uma mesma característica, as ações do ambiente sobre os indivíduos e outros padrões tais como taxa de reprodução, mutações e até seleção natural são objeto de estudo para os geneticistas analisarem a composição genética em uma população.

A genética é também base para a nossa compreensão da evolução. A mudança evolutiva observada nas populações é a consequência das diferentes taxas de reprodução, mutação, migração e seleção, tornando herdáveis as novas características. Sendo assim, grande parte das explicações evolutivas são também genéticas.
As descobertas em pesquisa genética nos permitem aplicá-la em áreas distintas como a da saúde (genética médica, terapia genética, aconselhamento genético), em ecologia (melhoramento genético de espécies, preservação de espécies ameaçadas de extinção), zoologia (taxonomia molecular animal), dentre outras (taxonomia molecular de microrganismos, genética forense, toxicogenética, epidemiologia genética). Mas ainda há muito a ser pesquisado e, é sempre necessário avaliar quais são os reais benefícios e os possíveis reveses da aplicação desses novos conhecimentos no nosso dia a dia.","100","../artigo/imagem-artigo/genetica.jpg","Sim","2017/01/09 - 18:55","Biologia");

insert into artigo(titulo,subtitulo,texto,imagem,visivel,data_pub,nome_categoria)
values ("Movimento Retilíneo Uniforme(MRU)","Um dos temas de Física mais cobrados no ENEM!","TEXTO TEXTO TEXTO","../artigo/imagem-artigo/fisica.jpg","Não","2016/01/08 - 10:30","Física");

insert into artigo(titulo,subtitulo,texto,imagem,visivel,data_pub,nome_categoria)
values ("Trabalho de uma força","Um dos temas de Física mais cobrados no ENEM!","TEXTO TEXTO TEXTO","../artigo/imagem-artigo/fisica.jpg","Não","2016/01/08 - 14:27","Física");

insert into artigo(titulo,subtitulo,texto,imagem,visivel,data_pub,nome_categoria)
values ("Eletrodinâmica","A eletrodinâmica estuda o comportamento das cargas elétricas em movimento. Para compreender esse movimento, é preciso compreender o conceito de elétrons livres. A eletrodinâmica é a parte da física responsável pelo estudo do comportamento das cargas elétricas em movimento.","É sabido por todos a importância da energia elétrica para a humanidade, já que, através dela, o avanço tecnológico e as facilidades que completam a vida moderna são cada vez maiores.Para entendermos o movimento que acontece com a energia elétrica, precisamos relembrar o conceito de elétrons livres.

Elétrons livres são os elétrons mais distantes do núcleo do átomo, que se concentram na parte externa do átomo de forma desordenada.Quando esses elétrons livres recebem a carga de um gerador, se organizam e formam através dessa organização uma corrente elétrica que acontece em virtude da influência de uma força elétrica responsável por este movimento.

A corrente elétrica é então o movimento ordenado das cargas elétricas num condutor metálico e possui sentidos convencional (deslocamento das cargas positivas do potencial maior para o menor) e real (deslocamento do potencial menor para o maior). A corrente elétrica também possui intensidade, tipos (corrente contínua e alternada) e efeitos.
Existem também corpos capazes de conduzir de melhor ou pior forma essa energia, e são chamados de condutores, supercondutores e isolantes.

Condutores – são os objetos responsáveis pela movimentação dos elétrons como, por exemplo, os metais, a água e o corpo humano.

Supercondutores – formados por substâncias como a cerâmica, que oferece pouca resistência à passagem de elétrons.

Isolantes – materiais formados de substâncias capazes de impedir a movimentação de elétrons, como é o caso da borracha e da madeira.

Dentro do estudo da eletrodinâmica temos também a análise dos resistores, que são os componentes elétricos responsáveis por limitar a intensidade da corrente elétrica.
Por Talita A. Anjos
Graduada em Física
Equipe Mundo Educação

fonte:http://mundoeducacao.bol.uol.com.br/fisica/eletrodinamica.htm","../artigo/imagem-artigo/fisica.jpg","Não","2017/01/08 - 18:42","Física");

insert into artigo(titulo,subtitulo,texto,imagem,visivel,data_pub,nome_categoria)
values ("Funções Inorgânicas","Um dos temas de Química mais cobrados no ENEM!","TEXTO TEXTO TEXTO","../artigo/imagem-artigo/quimica.jpg","Não","2016/01/09 - 13:30","Química");

insert into artigo(titulo,subtitulo,texto,imagem,visivel,data_pub,nome_categoria)
values ("Hidrocarbonetos","Um dos temas de Química mais cobrados no ENEM!","TEXTO TEXTO TEXTO","../artigo/imagem-artigo/quimica.jpg","Não","2017/01/05 - 16:30","Química");

insert into artigo(titulo,subtitulo,texto,imagem,visivel,data_pub,nome_categoria)
values ("Concentração Química","Um dos temas de Química mais cobrados no ENEM!","Conforme mencionado no texto “O que é uma solução química?”, as soluções são misturas homogêneas em que na grande maioria das vezes o soluto (substância que se dissolve) está em menor quantidade e o solvente (substância que dissolve o soluto) está em maior quantidade.

No cotidiano, dependendo da quantidade de soluto e de solvente presente na solução, costumamos dizer que ela é fraca ou forte, indicando a sua saturação. Por exemplo, quando preparamos um suco dissolvendo o pó na água, se colocarmos pouco pó e bebermos, poderemos dizer que o suco está fraco (diluído). Mas se conseguirmos dissolver uma quantidade muito grande de pó na água, diremos que o suco está forte (concentrado).

No entanto, existem determinadas ocasiões em que a quantidade de soluto e de solvente presente na solução deve ser exata, como no caso de injeções intravenosas (como o soro fisiológico) e de soluções usadas em laboratórios e indústrias químicas.

A grandeza que relaciona isso é a concentração. Assim, podemos dar a seguinte definição:

“Concentração de soluções químicas refere-se à quantidade de soluto que existe em uma quantidade padrão de solução ou em uma quantidade padrão de solvente.”

As concentrações das soluções podem ser medidas usando-se diferentes unidades ou relações numéricas, que dependem das grandezas que estão sendo relacionadas. As principais concentrações usadas são as mostradas abaixo. Ao observar as fórmulas matemáticas delas, observe que são usados índices para diferenciar quando se trata do soluto (índice 1), do solvente (índice 2) e da solução (nenhum índice):

* Concentração comum ou concentração em massa (C): Relaciona a quantidade de massa do soluto presente em um determinado volume da solução. Sua unidade no SI é gramas por litro (g/L):

C = <u>m1</u>
       V

* Concentração em quantidade de matéria ou concentração em mol/L (M): É também conhecida por concentração molar e por molaridade. Relaciona a quantidade de matéria (mol) do soluto presente em um determinado volume da solução. Sua unidade no SI é gramas por litro (mol/L):

M = <u> n1 </u>        ou      M = <u> m1 </u>
        V                            M1 . V

* Densidade (d): Relaciona a quantidade de massa da solução (massa do solvente + massa do soluto) e o volume dessa solução. Sua unidade no SI é gramas por litro (g/mL):

d =  <u> m </u>       ou        <u> d = m1 + m2 </u>
         V                              V

* Título ou porcentagem em massa (τ): Relaciona a massa do soluto e a massa da solução. Não possui unidade ou fala-se em termos de porcentagem:

τ =  <u> m1 </u>        ou      τ = <u> m1 </u>
         m                        m1 + m2

Quando queremos indicar a porcentagem em massa, basta multiplicar o resultado obtido por 100%.

Um exemplo é o soro fisiológico mostrado abaixo, que é uma solução de água destilada com NaCl. Assim, quando vemos em seus rótulos a porcentagem em massa igual a 0,9%, isso significa que 100g da solução contêm 0,9 grama de NaCl. Dessa forma, podemos concluir que seu título é igual a 0,009.

Existe também o título em volume que relaciona o volume do soluto e o volume da solução:

τv= <u> V1 </u>
        V

* Partes por milhão (ppm): Indica quantas partes de soluto (em massa ou em volume) existem em um milhão (1 000 000 ou 106) de partes da solução (também em massa ou em volume).

1 ppm = <u> 1 parte do soluto </u>
             106 partes de solução

* Molalidade (W):  relaciona a quantidade de matéria de um soluto (mols) pela massa em quilogramas do solvente:

W = <u> n1 </u>
        m2

fonte:http://brasilescola.uol.com.br/o-que-e/quimica/o-que-e-concentracao-solucoes-quimicas.htm","../artigo/imagem-artigo/quimica.jpg","Não","2017/01/07 - 17:45","Química");

insert into artigo(titulo,subtitulo,texto,imagem,visivel,data_pub,nome_categoria)
values ("Tire suas Dúvidas Sobre o Enem 2016","Confira aqui tudo o que você precisa saber sobre o Enem deste ano!
O Ministério da Educação (MEC) espera que esta edição tenha 8 milhões de inscritos. Mais uma vez, o Exame se consolida como o maior vestibular do País","Os participantes podem usar o desempenho nessa prova para entrar em universidades públicas e privadas, ganhar bolsas de estudos, conseguir um financiamento estudantil do Governo Federal e uma série de outros benefícios.
Ter um diploma de nível superior no Brasil pode significar um salário 150% maior comparado a quem tem só o ensino médio, de acordo com uma pesquisa da Organização para a Cooperação e Desenvolvimento Econômico (OCDE).
Por isso, se você pretende turbinar a carreira com uma boa faculdade, fazer o Enem pode ser o melhor caminho. Com uma só prova você consegue participar de diversos processos seletivos por todo o País!

As regras do jogo já estão definidas e aqui você confere um guia especial com tudo o que é preciso saber sobre o Enem 2016!

<b>Quando abrem as inscrições do Enem 2016?</b>
As inscrições para a edição de 2016 do Enem abrem em 9 de maio e vão até o dia 20 de maio.

<b>Como fazer a inscrição para o Enem 2016?</b>
O esquema de inscrições para o Enem 2016 segue o mesmo procedimento dos anos anteriores:
Acessar o site do Enem.
Informar seu CPF e preencher todos os dados solicitados no sistema.
Confirmar o cadastro.
Imprimir o boleto e pagar a taxa.

<b>Precisa pagar para fazer o Enem 2016?</b>
Sim. A taxa de inscrição do Enem 2016 é de R$ 68,00 e pode ser paga até o dia 25 de maio em qualquer agência dos correios, casa lotérica ou agência bancária.
É fundamental fazer o pagamento do boleto dentro do prazo, pois sem isso a sua inscrição no Enem não será concluída e você não poderá participar do Exame.

<b>Posso pedir isenção da taxa de inscrição do Enem 2016?</b>
Depende. Existem dois casos em que o participante não precisará pagar a taxa. Confira se você se encaixa em alguma dessas situações:
Baixa renda: é necessário preencher a declaração de carência socioeconômica no ato da inscrição. Pode solicitar a isenção quem tiver renda familiar mensal de até 1,5 salário mínimo por pessoa.
Aluno de escola pública: precisa estar matriculado regularmente no terceiro ano do ensino médio em escola pública e preencher os dados da instituição ao se inscrever no Enem. Neste caso, a isenção é automática.

<b>Quando são as provas do Enem 2016?</b>
Em 2016, as provas do Enem acontecem nos dias 5 e 6 de novembro (sábado e domingo).
No primeiro dia, o participante tem 4 horas e 30 minutos para responder 90 questões objetivas de Ciências Humanas e Ciências da Natureza.
No segundo dia, são 90 questões objetivas de Linguagens e Matemática, mais a redação. O tempo de prova é de 5 horas e 30 minutos.
Os portões dos locais de prova abrem ao meio-dia e fecham pontualmente às 13 horas (horário de Brasília). As provas se iniciam às 13h30. Nessa meia hora entre o fechamento dos portões e a liberação para começar a responder as questões, a organização do Enem deve fazer procedimentos de segurança, como a detecção de metais e conferência da identidade dos participantes.

<b>Qual o tema da redação do Enem 2016?</b>
Essa é a pergunta de um milhão de dólares! Até o segundo dia do Enem, domingo, quando os candidatos puderem abrir seus cadernos de prova, ninguém (exceto os organizadores) sabe qual vai ser o tema da redação.
Esse elemento-surpresa é o causador de muita ansiedade entre os estudantes, pois zerar na redação deixa o candidato fora dos principais processos seletivos do Governo Federal que usam o Enem como critério de escolha: Sistema de Seleção Unificada (Sisu), Programa Universidade para Todos (ProUni) e Financiamento Estudantil (FIES).
Uma coisa é certa: o Enem não repete o assunto exigido para o texto. Confira todos os temas de redação do Enem desde que o exame foi modificado e tem o formato adotado hoje em dia:
2009: O indivíduo frente à ética nacional
2010: O trabalho na construção da dignidade humana
2011: Viver em rede no século XXI: os limites entre o público e o privado
2012: O movimento imigratório para o Brasil no século XXI
2013: Os efeitos da implantação da Lei Seca no Brasil
2014: Publicidade infantil em questão no Brasil
2015: A persistência da violência contra a mulher na sociedade brasileira

<b>Como saber meu local de prova do Enem 2016?</b>
Ao se inscrever para o Enem 2016, você precisará selecionar, em uma lista com todos os municípios onde ocorrerá o Exame, o local onde você prefere fazer a prova.
As informações detalhadas sobre o seu local de prova, com endereço completo e sala, poderão ser consultadas no Cartão de Confirmação de Inscrição.

<b>Quando sai o Cartão de Confirmação de Inscrição do Enem 2016?</b>
Desde 2015, o MEC não envia mais o cartão de confirmação pelo correio. O documento fica disponível na página do participante. Quando o MEC liberar, baixe o arquivo e imprima-o para levar no dia da prova.
O cartão costuma ser liberado alguns dias antes da aplicação do Enem. A data muda todo ano e assim que o MEC divulgar o acesso você ficará sabendo por aqui.

<b>Quando sai o gabarito do Enem 2016?</b>
Assim que você chegar da prova do Enem, corra para cá que vamos divulgar as correções extraoficiais feitas por professores especialistas no Exame.
O gabarito oficial deve sair até três dias úteis após o término das provas, provavelmente até 9 de novembro, quarta-feira.
Assim que o MEC liberar o gabarito oficial, você também ficará sabendo por aqui.

<b>Quando sai o resultado do Enem 2016?</b>
Apesar de o gabarito sair logo, o resultado do Enem demora mais para ser divulgado. São em média dois meses de espera. O MEC deve liberar o acesso ao Boletim de Desempenho Individual provavelmente entre os últimos dias de dezembro de 2016 e a primeira quinzena de janeiro de 2017.
Assim que o resultado for divulgado, vamos avisar aqui!

Fonte: http://www.guiadacarreira.com.br/educacao/enem/saiba-tudo-sobre-o-enem-2016/","../artigo/imagem-artigo/enem2016.jpg","Sim","2016/01/02 - 0:02","Vestibular");

insert into artigo(titulo,subtitulo,texto,visualizacoes,imagem,visivel,data_pub,nome_categoria)
values ("O que é o SiSu?","Saiba mais sobre o Sisu e descubra se você pode participar para conseguir entrar na universidade pública com a sua nota do Enem!","SISU – Sistema de Seleção Unificada

O Sistema de Seleção Unificada (Sisu) é um programa do Ministério da Educação (MEC) que oferece vagas em universidades públicas sem precisar fazer o vestibular.
O processo seletivo do Sisu é totalmente automatizado utiliza as notas do Enem para classificar os candidatos. A participação é gratuita e a seleção acontece duas vezes por ano.
Saiba mais sobre o Sisu e descubra se você pode participar para conseguir entrar na universidade pública com a sua nota do Enem!

<b>Como Funciona o SISU</b>

O  Sisu é um sistema totalmente informatizado que recupera a nota do Enem e seleciona os melhores candidatos para uma mesma vaga, turno, curso, universidade e modalidade de concorrência. Funciona assim:
O candidato se inscreve pela Internet, no site oficial do Sisu, usando o mesmo número de inscrição e senha do Enem (são aceitos somente candidatos que fizeram a edição mais recente do Enem). Cada candidato pode selecionar duas opções de curso dentro das vagas disponíveis em instituições públicas. Ao escolher as duas opções de curso, o participante também deve selecionar a modalidade de concorrência: ações afirmativas (cotas) ou ampla concorrência.
Enquanto estiverem abertas as inscrições, os candidatos podem consultar a “nota de corte”, que é a menor nota do Enem possível para entrar naquela vaga. Dependendo da nota de corte, o participante pode optar por continuar disputando aquela vaga, ou tentar outra opção de curso.
Poucos dias depois do término das inscrições, o participantes podem consultar o resultado do Sisu na página oficial do Programa.

Os candidatos selecionados devem fazer a matrícula na universidade para garantir a vaga. Alguns cursos podem exigir provas complementares, de Habilidades Específicas, por exemplo.
Caso sobrem vagas, quem não passou nas duas chamadas do Sisu pode se inscrever para a Lista de Espera.
O Sisu acontece duas vezes por ano, no primeiro e no segundo semestre.

<b>Quem pode participar do Sisu</b>

Qualquer pessoa que tenha feito o Enem no ano anterior e tenha obtido nota maior do que zero na redação pode participar do Sisu. Não existe limite de renda ou idade para se inscrever e o processo é gratuito.
As universidades participantes podem exigir uma nota mínima no Enem para entrar em cada um dos seus cursos. Nesse caso, a nota mínima pode ser consultada pelos candidatos após a inscrição.
Vale lembrar que bolsistas do Programa Universidade para Todos (ProUni) também podem se inscrever no Sisu. No entanto, caso seja selecionado pelo Sisu, o estudante precisará optar por apenas um dos dois programas: Sisu ou ProUni, já que não é permitido acumular esses dois benefícios.
Fonte: http://www.guiadacarreira.com.br/educacao/vestibular/sisu/
","100","../artigo/imagem-artigo/sisu1.jpg","Sim","2016/01/20 - 22:21","Vestibular");

insert into artigo(titulo,subtitulo,texto,visualizacoes,imagem,visivel,data_pub,nome_categoria)
values ("Inscrições para o Sisu 1º/2017 estão abertas","Período termina às 23h59 da próxima sexta-feira (27); para participar, é necessário ter feito o Enem 2016 e não ter tirado zero na redação.","As inscrições para o Sistema de Seleção Unificada (Sisu) 1º/2017 estão abertas. O período termina às 23h59 da próxima sexta-feira (27). Para concorrer, é necessário ter feito o Exame Nacional do Ensino Médio (Enem) 2016 e não ter tirado zero na redação. Notas de outras edições do Enem não serão aceitas.

<b>Faça sua inscrição no Sisu</b>
Os candidatos poderão se inscrever em até duas opções de curso em universidades e institutos públicos, federais e estaduais. O número de vagas aumentou: são mais 238 mil, em relação a 205,5 mil no ano anterior. Além disso, cinco instituições públicas aderiram ao sistema: de 128, passou a 131 em 2016.

<b>24/07 a 27/01: Período de inscrições
30/01: Primeira Chamada
03/02 a 07/02: Matrícula da Primeira Chamada
30/01 a 10/02: Inscrição na Lista de Espera
A partir de 16/02: Convocações da Lista de espera</b>

<b>Orientações</b>
Para se candidatar, é necessário acessar o site do Sisu, informar o número de inscrição no Enem 2016 e escolher, por ordem de preferência, até duas opções nas vagas ofertadas pelas instituições participantes do programa.
Durante o período de inscrição, o Sisu calcula uma vez por dia a nota de corte para cada curso, com base no número de vagas disponíveis e nas notas dos candidatos inscritos. O candidato pode, durante o período de inscrição, modificar sua opção quantas vezes quiser. É importante ressaltar que o Sisu considera somente a última inscrição concluída.
http://guiadoestudante.abril.com.br/enem/inscricoes-para-o-sisu-1o2017-estao-abertas/","200","../artigo/imagem-artigo/sisu-2017.jpg","Sim","2017/01/23 - 16:58","Vestibular");

insert into artigo(titulo,subtitulo,texto,visualizacoes,imagem,visivel,data_pub,nome_categoria)
values ("O que é o ProUni?","Descubra como funciona o Programa Universidade para Todos e veja se você pode concorrer a uma dessas bolsas de estudos para turbinar sua carreira!","Ter um diploma de nível superior abre portas no mercado de trabalho e aumenta consideravelmente a remuneração que você pode alcançar. De acordo com um estudo recente da Organização para a Cooperação e Desenvolvimento Econômico (OCDE), quem conclui uma faculdade pode ter um salário até 156% maior no Brasil.
Se você está considerando fazer um curso superior para aumentar seu valor no mercado, conseguir um emprego melhor e turbinar a carreira, mas não passou na universidade pública e não tem condições de bancar a mensalidade da faculdade particular, não desista!
Uma das alternativas possíveis é tentar uma bolsa de estudos pelo Programa Universidade para Todos, o ProUni.
Descubra a seguir como funciona o ProUni, quais são os critérios de participação e como fazer para conseguir uma bolsa de estudos pelo Programa!

<b>O que é o ProUni?</b>
O ProUni foi criado pelo Governo Federal brasileiro para facilitar o acesso de estudantes de baixa renda ao ensino superior. O Programa concede bolsas parciais e integrais em universidades privadas de todo o País.

<b>Como funciona o ProUni?</b>
Como sempre há muito mais candidatos do que vagas disponíveis, o ProUni funciona como um processo seletivo no qual os participantes que pretendem entrar no mesmo curso, turno, faculdade e modalidade (cotas ou não) concorrem entre si.
O processo seletivo do ProUni é totalmente informatizado e os candidatos não precisam nem sair de casa para participar. As inscrições são feitas pela internet e o sistema usa a nota do Enem do ano anterior como critério de seleção.

Funciona assim:
O Ministério da Educação (MEC) abre as inscrições para o ProUni. O período de inscrições dura poucos dias.
Os candidatos se inscrevem, gratuitamente, no site do ProUni, usando o mesmo número de inscrição e senha do Exame Nacional do Ensino Médio (Enem) do ano anterior.
Cada participante precisa escolher até duas opções de curso entre as vagas oferecidas. Deve também escolher turno, faculdade e modalidade de concorrência – ampla concorrência ou ações afirmativas (cotas).
Enquanto durarem as inscrições, os participantes podem consultar as notas de corte parciais de cada curso. Com isso, podem avaliar se a sua nota do Enem seria suficiente para entrar naquela vaga e, se for o caso, mudar as opções quantas vezes quiser.
Ao encerrar o período de inscrições, o sistema do ProUni seleciona os candidatos com maior nota do Enem até preencher todas as vagas.
O resultado do ProUni sai poucos dias após o encerramento das inscrições e os selecionados têm um prazo para fazerem a matrícula presencialmente nas faculdades escolhidas.
O ProUni tem mais de uma chamada por ano e oferece um processo de lista de espera quando sobram vagas.

<b>Quais são os tipos de bolsa do ProUni?</b>
O ProUni oferece dois tipos de bolsa de estudos em faculdades particulares:
Parcial: na bolsa parcial, o estudante só paga metade da mensalidade do curso. O restante é pago pelo Governo Federal diretamente para a faculdade.
Integral: nessa modalidade, o Governo Federal paga o total da mensalidade diretamente para a faculdade.
As bolsas do ProUni cobrem somente os gastos com mensalidade. Outras despesas, como transporte, moradia, materiais e alimentação devem ser custeados pelos alunos.

<b>Quem pode participar do ProUni?</b>
O objetivo do ProUni é beneficiar estudantes brasileiros de baixa renda que ainda não tenham um diploma de nível superior.
A participação está condicionada ao cumprimento de alguns requisitos. O principal deles é ter feito o Enem do ano imediatamente anterior, com desempenho de, no mínimo, 450 pontos nas provas objetivas e nota maior do que zero na redação.
Só pode participar do ProUni quem tiver renda familiar bruta mensal de no máximo três salários mínimos por pessoa. É a renda familiar que define o tipo de bolsa que o estudante pode conseguir:
Bolsa integral: para estudantes com renda familiar bruta mensal de até um salario mínimo e meio por pessoa.
Bolsa parcial: para estudantes com renda familiar bruta mensal de até três salários mínimos por pessoa.

Além do desempenho no Enem e do critério de renda, para tentar uma bolsa do ProUni é necessário cumprir também pelo menos uma das exigências a seguir:
Ter cursado o ensino médio completo em escola da rede pública, ou em escola da rede privada como bolsista integral.
Ter cursado o ensino médio parcialmente em escola da rede pública e parcialmente em escola da rede privada, também na condição de bolsista integral.
Ser pessoa com deficiência.
Ser professor efetivo da rede pública de ensino, concorrendo a bolsas em cursos de licenciatura (nesse caso não há requisito de renda).

<b>Qual a diferença entre ProUni e FIES?</b>
Apesar de serem programas do Governo Federal para facilitar o acesso de estudantes de baixa renda ao ensino superior e de usarem o Enem como critério de seleção, o ProUni e o FIES são bem diferentes. Confira:
ProUni: oferece bolsas de estudos parciais e integrais em faculdades privadas. O estudante que recebe o ProUni não precisa devolver o valor pago pelo governo.
FIES: é um empréstimo para ajudar a pagar a faculdade particular. O percentual financiado varia de acordo com a renda do estudante e os juros são mais baixos do que os praticados no mercado. A dívida pode ser parcelada em vários e anos e quem recebeu o FIES só precisa começar a quitar o empréstimo depois de formado.

<b>Pode usar ProUni e FIES ao mesmo tempo?</b>
Sim, em alguns casos. Quem recebe bolsa de 50% do ProUni pode usar o FIES para financiar a outra metade da mensalidade, desde que seja para o mesmo curso e faculdade onde tem a bolsa do ProUni. A soma dos dois benefícios (ProUni + FIES) não pode ultrapassar o valor da mensalidade com desconto.

<b>Quando tem inscrição do ProUni?</b>
São duas edições por ano, uma no primeiro e outra no segundo semestre. As datas são divulgadas pelo MEC e variam todo ano.
As inscrições são gratuitas e você pode saber mais no portal do ProUni.

<b>Quais são as universidades que aceitam o ProUni?</b>
Para participar do ProUni, as faculdades privadas precisam se cadastrar e ter uma boa avaliação perante o MEC. São muitas as participantes, com vagas em todo o Brasil.","100","../artigo/imagem-artigo/prouni.jpg","Sim","2016/01/18 - 19:35","Vestibular");

insert into artigo(titulo,subtitulo,texto,visualizacoes,imagem,visivel,data_pub,nome_categoria)
values ("Escolha da Profissão Certa: 7 Dicas Rápidas!!","Está com dificuldade para escolher uma profissão? Siga nossas sete dicas e sinta-se mais confiante para tomar essa decisão!","Se você está prestes a fazer o vestibular e está se sentindo mal por não conseguir se decidir entre as profissões não fique chateado: isso é mais comum do que você imagina !
Pesquisas apontam que a maioria dos jovens tem dificuldade para escolher uma profissão. Conflitos, indecisão, falta de orientação adequada, falta de autoconhecimento… muitos podem ser os motivos. Para ajudar os indecisos a fazer a melhor escolha, preparamos um guia rápido com algumas dicas que podem ajudar na escolha da melhor profissão. Siga os nossos passos, pense bem e boa sorte:

<b>1. Informe-se sobre as profissões e carreiras</b>
Antes de escolher uma profissão, procure conhecê-la muito bem.
É interessante eliminar os mitos e conhecer a verdadeira realidade das profissões. Procure saber o que aquele profissional faz no seu dia a dia, qual a sua área de atuação, como está o mercado para a profissão, como é o curso, etc.
Se você está em dúvida entre duas ou mais profissões, conhecendo-as bem fica mais fácil realizar escolher aquela que mais tem a ver com o seu perfil.

<b>2. Converse com profissionais formados</b>
Agora que você já se informou sobre a parte teórica da profissão, procure também conversar com profissionais formados para conhecer a parte prática. Se você quer fazer o curso de Medicina, por exemplo, visite hospitais e clínicas, observe a rotina dos médicos e, se possível, faça perguntas para os profissionais.
Quando estiver escolhendo a sua profissão, lembre-se que todas têm o seu lado positivo e o seu lado negativo: Medicina pode ser uma carreira linda, que salva vidas e cura doenças, mas vai exigir um grande esforço e sacrifício do médico, que tem que estudar durante vários anos e muitas vezes precisa deixar a sua casa e família para atender emergências. A escolha da profissão certa depende muito do estilo de vida que você quer levar.

<b>3. Escolha com calma a sua profissão</b>
A escolha da profissão certa deve ser muito bem pensada, é uma decisão que precisa ser tomada com calma. Não é interessante deixar para a última hora, no momento de preencher a ficha do vestibular. Pense muito bem sobre o assunto.
Claro, nada é pra sempre e a escolha profissional também não precisa ser. Há muitos casos de pessoas que trabalham anos em uma profissão e posteriormente abandonam tudo para começar uma carreira nova.
De qualquer modo, mesmo que você possa mudar de carreira no futuro, não vale a pena perder tempo fazendo um curso do qual você não gosta. Por isso, pense muito bem quando for escolher sua profissão.

<b>4. Conheça bem suas áreas de interesse (profissionais e pessoais)</b>
Autoconhecimento é uma das chaves para o sucesso na vida em geral e com a escolha da profissão certa não é diferente. Procure conhecer bem a si mesmo, procure listar os seus principais interesses, talentos e defeitos (ou melhor, pontos que precisa melhorar).
Liste quais são as atividades que você prefere fazer em seu tempo livre, os tipos de filmes de que você mas gosta, os assuntos sobre os quais gosta de conversar e as suas principais qualidades. Liste também o que você não gosta de fazer, quais situações te deixam constrangido e também quais são os seus principais pontos de melhoria.
Ter um bom conhecimento sobre si mesmo com certeza ajuda na escolha da profissão certa.

<b>5. Teste a sua afinidade com a profissão</b>
Para poder ter certeza que está fazendo a escolha da profissão certa, procure toda a orientação que puder. Faça um teste vocacional, procure orientação de psicólogos e profissionais vocacionais e leia, leia muito sobre a área que quer estudar.
Procure conhecer o que está acontecendo no universo da sua profissão. Se você quer fazer Ciência da Computação por exemplo, faça uma pesquisa sobre as novas técnicas de programação, sobre os novos computadores que estão surgindo, sobre as novas empresas que estão despontando, etc.
Quanto melhor você conhecer do universo da sua futura profissão, mais você saberá se tem afinidade com a área.

<b>6. Vestibular não é o fim do mundo</b>
Momentos importantes da vida, como o Vestibular, sempre causam medo e ansiedade mesmo, é preciso ter controle.
Se você quer começar uma carreira de sucesso, deve encará-lo. Por isso aceite, o fato e faça o que tem que ser feito: estude.
Claro, estudar é importante, mas tudo também tem o seu peso: não deixe também de fazer atividades extras tais como se divertir fazendo o que você mais gosta e cultivar os seus hobbies. Deixe também sempre um tempo para o descanso.

<b>7. Não se deixe levar: escolher uma profissão só depende de você</b>
Nem sempre as melhores intenções levam às melhores escolhas. Não são raros os casos em que pais, amigos ou parentes acabam influenciando na escolha de uma profissão. Essas pessoas, em geral, querem apenas ajudar, mas não cabe a elas escolher: a última palavra deve ser sempre sua!
É muito comum encontrar alunos que abandonam a faculdade porque não se identificam com a profissão escolhida. Muitos desses casos ocorrem justamente porque a escolha do curso foi feita com base na influência de outras pessoas.
Na hora de escolher uma profissão, nunca se deixe levar por comentários ou qualquer tipo de influência.
A carreira é sua, o sonho é seu, a escolha da profissão certa só cabe a você.

<b>Dica bônus: escolha uma faculdade reconhecida pelo MEC</b>
Assim que decidir sua profissão, é hora de escolher uma faculdade. Para que seu diploma tenha reconhecimento no mercado, a universidade deve ter o aval do Ministério da Educação (MEC).
Fonte:http://www.guiadacarreira.com.br/carreira/escolha-profissao-certa-7-dicas/","200","../artigo/imagem-artigo/escolha.jpg","Sim","2016/01/02 - 10:01","Orientação Profissional");

insert into artigo(titulo,subtitulo,texto,visualizacoes,imagem,visivel,data_pub,nome_categoria)
values ("Como organizar a rotina de estudos para um concurso público? Veja dicas","Lia Salgado fala sobre quanto tempo reservar para cada disciplina. Colunista também responde dúvidas sobre revisão de conteúdo.","Na coluna desta semana, a especialista em concursos Lia Salgado responde perguntas dos internautas sobre diferentes formas de organizar os estudos para concursos públicos.
Lia fala sobre como administrar o tempo para cada disciplina e como fazer as revisões de conteúdos, além de dar dicas sobre o modo de resolver exercícios.
Mande dúvidas sobre concursos no espaço para comentários; perguntas selecionadas serão respondidas em coluna quinzenal

<b>Tempo de estudo</b>
O internauta Francisco Alexsandro tem dúvidas sobre como organizar a rotina de estudo. \"Estudo todo o conteúdo da disciplina ou grande parte dela por dia? Estabeleço um dia específico da semana para estudar um item da disciplina em questão? Como fazer uma boa revisão antes da prova?\"
Segundo a especialista, o recomendável é reservar um dia ou um turno de estudo para cada disciplina e, neste período, estudar o que for possível, seguindo o conteúdo. \"Quando acabar o horário de estudo, você anota onde parou para poder retomar daquele ponto no próximo turno da mesma matéria\", reforça.
Lia sugere que o candidato estude todas as matérias em paralelo, distribuindo-as pelos turnos da semana ou da quinzena.
\"Quanto às revisões, devem ser feitas regularmente, e não só perto da prova. Para isso, você precisa preparar gradativamente um bom material com as principais informações da teoria, fórmulas e até onde encontrar os exercícios que você considere importantes. Faça algo visual, em vez de resumos escritos – são as chamadas fichas-resumo. E não se preocupe em fazer algo perfeito, porque esse material será construído aos poucos e melhorado sempre, a partir do estudo e das revisões\", afirma.

<b>Revisão de conteúdo</b>
Todas as noites, a internauta Valéria Campos faz um resumo com os exercícios estudados. \"De quanto em quanto tempo eu preciso retornar a esse resumo e revisar os conteúdos? Seria bom se eu reservasse um dia da semana? Como os assuntos são cumulativos, vai chegar uma hora em que eu vou gastar mais tempo revisando do que estudando novos conteúdos\", questiona.
Lia Salgado explica que as revisões durante o estudo devem ser periódicas e gradativas, de acordo com o tamanho dos pontos e da facilidade em cada matéria.
\"Por exemplo: você estuda os pontos 1 ao 4, preparando um bom material e faz uma revisão. Segue até o tópico 8 e revisa do 5 ao 8. Vai até o 12, revisa do 9 ao 12 e depois tudo o que estudou até ali (do 1 ao 12). Assim vai até o fim da disciplina, com revisões periódicas. Quando chegar ao fim, deve fazer uma revisão geral\", afirma a especialista.
Lia recomenda uma revisão completa uma vez por mês. \"As revisões devem ser cada vez mais rápidas, porque o seu material estará mais objetivo e você terá mais conhecimento na matéria. Eu faço a mesma recomendação de usar fichas-resumo em vez de resumo. Lembre que, antes da prova, você vai precisar revisar todas as matérias em pouco tempo\", completa.

<b>Resolvendo os exercícios</b>
\"Qual é a melhor forma de resolver exercícios para concursos? Posso responder a questão olhando pela teoria ou é melhor responder somente com o meu conhecimento e depois olhar se está correto ou não?\", questiona a internauta Renata.
\"No início do estudo, o exercício é para ajudar a compreensão e fixação do conteúdo. Por isso, não há problema em consultar a teoria – é até indicado. Quando você já se sentir mais segura, aí é interessante fazer isso sem consulta, para verificar se aprendeu\", afirma Lia Salgado.
A especialista diz que, mais para frente, é importante resolver provas de concursos anteriores – desta vez sem consulta –, para checar o desempenho em cada disciplina e conseguir superar dificuldades antes do concurso.

*Lia Salgado, colunista do G1, é fiscal de rendas do município do Rio de Janeiro, consultora em concursos públicos e autora do livro “Como vencer a maratona dos concursos públicos”
Fonte:http://g1.globo.com/concursos-e-emprego/noticia/2014/05/como-organizar-rotina-de-estudos-para-um-concurso-publico-veja-dicas.html","100","../artigo/imagem-artigo/organizar-tempo.jpg","Sim","2016/01/03 - 8:44","Dicas de Estudo");

insert into artigo(titulo,subtitulo,texto,visualizacoes,imagem,visivel,data_pub,nome_categoria)
values ("Como fazer uma Redação","Se você quer saber como fazer uma boa redação, o primeiro passo é esquecer os mitos de que somente algumas pessoas levam jeito para escrever e são capazes de tirar boas notas em vestibulares, concursos, etc.","Talvez você fique surpreso, mas para tirar nota máxima em uma redação basta seguir os critérios da equipe avaliadora. Existem muitos detalhes importantes que, quando obedecidos, fazem sua redação receber uma excelente nota, mesmo que o texto não seja revolucionário ou digno de um prêmio nobel. Os corretores não estão procurando um texto inovador ou uma ideia espetacular, eles apenas querem um texto organizado, coerente e fiel ao tema. Vamos abordar aqui esses detalhes e provar como qualquer pessoa pode ir muito bem na prova redação, mesmo que ainda não tenha muita prática na escrita. Vale a pena destacar que o texto dissertativo argumentativo costuma ser o mais cobrado nas provas de vestibular e concursos, por isso daremos atenção especial a ele.

<b>A estrutura de uma boa redação</b>
A primeira coisa que a gente deve se preocupar com um texto é a estrutura dele. Mas o que vem a ser essa estrutura? Ela é a organização do que vamos escrever. Uma boa redação é dividida em introdução, desenvolvimento e conclusão. Então vamos ver como fica essa organização:

<b>Introdução</b>
É um parágrafo de 2 a 3 frases apenas. A gente só põe nela o básico, dizemos do que vamos falar na redação.

<b>Desenvolvimento</b>
Pode conter de 2 a 4 parágrafos. É nele que a gente vai argumentar, discutir o tema da redação.

<b>Conclusão</b>
É um parágrafo com 2, 3 ou 4 frases. É um fechamento do texto.
Bom, agora que a gente já sabe como fica a estrutura de uma boa redação, vamos tentar construí-la.

<b>As perguntas que você deve fazer</b>
A introdução pode ser feita a partir da seguinte pergunta em relação ao tema: “o que eu penso sobre isso?”
O desenvolvimento pode ser obtido por meio das perguntas: “como posso provar isso?”, “Quais as causas disso?”, “Quais as consequências disso?”, “Como isso acontece?”, “De que forma posso realizar isso?”.

<b>E a pergunta da conclusão é: “Que lição pode ser tirada disso?”</b>
A partir dessas respostas é que você vai organizar sua redação. Repare que estamos dividindo a redação antes de começá-la, isso é muito importante. Os avaliadores não enxergam a redação como um único texto fechado e compacto, eles analisam o texto por etapas, por isso que você deve se preocupar com cada uma dessas etapas, para garantir que todas estão atendendo ao que eles esperam. Não há como fazer uma boa redação de outra forma que não seja dividindo e analisando individualmente a introdução, o desenvolvimento e a conclusão. Qualquer tentativa de misturar esses 3 fragmentos sem cautela irá destruir a sua nota. Com isso em mente, podemos prosseguir.

<b>Como ter ideias e construir argumentos para o texto</b>
Antes de começar um texto, é muito útil escrever em uma folha algumas informações sobre o tema proposto. Por exemplo, digamos que o tema da redação seja “O chocolate no mundo moderno”. A primeira coisa que você deve fazer é anotar alguns fatos e argumentos que você conhece sobre chocolate. Por exemplo:
Chocolate em excesso faz mal
Existem diversos tipos de chocolate
A compra e venda de chocolate movimenta muito dinheiro
Muitas pessoas gostam de chocolate

Observe que as frases acima não são muito grandes nem muito elaboradas. Isso tem um motivo: a ideia aqui é que você coloque no papel a informação exatamente do jeito que ela veio à sua cabeça. Nesse momento, não estamos preocupados com a estrutura do texto, nem com a perfeição das frases, pois se você ficar “travado”, sem conseguir se expressar no papel, corre o risco de perder um bom argumento, além de perder muito tempo (talvez outras ideias relacionadas ao assunto sejam perdidas enquanto você tenta formular um pensamento rico e elaborado).
Então o propósito aqui é simples: coloque no papel aquilo que veio à cabeça, pois estamos apenas construindo nossos pilares. O próximo passo vai ser organizar os argumentos que criamos.

<b>Organizando um parágrafo</b>
Observando os argumentos que escolhemos sobre chocolate, podemos notar que o último argumento que criamos ali tem uma relação direta com o penúltimo:
A compra e venda de chocolate movimenta muito dinheiro
Muitas pessoas gostam de chocolate

Afinal, o mercado de chocolate movimenta muito dinheiro justamente pelo fato de que muitas pessoas gostam de chocolate. Isso também motiva a criação de vários tipos diferentes de chocolate, então o segundo argumento também pode ser incluído nesse raciocínio. Já o primeiro argumento serve como um alerta. Portanto, um parágrafo para nosso texto, contendo todas essas ideias, poderia ser:
– “Como muitas pessoas gostam de chocolate, o comércio desse produto movimenta muito dinheiro. Para aumentar as opções de sabores e aplicações, muitos tipos diferentes de chocolate são fabricados. No entanto, é preciso estar consciente de que chocolate em excesso faz mal”.
Observe que as frases desse parágrafo seguem uma lógica; não são apenas informações jogadas sem nexo. Essa lógica só existiu pelo fato de termos organizado as ideias que tivemos lá no início. Esse processo sempre vai ser utilizado para garantir um texto fluido e bem estruturado.
Agora sim estamos preocupados com o texto da redação, pois antes estávamos apenas preocupados em como construir argumentos para o tema. Fazer a redação é o segundo passo; primeiro você precisa colocar os argumentos no papel, como já comentamos. Esse detalhe acaba pegando muitos alunos no contrapé, pois tentar fazer uma redação do início ao fim diretamente é muito mais difícil e arriscado. Você fica sujeito a cometer muitos erros como fuga do tema, falta de coerência e conexão, etc.

<b>Como fazer uma redação em etapas</b>
Muito bem, esse foi apenas um exemplo simples para você ter uma ideia de como um parágrafo se constrói na prática. Obviamente, aqueles argumentos que criamos sobre chocolate renderiam muitas outras frases e ideias, mas nosso objetivo era apenas mostrar o conceito de criação de argumentos e elaboração do texto a partir desses argumentos.
O que vamos fazer nos próximos artigos é ensinar como você deve construir uma introdução, um desenvolvimento e uma conclusão, pois cada uma dessas etapas requer cuidados e atenções especiais. Esses cuidados são simples, mas fazem toda a diferença na sua nota final.
Fonte:http://comofazerumaboaredacao.com/","100","../artigo/imagem-artigo/redacao.jpg","Sim","2016/05/06 - 15:00","Dicas de Estudo");

insert into artigo(titulo,subtitulo,texto,visualizacoes,imagem,visivel,data_pub,nome_categoria)
values ("Especialista ensina como lidar com a ansiedade no vestibular","Toda dedicação de meses de estudos pode ir por água abaixo se a ansiedade tomar conta do estado emocional dos vestibulandos. Para combater este mal, a dica é não restringir o aprendizado apenas às disciplinas escolares, mas também investir em atividades que possam trabalhar a insegurança e o estresse do estudante.","Para o psicólogo Fernando Elias José, o preparo emocional do estudante é fundamental também para o desempenho deste futuro profissional no mercado de trabalho. “O autoconhecimento é importante no desenvolvimento da autoconfiança, que vai se refletir na qualidade profissional de cada um. Nossas emoções e atitudes indesejáveis são produtos de um pensamento disfuncional. Quando você sente ansiedade, e evita determinadas situações, está exercendo uma forma errônea de pensar.” afirmou o especialista em preparação para provas e vestibulares.
Apesar de não existir cura para este incômodo, vale a pena ficar atento aos primeiros sinais de ansiedade ainda na juventude, o que facilita o combate ao problema. Segundo a Associação Brasileira de Medicina Biomolecular, os principais sintomas são: dificuldade em pegar no sono, apreensão, irritabilidade, inquietação, impaciência, nervosismo, agitação, hiperatividade, labilidade emocional, humor lábil, insônia, dificuldade de aprendizado, respostas exageradas com sobressalto, susto e espanto.

<b>Confira algumas dicas para lidar com a ansiedade na hora da prova:</b>
No dia anterior a prova, tente relaxar fazendo coisas que você goste como: ver filmes como amigos, sair para jantar, se optar por ir uma festa volte cedo para casa
Pratique esporte para gastar a energia acumulada com o nervosismo
Converse com seus pais sobre a cobrança. A família deve colaborar evitando a pressão, já que ela é um dos principais motivos do nervosismo.
Na hora do vestibular, pense que ele é somente mais uma prova  da vida. Seja confiante.
Fonte:http://www.correiodeuberlandia.com.br/cidade-e-regiao/especialista-ensina-como-lidar-com-a-ansiedade-no-vestibular/","200","../artigo/imagem-artigo/ansiedade.jpg","Sim","2016/01/04 - 08:19","Dicas de Estudo");

insert into artigo(titulo,subtitulo,texto,imagem,visivel,data_pub,nome_categoria)
values ("Inscrições para vagas remanescentes do Fies começam hoje (20)","Até o dia 24 de março, serão recebidas as inscrições apenas para os não graduados que estejam inscritos no processo regular; veja o calendário completo","Estarão abertas, a partir desta segunda-feira (20), as inscrições para concorrer às vagas remanescentes do Fundo de Financiamento Estudantil (Fies) 1°/2017. As inscrições deverão ser feitas exclusivamente na página do Fies Seleção, na internet. Até o dia 24 de março, serão recebidas as inscrições apenas para os não graduados que estejam inscritos no processo regular do Fies.

<b>Veja o calendário</b>

<b>20 a 24 de março – não graduados inscritos no processo seletivo regular do Fies

22 a 24 de março – graduados inscritos no processo seletivo regular do Fies

25 a 31 de março – não graduados para curso de instituição em que não estão matriculados

27 a 31 de março – graduados para curso de instituição em que não estão matriculados

25 de março a 22 de maio – não graduados para curso de instituição em que estão matriculados

27 de março a 22 de maio – graduados para curso de instituição em que estão matriculados</b>

As vagas remanescentes são voltadas para candidatos que tenham participado de alguma edição do Exame Nacional do Ensino Médio (Enem) desde 2010, obtido nota mínima de 450 pontos nas provas e não ter tirado nota 0 na redação. Além disso, é necessário comprovar renda familiar mensal bruta per capita de até três salários mínimos. Podem participar da seleção inclusive aqueles que já tentaram o financiamento pelo processo seletivo regular e não obtiveram sucesso.
fonte:http://guiadoestudante.abril.com.br/fies-prouni/inscricoes-para-vagas-remanescentes-do-fies-comecam-hoje-20/","../artigo/imagem-artigo/fies.jpg","Sim","2017/03/20 13:17","Vestibular");

insert into artigo(titulo,subtitulo,texto,imagem,visivel,data_pub,nome_categoria)
values ("Sétima chamada da Unicamp é divulgada","Selecionados deverão fazer matrícula na próxima segunda-feira (20), das 9h às 12h","A Universidade Estadual de Campinas (Unicamp) divulgou nesta quinta-feira (16) a sétima chamada do vestibular 2017. Os selecionados deverão fazer matrícula nos respectivos campi na próxima segunda-feira (20), das 9h às 12h.

<b>Veja os aprovados</b>
Esta convocação contém os nomes dos candidatos que declararam interesse em continuar concorrendo no vestibular 2017. Entre eles, pode haver candidatos selecionados nos “cursos afins”, que foram selecionados no ato da declaração de interesse e não são os cursos a que originalmente se candidataram.

Os convocados para o curso de segunda opção têm três opções: matricular-se sem declarar interesse em possível remanejamento para o curso de primeira opção, em futuras chamadas; matricular-se com interesse no remanejamento; ou não matricular-se, sendo eliminado do vestibular. Os convocados em primeira opção devem se matricular sem possibilidade de remanejamento.

A oitava chamada será divulgada no dia 20 de março, até as 23h59. A nona chamada será divulgada no dia 27 de março, juntamente com uma lista de espera por curso. A matrícula da nona chamada será realizada no dia 29 de março. Também nesse dia, os candidatos que constam da lista de espera da nona chamada deverão fazer a declaração de interesse por vagas presencial. A décima chamada será divulgada no dia 29 de março, às 16 horas, com matrícula das 16h às 17h. Caso seja necessária, haverá a última chamada, a ser divulgada às 17h30, para matrícula das 17h30 às 18h.
fonte:http://guiadoestudante.abril.com.br/universidades/setima-chamada-da-unicamp-e-divulgada/","../artigo/imagem-artigo/unicamp.jpg","Sim","2017/03/16 15:58","Vestibular");

insert into artigo(titulo,subtitulo,texto,imagem,visivel,data_pub,nome_categoria)
values ("Saiba tudo sobre o calendário do Enem 2017","O MEC já divulgou as principais datas do Enem 2017. Confira o cronograma agora mesmo e anote tudo na agenda! O ano de 2017 começa cheio de novidades para quem vai prestar o Exame Nacional do Ensino Médio, o famoso Enem. ","No dia 18 de janeiro o Ministério da Educação (MEC) lançou uma consulta pública sobre como deveria ser o Exame. Até o encerramento do questionário, que ficou disponível na internet, mais de 600 mil pessoas deram sua opinião.
As respostas ajudaram a delinear o novo formato do Exame em 2017. E entre as principais mudanças, está justamente o calendário.
A partir de agora, o Enem não vai mais ser aplicado em um único final de semana (sábado e domingo), como vinha sendo feito há mais de uma década.
Confira a seguir o calendário completo do Enem 2017, anote tudo e não perca nenhuma data!

<b>Calendário do Enem 2017</b>
Podemos dividir o calendário do Enem 2017 nas seguintes etapas:

-Publicação do edital
-Período de inscrição
-Emissão do cartão de confirmação da inscrição
-Primeiro dia de provas
-Segundo dia de provas
-Divulgação dos gabaritos
-Divulgação do resultado
-Confira quando ocorre e o que acontece em cada uma das etapas!

<b>10 de abril de 2017: Publicação do Edital do Enem 2017</b>

Muita gente não dá bola para essa etapa, mas consultar o edital do Enem é o primeiro passo para fazer o Exame com tranquilidade.
O edital fica disponível no site oficial do Enem e pode ser consultado gratuitamente por qualquer pessoa interessada.
Não vamos mentir para você: trata-se de um calhamaço com dezenas e dezenas de páginas de muito texto. Mas antes que você desanime, vamos dar uma dica preciosa: ele é o mapa da mina para se dar bem no Enem. Ali constam todos os detalhes sobre o Exame, como por exemplo:

-Datas e procedimentos para fazer a inscrição
-Valor da taxa e casos de isenção
-Matérias cobradas
-Calendário de provas e o que cai em cada dia
-Como solicitar atendimento especial e específico
-O que pode e o que não pode fazer no dia da prova
-Quando sai e como acessar a confirmação de inscrição
-Resumo de como é a correção das provas
-Competências avaliadas
-Todos os locais de prova
-Lembre-se de baixar e ler esse material o quanto antes. Assim você não é pego de surpresa e pode se dedicar com mais tranquilidade aos estudos!

<b>8 a 19 de maio de 2017: Inscrição do Enem 2017</b>
A partir do dia 8 de maio, você já pode se inscrever no Enem 2017. O ideal é fazer isso logo nos primeiros dias, para evitar correrias e imprevistos de última hora. Faça assim:
-Acesse o site do Enem.
-Informe todos os dados solicitados.
-Crie uma senha (guarde-a bem, pois você vai usá-la muitas vezes).
-Informe se precisa de atendimento especial ou específico (idoso, pessoa com deficiência, gestante, lactante, etc.).
-Indique sua opção de língua estrangeira – Inglês ou Espanhol.
-Indique a cidade onde pretende fazer a prova.
-Revise e confirme os dados.
Nesse momento, aproveite para consultar novamente o edital e confirmar os seguintes prazos:
-Solicitação de isenção, se for o caso
-Valor e prazo de pagamento da taxa de inscrição
-Lembramos que, a menos que você seja isento, precisará pagar a taxa para efetivar sua inscrição no Enem 2017.

E <b>atenção:</b> o MEC é implacável com todos os prazos. Se você bobear, deixar para última hora ou tiver um imprevisto qualquer (por mais justificável que seja) e não conseguir cumprir as etapas no período determinado, perde a chance de fazer o Exame. Fique de olho!

<b>Final de outubro: Acesso ao cartão de confirmação da inscrição</b>
O cartão de confirmação de inscrição indica o endereço exato em que o candidato vai fazer a prova, além de conter informações como nome completo, documento de identificação, necessidade de atendimento e opção de língua estrangeira.

Desde 2015, o MEC não envia mais o cartão pelo correio. É responsabilidade do participante acessar o site do Enem, baixar e imprimir o documento, que também fica disponível pelo aplicativo oficial do Enem para celulares.
A data de divulgação ainda não está definida, mas costuma ser algumas semanas antes da aplicação das provas.

Aproveite para fazer o caminho de sua casa até o local de prova. Avalie o melhor trajeto, calcule quanto tempo irá levar e deixe uma boa folga para chegar com bastante antecedência. Lembre-se que dia de Enem é sinônimo de tumulto no trânsito. E isso vale para qualquer cidade, das menores e mais tranquilas até as capitais mais caóticas!

<b>5 de novembro de 2017 (domingo): Primeiro dia de provas do Enem 2017</b>
Isso mesmo. Em 2017, o primeiro dia de provas do Enem cairá num domingo. Você terá cinco horas e meia para fazer três provas:
<b>Ciências Humanas e suas Tecnologias
Linguagens, Códigos e suas Tecnologias
Redação</b>
Fique atento aos horários de abertura e fechamento dos portões. Se tiver alguma dúvida, consulte o Edital ou o site do Enem um dia antes. O prazo é para resolver as questões, marcar o gabarito na folha de respostas, escrever a redação e passar o texto a limpo na folha de redação. São menos de 3 minutos por questão e cerca de uma hora para finalizar a redação.

<b>12 de novembro de 2017 (domingo): Segundo dia de provas do Enem 2017</b>
Essa é a grande novidade do Enem 2017: uma semana entre o primeiro e o segundo dia de prova. Os horários de abertura e fechamento dos portões são os mesmos do primeiro dia, mas o prazo é mais curto: quatro horas e meia. Nesse dia, você vai responder às questões de:

<b>Matemática e suas Tecnologias
Ciências da Natureza e suas Tecnologias</b>

<b>5 e 12 de novembro de 2017 : Divulgação do gabarito extraoficial do Enem 2017</b>
O MEC leva uns dias para divulgar os gabaritos oficiais do Enem, mas você não precisa ficar roendo as unhas até lá. Logo depois das provas, vamos publicar por aqui o gabarito extraoficial (com a correção feita por professores especialistas).

<b>19 de janeiro de 2018: Divulgação dos resultados do Enem 2017</b>
São mais de dois meses de espera. O resultado do Enem fica disponível em 19 de janeiro de 2018. A partir desse dia, corra para o site do Enem e acesse seu Boletim de Desempenho Individual. Ali estarão suas notas em cada uma das cinco provas do Enem!

<b>O que fazer com a nota do Enem 2017?</b>
A gente é otimista, sabe que passam por aqui muitos candidatos dedicados e torce muito para que você se dê super bem no Enem.

Por isso, já vamos contar que com seu desempenho você poderá tentar uma vaga em universidade pública pelo Sisu em 2018 e entrar direto na faculdade particular sem precisar fazer vestibular.

Caso se encaixe nos critérios de escolaridade e renda, também poderá tentar uma bolsa de estudos pelo ProUni em 2018 ou um financiamento do FIES. São muitas as portas que se abrem para quem consegue boas notas no Enem!
fonte:http://www.guiadacarreira.com.br/educacao/calendario-enem-2017/","../artigo/imagem-artigo/horario-enem-2017.jpg","Não","2017/01/21 14:42","Vestibular");

insert into artigo(titulo,subtitulo,texto,imagem,visivel,data_pub,nome_categoria)
values ("Confira o calendário do vestibular Unesp 2017","Veja quando se inscrever no processo seletivo para entrar na Unesp no início de 2017, as datas das provas e muito mais!","A Universidade Estadual Paulista (Unesp) está entre as maiores instituições públicas de ensino superior do País. Conta com 179 cursos de graduação gratuitos e uma das mais modernas e completas estruturas, com unidades distribuídas em 24 cidades do estado de São Paulo.
Se você quer estudar na Unesp, precisa se organizar com antecedência para prestar o vestibular. Para ingressar na instituição no primeiro semestre de 2017, deve participar do processo seletivo em 2016. Tanto as inscrições quanto as provas da primeira e segunda fase acontecem no ano anterior ao nome do concurso.
A Fundação para o Vestibular da Universidade Estadual Paulista (Vunesp), que organiza todo o processo, divulgou as principais datas da próxima edição. Confira o calendário da Unesp 2017 e saiba como funciona este concurso, que é um dos mais concorridos do Brasil!

<b>O calendário Unesp 2017</b>
As principais datas do processo seletivo para ingresso na Unesp no primeiro semestre de 2017 já foram divulgadas pela organização do vestibular. O candidato terá cerca de um mês para se inscrever, depois fará as provas da primeira e segunda fase em novembro e dezembro de 2016, respectivamente. Confira:

Inscrições: 12 de setembro a 10 de outubro de 2016
Primeira fase: 13 de novembro de 2016
Segunda fase: 18 e 19 de dezembro de 2016
Resultados: 3 de fevereiro de 2017
Outras datas e informações importantes serão divulgadas pela Fundação à medida que o período de inscrições for se aproximando. Fique ligado para não perder esta chance! O Manual do Candidato Unesp 2017 também será disponibilizado no site oficial do vestibular e deve ser conferido por quem pretende participar!

<b>Como se inscrever na Unesp 2017?</b>
As inscrições são feitas pela internet, no site da Fundação Vunesp. Os candidatos devem preencher uma ficha de inscrição, fornecendo dados pessoais, indicando a opção de curso e a cidade onde desejam realizar as provas. Depois, basta imprimir o boleto bancário e fazer o pagamento da taxa.

O valor para a edição do vestibular 2017 ainda não foi divulgado. A Fundação vai publicar esta informação no site oficial, assim como as condições para obter a isenção ou redução da taxa.

<b>Como funciona o vestibular da Unesp?</b>
O processo seletivo da Unesp é um dos maiores do País. A última edição do vestibular registrou 103 mil inscrições na disputa por 7,3 mil vagas da instituição. O curso mais concorrido foi o de Medicina, com 243,8 candidatos por vaga.
É preciso estar bem preparado para encarar as diferentes etapas deste desafio! A primeira fase conta com uma única prova sobre conhecimentos gerais. As perguntas são objetivas, com respostas de assinalar. Na segunda fase os candidatos realizam duas provas discursivas, que exigem respostas por escrito, em dois dias seguidos.
A pontuação dos candidatos no Enem pode ser utilizada como complemento da nota da prova da primeira fase. Consulte o edital no site da Vunesp para entender como é feito este cálculo.

<b>A primeira fase do vestibular da Unesp</b>
A prova da primeira fase funciona como uma pré-seleção. Ela é totalmente objetiva e conta com 90 questões sobre conhecimentos gerais. Cada questão apresenta cinco alternativas de resposta e apenas uma é correta. O tempo total de realização da prova é de quatro horas e meia.

O exame é dividido em três áreas do conhecimento. Confira as disciplinas e a quantidade de questões de cada uma delas:
Linguagens e Códigos (30 questões): Língua Portuguesa, Literatura, Língua Inglesa, Educação Física e Arte.
Ciências Humanas (30 questões): História, Geografia e Filosofia.
Ciências da Natureza e Matemática (30 questões): Biologia, Química, Física e Matemática.
A segunda fase do vestibular da Unesp

As provas da segunda fase exigem respostas por escrito em todas as questões. O tempo de realização de cada exame é igual ao da primeira fase: quatro horas e meia.
No primeiro dia, os candidatos respondem a 12 questões da área de Exatas ou Humanas, dependendo do curso escolhido. No segundo dia, acontece a prova de Língua Portuguesa, também com 12 questões dissertativas, mais a prova de redação. Confira o conteúdo de cada uma delas:

Primeiro dia: Questões sobre Matemática, Biologia, Física e Química, para candidatos a cursos das Ciências Exatas ou Biológicas. Questões sobre História, Geografia e Filosofia, para candidatos a cursos da área de Humanas.
Segundo dia: Questões sobre Língua Portuguesa, Literatura, Língua Inglesa, Educação Física, Arte e produção de um texto dissertativo.

<b>Onde são realizadas as provas do vestibular da Unesp?</b>
Em São Paulo, os candidatos podem realizar os exames em 31 cidades, bem distribuídas entre o interior e a região da capital. Mas o vestibular da Unesp atrai também um grande número de estudantes de outras regiões do País e conta com locais de prova em diferentes estados. É possível realizar os exames em Brasília (DF), Campo Grande (MS) e Uberlândia (MG).

<b>Por que tentar uma vaga na Unesp?</b>
Criada em 1976, a Unesp é hoje uma das principais universidades públicas do Brasil. A qualidade do seu sistema de ensino tornou-se reconhecida também internacionalmente ao longo destes anos.
Presente em praticamente todo o território paulista, conta com 24 campi: um na capital, outro no litoral, em São Vicente, e outros 22 no interior do estado. A Universidade possui 1.900 laboratórios e 30 bibliotecas.
Sua infraestrutura conta ainda com museus, hortos, biotérios, jardins botânicos, fazendas experimentais, hospitais veterinários, clínicas de odontologia, psicologia, fonoaudiologia e fisioterapia, além do importante Hospital das Clínicas, em Botucatu.
Outras informações sobre o processo seletivo podem ser obtidas no Disque Vunesp: (11) 3874-6300.

fonte:http://www.guiadacarreira.com.br/educacao/vestibular/confira-o-calendario-do-vestibular-unesp-2017/","../artigo/imagem-artigo/unesp-2017.jpg","Sim","2017/01/03 8:42","Vestibular");

insert into artigo(titulo,subtitulo,texto,imagem,visivel,data_pub,nome_categoria)
values ("Termoquímica","Um dos temas de Química mais cobrados no ENEM!","Termoquímica
A Termoquímica é a área que estuda as situações em que reações químicas e fenômenos físicos ocorrem com absorção ou liberação de energia na forma de calor. 
Essas reações e processos são extremamente importantes para a vida no planeta e também são muito frequentes no cotidiano.

Reação Endotérmica
Os processos químicos e físicos que ocorrem com absorção de calor e diminuição da temperatura das vizinhanças são chamados de endotérmicos. O prefixo endo significa “para dentro”.
Um exemplo de reação endotérmica muito importante é a fotossíntese, isto é, a reação entre o gás carbônico do ar e a água para a produção de moléculas orgânicas, como a glicose e o gás oxigênio. Mas para que essa reação ocorra, a energia solar faz-se necessária.
6CO2(g) + 6H2O(l) + luz solar → C6H12O6(aq) + 6O2(g)

Um fenômeno físico que ocorre com absorção de calor é a evaporação (passagem do estado líquido para o de vapor). Como acontece com as roupas lavadas que colocamos para secar no varal, a água passa para o estado de vapor porque recebeu energia solar.

Reação Exotérmica
Na Termoquímica, os processos e reações que ocorrem com liberação de calor e consequente aumento da temperatura das vizinhanças são chamados de exotérmicos. O prefixo exo significa “para fora”. 
Uma reação química bastante comum e importante que é um exemplo de reação exotérmica é a combustão. O calor liberado nas reações de combustão pode ser aproveitado para cozinhar alimentos e gerar aquecimento e outros tipos de energia, como a elétrica e a mecânica. A combustão da gasolina, por exemplo, faz um carro andar, e a combustão do carvão ou de outros combustíveis gera eletricidade para indústrias.

Ex: Queima do gás de cozinha (C3H8 + 5O2 -> 3CO2 + 4H2O + calor).
Como exemplos de processos físicos exotérmicos temos a condensação e a solidificação.
Entalpia (ΔH)
A energia em forma de calor que é liberada ou absorvida em uma reação química é denominada em Termoquímica de variação de entalpia e é simbolizada por ΔH. A entalpia (H) designa o conteúdo de energia de cada substância. Visto que não se conhece até hoje uma maneira experimental de determinar o valor da entalpia, normalmente se trabalha com a variação da entalpia nas reações e nas mudanças de estado físico. 
Unidade: Kcal ou KJ (1Kcal ~ 4,18KJ)
A variação da energia de um sistema (ΔH) pode ser calculado pela diferença entre as energias dos produtos e reagentes.
ΔH = Hprod – Hreag
Resumindo: 
*Reação endotérmica: Hprod > Hreag , ΔH > 0 
É aquela que absorve calor do meio externo, provocando a diminuição de temperatura do meio.

*Reação exotérmica: Hprod < Hreag , ΔH < 0 
É aquela que libera calor para o ambiente, provocando aumento de temperatura do meio.

Fatores que afetam a entalpia de uma reação:
1 – Quantidade em mol de produtos e reagentes.
2 – Estado físico de produtos ou reagentes.
3 – Estado alotrópico de produtos ou reagentes. (alótropos = substância simples diferentes, formadas pelo mesmo elemento químico).
4 – Temperatura. Altas temperaturas fornecem reações endotérmicas e vice-versa.
Estado padrão, na termoquímica, de elementos e compostos químicos:
Um elemento ou composto químico está no estado padrão quando se apresenta em seu estado (físico, alotrópico ou cristalino) mais comum e estável, a 25 °C e a 1 atm de pressão. Por convenção, substância simples ou elemento químico no estado padrão possui entalpia sempre igual a zero.
Entalpia (ou Calor) de formação (ΔH°f)
É o calor liberado ou absorvido na formação de 1 mol de uma substância no estado-padrão, a partir de substância simples.
Ex: Formação da Amônia = N2(g) + 3 H2(g) ->2 NH3(g) ΔH°f = -286KJ
Exercício 1 - Considere os calores de formação:
CH4 : ∆Hf = – 17,9 kcal/mol 
CO2: ∆Hf = – 94,1 kcal/mol 
H2O: ∆Hf = – 68,3 kcal/mol
Vamos calcular a variação de entalpia na seguinte reação: 
CH4 + 2 O2 → CO2 + 2 H2O ∆H = ?
Entalpia de combustão (ΔH°C)
É o calor liberado na queima de 1 mol de uma substância no estado-padrão.
Ex: Queima do enxofre = S(s) + O2(g) -> SO2(g)    ΔH°C = -78 KJ/mol

Exercícios
1) Para aquecer suas refeições, soldados em campanha utilizam um dispositivo chamado \"esquenta-ração sem chama\". Esse dispositivo consiste em uma bolsa plástica que contém magnésio sólido, que é colocado em contato com água, ocorrendo a reação representada, a seguir:
Mg(s) + 2H2O(ℓ )   Mg(OH)2 (S) + H2(g) 
Dados:  DHf°[H2O]= -285,8 kJ/mol
             DHf°[Mg(OH)2]= -924,5 kJ/mol
a)	Qual o DH da reação?   
b)	A reação que ocorre no dispositivo é exotérmica ou endotérmica? Justifique 

2) O óxido nitroso (N2O), substância anestésica, é também conhecido como gás hilariante. Sua preparação em geral, se faz pelo aquecimento do nitrato de amônio (NH4NO3) muito puro, conforme a equação:
NH4NO3  N2O + 2 H2O
Qual a quantidade de calor liberado, ou absorvido, em kcal, no processo de obtenção do gás hilariante ? Sabendo-se que as formações das substâncias N2O, H2O e NH4NO3 ocorrem por meio das seguintes equações termoquímicas:
I) N2 + ½ O2  N2O					DH = - 19,5 kcal
II) H2 + ½ O2  H2O					DH = + 57,8 kcal
III) N2 + 2 H2  NH4NO3					DH = + 87,3 kcal
3) Indique qual das duas substâncias abaixo (NaOH ou NH4NO3) quando dissolvidas em água provocará uma diminuição na temperatura da solução, ou seja, ocorre com absorção de calor. Justifique.
NaOH(s)      Na(aq)   +   OH-(aq)   DH= -43KJ
NH4NO3 (s)   NH4+(aq)   + NO3- (aq)  DH = +26KJ
4) O cultivo da cana-de-açúcar faz parte da nossa história, desde o Brasil Colônia. O açúcar e o álcool são seus principais produtos. Com a crise mundial do petróleo, o incentivo à fabricação de carros a álcool surgiu, na década de 1970, com o Proálcool. Esse Programa Nacional acabou sendo extinto no final da década de 1990. Um dos pontos altos nas discussões em Joanesburgo sobre desenvolvimento sustentável foi o pacto entre Brasil e Alemanha para investimento na produção de carros a álcool.
a) Escreva a equação de combustão do etanol, devidamente balanceada. Calcule o calor de combustão de 1 mol de etanol, a partir das seguintes equações:
                                                               ÐH¡f (kJ/mol)
C (s) + O‚ (g) ë CO‚ (g)                          -  394
H‚ (g) + 1/2 O‚ (g) ë H‚O (Ø)                     - 286
2C(g)+3H‚(g)+1/2O‚(g) ë C‚H…OH(Ø)       - 278
b) A reação de combustão do etanol é endotérmica ou exotémica? Justifique. 

5) (UERJ) O alumínio metálico, devido a sua baixa massa molar, apresenta um calor específico de 900 J × kg­¢ × °C­¢, um dos mais elevados dentre os metais.
A energia necessária para elevar a temperatura de 25 kg de alumínio de 25°C até 35°C pode ser fornecida, em condições-padrão, pela seguinte reação química:
a) S(s) + O‚(g) ë SO‚(g) + 297 kJ
b) 2 C(s) + H‚(g) + 227 kJ ë C‚H‚(g)
c) N‚(g) + O‚(g) ë 2NO(g)       ÐH = +180,8 kJ
d) H‚(g) + CØ‚(g) ë 2 HCØ(g)     ÐH = -185,0 kJ 

6) Em diversos países, o aproveitamento do lixo doméstico é quase 100%. Do lixo levado para as usinas de compostagem, após a reciclagem, obtém-se a biomassa que, por fermentação anaeróbica, produz biogás. Esse gás, além de ser usado no aquecimento de residências e como combustível em veículos e indústrias, é matéria prima importante para a produção das substâncias de fórmula HƒC-OH, HƒC-CØ, HƒC-NO‚ e H‚, além de outras.          CH„ (g) + H‚O (v) ë CO (g) + 3 H‚ (g)  
O gás hidrogênio pode ser obtido pela reação acima equacionada. Dadas as entalpias de formação em kJ/mol, CH„ = - 75, H‚O = - 287 e CO = - 108, a entalpia da reação a 25°C e 1 atm, é igual a: (a questão só será aceita com o desenvolvimento) 
a) + 254 kJ    	b) - 127 kJ      	c) - 470 kJ     	 d) + 508 kJ     	e) - 254 kJ
7) Observe as seguintes equações termoquímicas:
I   - C(s)+H‚O(g) ë CO(g)+H‚(g)......ÐH=31,4kcal
II  - CO(g)+1/2O‚(g) ë CO‚(g).......ÐH=-67,6kcal
III - H‚(g)+1/2O‚(g) ë H‚O(g)........ÐH=-57,8kcal
De acordo com a variação de entalpia, podemos afirmar:
a) I é endotérmica, II e III exotérmicas.
b) I e III são endotérmicas, II exotérmica.
c) II e III são endotérmicas, I exotérmica.
d) I e II são endotérmicas, III exotérmica.
e) II é endotérmica e I e III exotérmicas.

8) Percebe-se, aproximadamente no 14º dia do ciclo menstrual, que a temperatura corporal da mulher aumenta ligeiramente, indicando que está ocorrendo a ovulação. É o chamado \"período fértil\". O aumento da temperatura é atribuído a um aumento da atividade metabólica, produzindo energia, que é liberada sob a forma de calor.
Sabendo-se que ÐH = Hp - Hr, as reações metabólicas que ocorrem no período fértil da mulher são classificadas como:
a) exotérmicas: Hr < Hp                   b) endotérmicas: Hr = Hp
c) endotérmicas: Hr µ Hp                 d) exotérmicas: Hr > Hp
e) exotérmicas: Hr ´  Hp

9) Conhecendo-se as entalpias de formação do Fe2O3  ,  CO  e  do CO2 calcule o D H da Reação:  

	Fe2O3   +   3CO(g)      2Fe   +   3CO2(g)
Dados:
DH  Fe2O3  =  - 196,5 Kcal/mol;   DH  CO = - 26,4 Kcal/mol;  DH CO2 = - 94,1 Kcal/mol


10) Quando se adiciona cal viva (CaO) à água, há uma liberação de calor devida à seguinte reação química:

CaO + H‚O ë Ca (OH)‚ + X kcal/mol

Sabendo-se que as entalpias de formação dos compostos envolvidos são a 1ATM e 25°C (condições padrão)

ÐHf (CaO) = - 151,9 kcal/mol
ÐHf (H‚O) = - 68,3 kcal/mol
ÐHf (Ca(OH)‚) = - 235,8 kcal/mol
Assim, o valor de X da equação anterior será: (mostre o desenvolvimento)
a) 15,6 kcal/mol       b) 31,2 kcal/mol            c) 46,8 kcal/mol
d) 62,4 kcal/mol       e) 93,6 kcal/mol

","../artigo/imagem-artigo/quimica.jpg","Não","2016/01/01 0:00","Química");

insert into artigo(titulo,subtitulo,texto,imagem,visivel,data_pub,nome_categoria)
values ("Teste1","Isso é só um teste","Não tem texto nesse teste","../artigo/imagem-artigo/visualizar.png","Não","2016/01/01 0:00","Ocultado");

insert into artigo(titulo,subtitulo,texto,imagem,visivel,data_pub,nome_categoria)
values ("Teste1","Isso é só um teste","Não tem texto nesse teste","../artigo/imagem-artigo/visualizar.png","Não","2016/01/01 0:00","Ocultado");

insert into artigo(titulo,subtitulo,texto,imagem,visivel,data_pub,nome_categoria)
values ("Teste1","Isso é só um teste","Não tem texto nesse teste","../artigo/imagem-artigo/visualizar.png","Não","2016/01/01 0:00","Ocultado");

insert into artigo(titulo,subtitulo,texto,imagem,visivel,data_pub,nome_categoria)
values ("Teste1","Isso é só um teste","Não tem texto nesse teste","../artigo/imagem-artigo/visualizar.png","Não","2016/01/01 0:00","Ocultado");

insert into artigo(titulo,subtitulo,texto,imagem,visivel,data_pub,nome_categoria)
values ("Teste1","Isso é só um teste","Não tem texto nesse teste","../artigo/imagem-artigo/visualizar.png","Não","2016/01/01 0:00","Ocultado");

insert into artigo(titulo,subtitulo,texto,imagem,visivel,data_pub,nome_categoria)
values ("Teste1","Isso é só um teste","Não tem texto nesse teste","../artigo/imagem-artigo/visualizar.png","Não","2016/01/01 0:00","Ocultado");

insert into artigo(titulo,subtitulo,texto,imagem,visivel,data_pub,nome_categoria)
values ("Teste1","Isso é só um teste","Não tem texto nesse teste","../artigo/imagem-artigo/visualizar.png","Não","2016/01/01 0:00","Ocultado");

insert into artigo(titulo,subtitulo,texto,imagem,visivel,data_pub,nome_categoria)
values ("Teste1","Isso é só um teste","Não tem texto nesse teste","../artigo/imagem-artigo/visualizar.png","Não","2016/01/01 0:00","Ocultado");

insert into artigo(titulo,subtitulo,texto,imagem,visivel,data_pub,nome_categoria)
values ("Teste1","Isso é só um teste","Não tem texto nesse teste","../artigo/imagem-artigo/visualizar.png","Não","2016/01/01 0:00","Ocultado");

insert into artigo(titulo,subtitulo,texto,imagem,visivel,data_pub,nome_categoria)
values ("Teste1","Isso é só um teste","Não tem texto nesse teste","../artigo/imagem-artigo/visualizar.png","Não","2016/01/01 0:00","Ocultado");

insert into artigo(titulo,subtitulo,texto,imagem,visivel,data_pub,nome_categoria)
values ("Teste1","Isso é só um teste","Não tem texto nesse teste","../artigo/imagem-artigo/visualizar.png","Não","2016/01/01 0:00","Ocultado");

insert into artigo(titulo,subtitulo,texto,imagem,visivel,data_pub,nome_categoria)
values ("Teste1","Isso é só um teste","Não tem texto nesse teste","../artigo/imagem-artigo/visualizar.png","Não","2016/01/01 0:00","Ocultado");

insert into artigo(titulo,subtitulo,texto,imagem,visivel,data_pub,nome_categoria)
values ("Teste1","Isso é só um teste","Não tem texto nesse teste","../artigo/imagem-artigo/visualizar.png","Não","2016/01/01 0:00","Ocultado");

insert into artigo(titulo,subtitulo,texto,imagem,visivel,data_pub,nome_categoria)
values ("Teste1","Isso é só um teste","Não tem texto nesse teste","../artigo/imagem-artigo/visualizar.png","Não","2016/01/01 0:00","Ocultado");

insert into artigo(titulo,subtitulo,texto,imagem,visivel,data_pub,nome_categoria)
values ("Teste1","Isso é só um teste","Não tem texto nesse teste","../artigo/imagem-artigo/visualizar.png","Não","2016/01/01 0:00","Ocultado");

insert into artigo(titulo,subtitulo,texto,imagem,visivel,data_pub,nome_categoria)
values ("Teste1","Isso é só um teste","Não tem texto nesse teste","../artigo/imagem-artigo/visualizar.png","Não","2016/01/01 0:00","Ocultado");

insert into artigo(titulo,subtitulo,texto,imagem,visivel,data_pub,nome_categoria)
values ("Teste1","Isso é só um teste","Não tem texto nesse teste","../artigo/imagem-artigo/visualizar.png","Não","2016/01/01 0:00","Ocultado");

insert into artigo(titulo,subtitulo,texto,imagem,visivel,data_pub,nome_categoria)
values ("Teste1","Isso é só um teste","Não tem texto nesse teste","../artigo/imagem-artigo/visualizar.png","Não","2016/01/01 0:00","Ocultado");

insert into artigo(titulo,subtitulo,texto,imagem,visivel,data_pub,nome_categoria)
values ("Teste1","Isso é só um teste","Não tem texto nesse teste","../artigo/imagem-artigo/visualizar.png","Não","2016/01/01 0:00","Ocultado");

insert into artigo(titulo,subtitulo,texto,imagem,visivel,data_pub,nome_categoria)
values ("Teste1","Isso é só um teste","Não tem texto nesse teste","../artigo/imagem-artigo/visualizar.png","Não","2016/01/01 0:00","Ocultado");

insert into artigo(titulo,subtitulo,texto,imagem,visivel,data_pub,nome_categoria)
values ("Teste1","Isso é só um teste","Não tem texto nesse teste","../artigo/imagem-artigo/visualizar.png","Não","2016/01/01 0:00","Ocultado");

insert into artigo(titulo,subtitulo,texto,imagem,visivel,data_pub,nome_categoria)
values ("Teste1","Isso é só um teste","Não tem texto nesse teste","../artigo/imagem-artigo/visualizar.png","Não","2016/01/01 0:00","Ocultado");

insert into artigo(titulo,subtitulo,texto,imagem,visivel,data_pub,nome_categoria)
values ("Teste1","Isso é só um teste","Não tem texto nesse teste","../artigo/imagem-artigo/visualizar.png","Não","2016/01/01 0:00","Ocultado");

insert into artigo(titulo,subtitulo,texto,imagem,visivel,data_pub,nome_categoria)
values ("Teste1","Isso é só um teste","Não tem texto nesse teste","../artigo/imagem-artigo/visualizar.png","Não","2016/01/01 0:00","Ocultado");

insert into artigo(titulo,subtitulo,texto,imagem,visivel,data_pub,nome_categoria)
values ("Teste1","Isso é só um teste","Não tem texto nesse teste","../artigo/imagem-artigo/visualizar.png","Não","2016/01/01 0:00","Ocultado");

insert into artigo(titulo,subtitulo,texto,imagem,visivel,data_pub,nome_categoria)
values ("Teste1","Isso é só um teste","Não tem texto nesse teste","../artigo/imagem-artigo/visualizar.png","Não","2016/01/01 0:00","Ocultado");

insert into artigo(titulo,subtitulo,texto,imagem,visivel,data_pub,nome_categoria)
values ("Teste1","Isso é só um teste","Não tem texto nesse teste","../artigo/imagem-artigo/visualizar.png","Não","2016/01/01 0:00","Ocultado");

insert into artigo(titulo,subtitulo,texto,imagem,visivel,data_pub,nome_categoria)
values ("Teste1","Isso é só um teste","Não tem texto nesse teste","../artigo/imagem-artigo/visualizar.png","Não","2016/01/01 0:00","Ocultado");

insert into artigo(titulo,subtitulo,texto,imagem,visivel,data_pub,nome_categoria)
values ("Teste1","Isso é só um teste","Não tem texto nesse teste","../artigo/imagem-artigo/visualizar.png","Não","2016/01/01 0:00","Ocultado");

insert into artigo(titulo,subtitulo,texto,imagem,visivel,data_pub,nome_categoria)
values ("Teste1","Isso é só um teste","Não tem texto nesse teste","../artigo/imagem-artigo/visualizar.png","Não","2016/01/01 0:00","Ocultado");

insert into artigo(titulo,subtitulo,texto,imagem,visivel,data_pub,nome_categoria)
values ("Teste1","Isso é só um teste","Não tem texto nesse teste","../artigo/imagem-artigo/visualizar.png","Não","2016/01/01 0:00","Ocultado");

insert into artigo(titulo,subtitulo,texto,imagem,visivel,data_pub,nome_categoria)
values ("Teste1","Isso é só um teste","Não tem texto nesse teste","../artigo/imagem-artigo/visualizar.png","Não","2016/01/01 0:00","Ocultado");

insert into artigo(titulo,subtitulo,texto,imagem,visivel,data_pub,nome_categoria)
values ("Teste1","Isso é só um teste","Não tem texto nesse teste","../artigo/imagem-artigo/visualizar.png","Não","2016/01/01 0:00","Ocultado");

insert into artigo(titulo,subtitulo,texto,imagem,visivel,data_pub,nome_categoria)
values ("Teste1","Isso é só um teste","Não tem texto nesse teste","../artigo/imagem-artigo/visualizar.png","Não","2016/01/01 0:00","Ocultado");

insert into artigo(titulo,subtitulo,texto,imagem,visivel,data_pub,nome_categoria)
values ("Teste1","Isso é só um teste","Não tem texto nesse teste","../artigo/imagem-artigo/visualizar.png","Não","2016/01/01 0:00","Ocultado");

insert into artigo(titulo,subtitulo,texto,imagem,visivel,data_pub,nome_categoria)
values ("Teste1","Isso é só um teste","Não tem texto nesse teste","../artigo/imagem-artigo/visualizar.png","Não","2016/01/01 0:00","Ocultado");

insert into artigo(titulo,subtitulo,texto,imagem,visivel,data_pub,nome_categoria)
values ("Teste1","Isso é só um teste","Não tem texto nesse teste","../artigo/imagem-artigo/visualizar.png","Não","2016/01/01 0:00","Ocultado");

insert into artigo(titulo,subtitulo,texto,imagem,visivel,data_pub,nome_categoria)
values ("Teste1","Isso é só um teste","Não tem texto nesse teste","../artigo/imagem-artigo/visualizar.png","Não","2016/01/01 0:00","Ocultado");

insert into artigo(titulo,subtitulo,texto,imagem,visivel,data_pub,nome_categoria)
values ("Teste1","Isso é só um teste","Não tem texto nesse teste","../artigo/imagem-artigo/visualizar.png","Não","2016/01/01 0:00","Ocultado");

insert into artigo(titulo,subtitulo,texto,imagem,visivel,data_pub,nome_categoria)
values ("Teste1","Isso é só um teste","Não tem texto nesse teste","../artigo/imagem-artigo/visualizar.png","Não","2016/01/01 0:00","Ocultado");

insert into artigo(titulo,subtitulo,texto,imagem,visivel,data_pub,nome_categoria)
values ("Teste1","Isso é só um teste","Não tem texto nesse teste","../artigo/imagem-artigo/visualizar.png","Não","2016/01/01 0:00","Ocultado");

insert into artigo(titulo,subtitulo,texto,imagem,visivel,data_pub,nome_categoria)
values ("Teste1","Isso é só um teste","Não tem texto nesse teste","../artigo/imagem-artigo/visualizar.png","Não","2016/01/01 0:00","Ocultado");

insert into artigo(titulo,subtitulo,texto,imagem,visivel,data_pub,nome_categoria)
values ("Teste1","Isso é só um teste","Não tem texto nesse teste","../artigo/imagem-artigo/visualizar.png","Não","2016/01/01 0:00","Ocultado");

insert into artigo(titulo,subtitulo,texto,imagem,visivel,data_pub,nome_categoria)
values ("Teste1","Isso é só um teste","Não tem texto nesse teste","../artigo/imagem-artigo/visualizar.png","Não","2016/01/01 0:00","Ocultado");

insert into artigo(titulo,subtitulo,texto,imagem,visivel,data_pub,nome_categoria)
values ("Teste1","Isso é só um teste","Não tem texto nesse teste","../artigo/imagem-artigo/visualizar.png","Não","2016/01/01 0:00","Ocultado");

insert into artigo(titulo,subtitulo,texto,imagem,visivel,data_pub,nome_categoria)
values ("Teste1","Isso é só um teste","Não tem texto nesse teste","../artigo/imagem-artigo/visualizar.png","Não","2016/01/01 0:00","Ocultado");

insert into artigo(titulo,subtitulo,texto,imagem,visivel,data_pub,nome_categoria)
values ("Teste1","Isso é só um teste","Não tem texto nesse teste","../artigo/imagem-artigo/visualizar.png","Não","2016/01/01 0:00","Ocultado");

insert into artigo(titulo,subtitulo,texto,imagem,visivel,data_pub,nome_categoria)
values ("Teste1","Isso é só um teste","Não tem texto nesse teste","../artigo/imagem-artigo/visualizar.png","Não","2016/01/01 0:00","Ocultado");

insert into artigo(titulo,subtitulo,texto,imagem,visivel,data_pub,nome_categoria)
values ("Teste1","Isso é só um teste","Não tem texto nesse teste","../artigo/imagem-artigo/visualizar.png","Não","2016/01/01 0:00","Ocultado");

insert into artigo(titulo,subtitulo,texto,imagem,visivel,data_pub,nome_categoria)
values ("Teste1","Isso é só um teste","Não tem texto nesse teste","../artigo/imagem-artigo/visualizar.png","Não","2016/01/01 0:00","Ocultado");

insert into artigo(titulo,subtitulo,texto,imagem,visivel,data_pub,nome_categoria)
values ("Teste1","Isso é só um teste","Não tem texto nesse teste","../artigo/imagem-artigo/visualizar.png","Não","2016/01/01 0:00","Ocultado");

