��    �      <  �   \      (  ~   )     �  0   �  +   �  q        �  4   �  7   �  s     .   �  G   �  4     )   ;  w   e  4   �  9        L     _  @   s  7   �  ,   �  !        ;  ,   Y  1   �  *   �  -   �  1     '   C  &   k  +   �  "   �  #   �       )     =   7  	   u       &   �  <   �  !   �  	   !  -   +  <   Y  +   �  "   �     �  ,         -  3   L  <   �  *   �  "   �  '        3     G  !   b     �  !   �     �      �  3   �  /   )  '   Y  )   �  *   �  5   �  I     ,   V  /   �  *   �  =   �  '        D     _     {  "   �     �     �  -   �  ,     ,   <  5   i     �  )   �  ?   �  8   %  �   ^     �       0   -  5   ^     �  A   �  L   �  +   8     d  6   r  '   �  #   �     �  (     4   +  )   `  #   �     �     �  /   �           :      S  $   t     �  "   �  ,   �            !   9  '   [     �     �  D   �  +      ?   .   0   n      �   8   �      �      !  &   3!      Z!  �  {!  �   1#     �#  8   �#  -   $  z   ?$  "   �$  ;   �$  ?   %  ~   Y%  :   �%  V   &  C   j&  ,   �&  �   �&  >   n'  G   �'     �'     (  J   '(  >   r(  :   �(  &   �(  /   )  D   C)  6   �)  /   �)  2   �)  6   "*  ,   Y*  +   �*  0   �*  '   �*  *   +     6+  +   =+  I   i+  
   �+      �+  7   �+  K   ,  #   c,     �,  7   �,  9   �,  6   -  *   8-     c-  -   {-     �-  0   �-  5   �-  0   /.  -   `.  .   �.     �.     �.  &   �.     /  &   </     c/  '   v/  9   �/  8   �/  (   0  (   :0  (   c0  C   �0  X   �0  /   )1  8   Y1  6   �1  ?   �1  3   	2     =2     V2     u2  -   �2     �2     �2  0   �2  0   3  0   N3  <   3     �3  /   �3  J   4  ?   P4  �   �4     Z5      x5  E   �5  ?   �5     6  Q   46  W   �6  6   �6     7  ?   "7  .   b7  &   �7     �7  +   �7  :   �7  +   /8  )   [8  $   �8     �8  3   �8  $   �8  &    9  '   G9  /   o9     �9  /   �9  7   �9  !   &:  !   H:  6   j:  3   �:  ,   �:  3   ;  P   6;  6   �;  K   �;  7   
<  "   B<  C   e<  !   �<  !   �<  )   �<  )   =           s   r      A          N   &   Y      W   '         G   <   o   }       u       3       S   T   X   x       h   1                    f          {          ;   5               D       a   ?   %       P   m   *      F   C                       
      n   !   \   �   +   (               E   l      q   2   7              i               �   e   H           :               M   O   [      $             B   8   R   6   w   z   d       ^   )   ~   #   K   t   Z           	   �       -   J   0   k          j   >       �   I   "   9      4              p      @       g   V       |      ]   ,       `   y   /           c   �   _   =   Q           .            U   b         v   L    
If no output file is specified, the name is formed by adding .c to the
input file name, after stripping off .pgc if present.
 
Report bugs to <%s>.
   --regression   run in regression testing mode
   -?, --help     show this help, then exit
   -C MODE        set compatibility mode; MODE can be one of
                 "INFORMIX", "INFORMIX_SE", "ORACLE"
   -D SYMBOL      define SYMBOL
   -I DIRECTORY   search DIRECTORY for include files
   -V, --version  output version information, then exit
   -c             automatically generate C code from embedded SQL code;
                 this affects EXEC SQL TYPE
   -d             generate parser debug output
   -h             parse a header file, this option includes option "-c"
   -i             parse system include files as well
   -o OUTFILE     write result to OUTFILE
   -r OPTION      specify run-time behavior; OPTION can be:
                 "no_indicator", "prepare", "questionmarks"
   -t             turn on autocommit of transactions
 "database" cannot be used as cursor name in INFORMIX mode %s at or near "%s" %s home page: <%s>
 %s is the PostgreSQL embedded SQL preprocessor for C programs.

 %s, the PostgreSQL embedded C preprocessor, version %s
 %s: could not locate my own executable path
 %s: could not open file "%s": %s
 %s: no input files specified
 %s: parser debug support (-d) not available
 AT option not allowed in CLOSE DATABASE statement AT option not allowed in CONNECT statement AT option not allowed in DISCONNECT statement AT option not allowed in SET CONNECTION statement AT option not allowed in TYPE statement AT option not allowed in VAR statement AT option not allowed in WHENEVER statement COPY FROM STDIN is not implemented CREATE TABLE AS cannot specify INTO ERROR:  EXEC SQL INCLUDE ... search starts here:
 Error: include path "%s/%s" is too long on line %d, skipping
 Options:
 SHOW ALL is not implemented Try "%s --help" for more information.
 Unix-domain sockets only work on "localhost" but not on "%s" Usage:
  %s [OPTION]... FILE...

 WARNING:  arrays of indicators are not allowed on input connection %s is overwritten with %s by DECLARE statement %s could not open include file "%s" on line %d could not remove output file "%s"
 cursor "%s" does not exist cursor "%s" has been declared but not opened cursor "%s" is already defined descriptor %s bound to connection %s does not exist descriptor %s bound to the default connection does not exist descriptor header item "%d" does not exist descriptor item "%s" cannot be set descriptor item "%s" is not implemented end of search list
 expected "://", found "%s" expected "@" or "://", found "%s" expected "@", found "%s" expected "postgresql", found "%s" incomplete statement incorrectly formed variable "%s" indicator for array/pointer has to be array/pointer indicator for simple data type has to be simple indicator for struct has to be a struct indicator struct "%s" has too few members indicator struct "%s" has too many members indicator variable "%s" is hidden by a local variable indicator variable "%s" is hidden by a local variable of a different type indicator variable must have an integer type initializer not allowed in EXEC SQL VAR command initializer not allowed in type definition internal error: unreachable state; please report this to <%s> interval specification not allowed here invalid bit string literal invalid connection type: %s invalid data type invalid hexadecimal string literal key_member is always 0 missing "EXEC SQL ENDIF;" missing identifier in EXEC SQL DEFINE command missing identifier in EXEC SQL IFDEF command missing identifier in EXEC SQL UNDEF command missing matching "EXEC SQL IFDEF" / "EXEC SQL IFNDEF" more than one EXEC SQL ELSE multidimensional arrays are not supported multidimensional arrays for simple data types are not supported multidimensional arrays for structures are not supported multilevel pointers (more than 2 levels) are not supported; found %d level multilevel pointers (more than 2 levels) are not supported; found %d levels name "%s" is already declared nested /* ... */ comments nested arrays are not supported (except strings) no longer supported LIMIT #,# syntax passed to server nullable is always 1 only data types numeric and decimal have precision/scale argument only protocols "tcp" and "unix" and database type "postgresql" are supported operator not allowed in variable definition out of memory pointer to pointer is not supported for this data type pointers to varchar are not implemented subquery in FROM must have an alias syntax error syntax error in EXEC SQL INCLUDE command too many levels in nested structure/union definition too many nested EXEC SQL IFDEF conditions trailing junk after numeric literal trailing junk after parameter type "%s" is already defined type name "string" is reserved in Informix mode unhandled previous state in xqs
 unmatched EXEC SQL ENDIF unrecognized data type name "%s" unrecognized descriptor item code %d unrecognized token "%s" unrecognized variable type code %d unsupported feature will be passed to server unterminated /* comment unterminated bit string literal unterminated dollar-quoted string unterminated hexadecimal string literal unterminated quoted identifier unterminated quoted string using variable "%s" in different declare statements is not supported variable "%s" is hidden by a local variable variable "%s" is hidden by a local variable of a different type variable "%s" is neither a structure nor a union variable "%s" is not a pointer variable "%s" is not a pointer to a structure or a union variable "%s" is not an array variable "%s" is not declared variable "%s" must have a numeric type zero-length delimited identifier Project-Id-Version: PostgreSQL 15
Report-Msgid-Bugs-To: pgsql-bugs@lists.postgresql.org
POT-Creation-Date: 2022-09-10 18:22-0300
PO-Revision-Date: 2018-06-25 08:59+0200
Last-Translator: Euler Taveira <euler@eulerto.com>
Language-Team: Brazilian Portuguese <pgsql-translators@postgresql.org>
Language: pt_BR
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Plural-Forms: nplurals=2; plural=(n>1);
 
Se nenhum arquivo de saída for especificado, o nome é formado adicionando .c ao
nome do arquivo de entrada, após remover .pgc se presente.
 
Relate erros a <%s>.
   --regression   executa em modo de teste de regressão
   -?, --help     mostra essa ajuda e termina
   -C mode        define o modo de compatilidade; MODE pode ser um de
                 "INFORMIX", "INFORMIX_SE", "ORACLE"
   -D SÍMBOLO     define SÍMBOLO
   -I DIRETÓRIO   procura DIRETÓRIO para incluir arquivos
   -V, --version  mostra informação sobre a versão e termina
   -c             gera automaticamente código C a partir do código SQL embutido;
                 isso afeta o EXEC SQL TYPE
   -d             gera saída de depuração do analisador
   -h             analisa um arquivo de cabeçalho, essa opção inclui a opção "-c"
   -i             analisa arquivos de cabeçalho do sistema também
   -o ARQUIVO     grava resultado no ARQUIVO
   -r OPÇÃO       especifica comportamento em tempo de execução; OPÇÃO pode ser:
                 "no_indicator", "prepare", "questionmarks"
   -t             habilita o auto efetivação de transações
 "database" não pode ser utilizado como nome de cursor no modo INFORMIX %s em ou próximo a "%s" Página web do %s: <%s>
 %s é o pré-processador SQL embutido do PostgreSQL para programas em C.

 %s, the pré-processador C embutido do PostgreSQL, versão %s
 %s: não pôde localizar meu próprio caminho executável
 %s: não pôde abrir arquivo "%s": %s
 %s: nenhum arquivo de entrada foi especificado
 %s: suporte a depuração do analisador (-d) não está disponível
 opção AT não é permitida no comando CLOSE DATABASE opção AT não é permitida no comando CONNECT opção AT não é permitida no comando DISCONNECT opção AT não é permitida no comando SET CONNECTION opção AT não é permitida no comando TYPE opção AT não é permitida no comando VAR opção AT não é permitida no comando WHENEVER COPY FROM STDIN não está implementado CREATE TABLE AS não pode especificar INTO ERRO:  EXEC SQL INCLUDE ... pesquisa inicia aqui:
 Erro: caminho de inclusão "%s/%s" é muito longo na linha %d, ignorando
 Opções:
 SHOW ALL não está implementado Tente "%s --help" para obter informações adicionais.
 Soquetes de domínio Unix trabalham somente com "localhost" e não com "%s" Uso:
  %s [OPÇÃO]... ARQUIVO...

 AVISO:  matrizes do indicadores não são permitidas na entrada conexão %s é sobrescrita com %s pelo comando DECLARE %s não pôde abrir arquivo de inclusão "%s" na linha %d não pôde remover arquivo de saída "%s"
 cursor "%s" não existe cursor "%s" foi declarado mas não foi aberto cursor "%s" já está definido descritor %s vinculado a conexão %s não existe descritor %s vinculado a conexão padrão não existe item do cabeçalho do descritor "%d" não existe item do descritor "%s" não pode ser definido item do descritor "%s" não está implementado fim da lista de pesquisa
 esperado "://", encontrado "%s" esperado "@" ou "://", encontrado "%s" esperado "@", encontrado "%s" esperado "postgresql", encontrado "%s" comando incompleto variável "%s" possui formato incorreto indicador para matriz/ponteiro tem de ser matriz/ponteiro indicador para tipo de dados simples tem que ser simples indicador para struct tem que ser struct indicador struct "%s" tem poucos membros indicador struct "%s" tem muitos membros variável de indicador "%s" está escondida por uma variável local variável de indicador "%s" está escondida por uma variável local de um tipo diferente variável de indicador deve ter um tipo inteiro inicilização não é permitido no comando EXEC SQL VAR inicializador não é permitido na definição do tipo erro interno: estado inacessível; por favor relato isso a <%s> especificação de intervalo não é permitida aqui cadeia de bits inválida tipo de conexão inválido: %s tipo de dado inválido cadeia de caracteres hexadecimal é inválida key_member é sempre 0 faltando "EXEC SQL ENDIF;" faltando identificador no comando EXEC SQL IFDEF faltando identificador no comando EXEC SQL IFDEF faltando identificador no comando EXEC SQL UNDEF faltando correspondente "EXEC SQL IFDEF" / "EXEC SQL IFNDEF" mais de um EXEC SQL ELSE matrizes multidimensionais não são suportadas matrizes multidimensionais para tipo de dados simples não são suportadas matrizes multidimensionais para estruturas não são suportadas ponteiros com múltiplos níveis (mais do que 2 níveis) não são suportados; %d nível encontrado ponteiros com múltiplos níveis (mais do que 2 níveis) não são suportados; %d níveis encontrados nome "%s" já está declarado comentários /* ... */ aninhados matrizes aninhadas não são suportadas (exceto cadeia de caracteres) sintaxe LIMIT #,# que não é suportada foi enviada ao servidor nullable é sempre 1 somente os tipos de dados numeric e decimal possuem argumento de precisão/escala somente os protocolos "tcp" e "unix" e tipo banco de dados "postgressql" sãosuportados operador não é permitido na definição da variável sem memória ponteiro para ponteiro não é suportado para esse tipo de dado ponteiros para varchar não estão implentados subconsulta no FROM deve ter um aliás erro de sintaxe erro de sintaxe no comando EXEC SQL INCLUDE muitos níveis em definição aninhada de estrutura/união muitas condições EXEC SQL IFDEF aninhadas elemento indesejado após valor numérico elemento indesejado após parâmetro tipo "%s" já está definido nome de tipo "string" é reservado no modo Informix estado anterior não tratado em xqs
 EXEC SQL ENDIF não tem correspondente nome do tipo dados "%s" é desconhecido código do item do descritor %d é desconhecido informação desconhecida "%s" tipo de código de variável %d é desconhecido funcionalidade não suportada será enviada ao servidor comentário /* não foi terminado cadeia de bits não foi terminada cadeia de caracteres entre dólares não foi terminada cadeia de caracteres hexadecimal não foi terminada identificador entre aspas não foi terminado cadeia de caracteres entre aspas não foi terminada utilizar variável "%s" em comandos de declaração diferentes não é suportado variável "%s" está escondida por uma variável local variável "%s" está escondida por uma variável local de um tipo diferente variável "%s" não é nem uma estrutura nem uma união variável "%s" não é um ponteiro variável "%s" não é um ponteiro para uma estrutura ou uma união variável "%s" não é uma matriz variável "%s" não foi declarada variável "%s" deve ter um tipo númerico identificador delimitado tem tamanho zero 