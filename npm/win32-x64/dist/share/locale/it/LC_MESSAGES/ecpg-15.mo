��    �      <  �   \      (  ~   )     �  0   �  +   �  q        �  4   �  7   �  s     .   �  G   �  4     )   ;  w   e  4   �  9        L     _  @   s  7   �  ,   �  !        ;  ,   Y  1   �  *   �  -   �  1     '   C  &   k  +   �  "   �  #   �       )     =   7  	   u       &   �  <   �  !   �  	   !  -   +  <   Y  +   �  "   �     �  ,         -  3   L  <   �  *   �  "   �  '        3     G  !   b     �  !   �     �      �  3   �  /   )  '   Y  )   �  *   �  5   �  I     ,   V  /   �  *   �  =   �  '        D     _     {  "   �     �     �  -   �  ,     ,   <  5   i     �  )   �  ?   �  8   %  �   ^     �       0   -  5   ^     �  A   �  L   �  +   8     d  6   r  '   �  #   �     �  (     4   +  )   `  #   �     �     �  /   �           :      S  $   t     �  "   �  ,   �            !   9  '   [     �     �  D   �  +      ?   .   0   n      �   8   �      �      !  &   3!      Z!  �  {!  �   o#     $  9   $  -   S$  �   �$  #   	%  5   -%  <   c%  �   �%  5   "&  F   X&  2   �&  0   �&  �   '  ?   �'  Q   �'     (     0(  O   M(  C   �(  0   �(  '   )  2   :)  <   m)  ;   �)  4   �)  7   *  ;   S*  1   �*  0   �*  5   �*  #   (+  )   L+     v+  /   +  a   �+  	   ,     ,  -   8,  H   f,  %   �,     �,  %   �,  F   -  6   O-  *   �-     �-  2   �-      �-  :    .  C   [.  3   �.  6   �.  0   
/     ;/     X/  %   s/     �/  !   �/     �/  ,   �/  C   0  ?   [0  9   �0  4   �0  ,   
1  C   71  S   {1  8   �1  4   2  D   =2  B   �2  -   �2  &   �2  "   3     =3  (   R3     {3     �3  3   �3  2   �3  2   4  ?   D4     �4  /   �4  F   �4  =   5  �   R5  %   �5     6  ?   .6  >   n6     �6  F   �6  U   	7  5   _7     �7  B   �7  +   �7  )   8     ?8  /   R8  B   �8  )   �8  ,   �8  #   9     @9  =   ^9  $   �9  !   �9  )   �9  $   :     2:  '   I:  =   q:     �:  )   �:  +   �:  .   ;  +   N;  $   z;  K   �;  5   �;  E   !<  9   g<  %   �<  F   �<  !   =  )   0=  .   Z=  +   �=           s   r      A          N   &   Y      W   '         G   <   o   }       u       3       S   T   X   x       h   1                    f          {          ;   5               D       a   ?   %       P   m   *      F   C                       
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
 unmatched EXEC SQL ENDIF unrecognized data type name "%s" unrecognized descriptor item code %d unrecognized token "%s" unrecognized variable type code %d unsupported feature will be passed to server unterminated /* comment unterminated bit string literal unterminated dollar-quoted string unterminated hexadecimal string literal unterminated quoted identifier unterminated quoted string using variable "%s" in different declare statements is not supported variable "%s" is hidden by a local variable variable "%s" is hidden by a local variable of a different type variable "%s" is neither a structure nor a union variable "%s" is not a pointer variable "%s" is not a pointer to a structure or a union variable "%s" is not an array variable "%s" is not declared variable "%s" must have a numeric type zero-length delimited identifier Project-Id-Version: ecpg (PostgreSQL) 11
Report-Msgid-Bugs-To: pgsql-bugs@lists.postgresql.org
POT-Creation-Date: 2022-09-30 12:09+0000
PO-Revision-Date: 2022-09-30 15:07+0200
Last-Translator: Domenico Sgarbossa <sgarbossa.domenico@gmail.com>
Language-Team: https://github.com/dvarrazzo/postgresql-it
Language: it
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Plural-Forms: nplurals=2; plural=n != 1;
X-Poedit-SourceCharset: utf-8
X-Generator: Poedit 2.3
 
Se non viene specificato nessun file di output, il nome è composto aggiungendo
.c al nome del file di input, dopo aver tolto .pgc se presente.
 
Segnala i bug a <%s>.
   --regression   esegui in modalità test di regressione
   -?, --help     mostra questo aiuto ed esci
   -C MODO        imposta la modalità di compatibilità; MODO può essere uno
                 tra "INFORMIX", "INFORMIX_SE", "ORACLE"
   -D SIMBOLO     definisci SIMBOLO
   -I DIRECTORY   cerca gli include file in DIRECTORY
   -V --version   mostra informazioni sulla versione ed esci
   -c             genera automaticamente il codice C dal codice SQL embedded;
                 questo ha effetto su EXEC SQL TYPE
   -d             genera l'output di debug del parser
   -h             analizza un file header, questa opzione include "-c"
   -i             analizza anche i file di sistema
   -o FILEOUT     scrive il risultato in FILEOUT
   -r OPZIONE     specifica il comportamento run-time; OPZIONE può essere:
                 "no_indicator", "prepare", "questionmarks"
   -t             attiva il commit automatico delle transazioni
 "database" non può essere utilizzato come nome del cursore in modalità INFORMIX %s a o presso "%s" Pagina iniziale di %s: <%s>
 %s è il preprocessore SQL embedded di PostgreSQL per programmi scritti in C.

 %s, il preprocessore di PostgreSQL per programmi in C, versione %s
 %s: percorso del proprio eseguibile non trovato
 %s: apertura del file "%s" fallita: %s
 %s: non è stato specificato nessun file di input
 %s: il supporto al debug del parser (-d) non è disponibile
 l'opzione AT non è permessa nell'istruzione CLOSE DATABASE l'opzione AT non è permessa nell'istruzione CONNECT l'opzione AT non è permessa nell'istruzione DISCONNECT l'opzione AT non è permessa nell'istruzione SET CONNECTION l'opzione AT non è permessa nell'istruzione TYPE l'opzione AT non è permessa nell'istruzione VAR l'opzione AT non è permessa nell'istruzione WHENEVER COPY FROM STDIN non è implementato CREATE TABLE AS non può specificare INTO ERRORE:  EXEC SQL INCLUDE ... la ricerca inizia da qui:
 Errore: il percorso delle inclusioni "%s/%s" è troppo lungo alla riga %d, perciò viene saltato
 Opzioni:
 SHOW ALL non è implementato Prova "%s --help" per maggiori informazioni.
 i socket di dominio Unix funzionano solo con "localhost" ma non con "%s" Utilizzo:
  %s [OPZIONE]... FILE...

 ATTENZIONE:  array di indicatori non sono permessi la connessione %s viene sovrascritta con %s dall'istruzione DECLARE %s apertura del file di include "%s" alla riga %d fallita rimozione del file di output "%s" fallita
 il cursore "%s" non esiste il cursore "%s" è stato dichiarato, ma non aperto il cursore "%s" è già definito il descrittore %s associato alla connessione %s non esiste il descrittore %s associato alla connessione predefinita non esiste la voce "%d" dell'header del descrittore non esiste la voce "%s" del descrittore non può essere impostata la voce "%s" del descrittore non è implementata fine della lista di ricerca
 atteso "://", trovato "%s" atteso "@" oppure "://", trovato "%s" atteso "@", trovato "%s" atteso "postgresql", trovato "%s" istruzione incompleta variabile "%s" composta in maniera scorretta un indicatore per un array/puntatore deve essere un array/puntatore un indicatore per un tipo di dato semplice deve essere semplice un indicatore per una struttura deve essere una struttura l'indicatore struttura "%s" non ha abbastanza membri l'indicatore struttura "%s" ha troppi membri la variabile di indicatore "%s" è nascosta da una variabile locale la variabile di indicatore "%s" è nascosta da una variabile locale di tipo diverso il tipo di variabile di un indicatore deve essere intero initializer non è permesso nel comando EXEC SQL VAR l'inizializzatore non è permesso nella definizione del tipo di dato errore interno: stato irraggiungibile; per favore segnalalo a <%s> specificazione di intervallo non permessa qui bit nella stringa letterale non valido tipo di connessione non valido: %s tipo dato non valido letterale stringa esadecimale non valido key_member è sempre 0 manca "EXEC SQL ENDIF;" identificativo mancante nel comando EXEC SQL DEFINE identificativo mancante nel comando EXEC SQL IFDEF identificativo mancante nel comando EXEC SQL UNDEF mancata corrispondenza fra "EXEC SQL IFDEF" / "EXEC SQL IFNDEF" più di un EXEC SQL ELSE gli array multidimensionali non sono supportati gli array multidimensionali per tipi dato semplici non sono supportati gli array multidimensionali per strutture non sono supportati puntatori a più livelli (più di 2) non sono supportati; trovato %d livello puntatori a più livelli (più di 2) non sono supportati; trovati %d livelli il nome "%s" è già stato dichiarato commenti /* ... */ annidati array annidati non sono supportati (tranne che per le stringhe) la sintassi LIMIT #,# passata al server non è più supportata nullable è sempre 1 solo i dati di tipo numeric e decimal hanno argomento precisione/scala soltanto i protocolli "tcp" e "unix" ed il tipo database "postgresql" sono supportati operatore non permesso nella definizione di variabile memoria esaurita il puntatore a puntatore non è supportato per questo tipo di dato i puntatori a varchar non sono implementati la sottoquery in FROM deve avere un alias errore di sintassi errore di sintassi nel comando EXEC SQL INCLUDE troppi livelli nidificati nella definizione della struttura/unione troppe condizioni EXEC SQL IFDEF annidate spazzatura finale dopo il letterale numerico spazzatura finale dopo il parametro il tipo "%s" è già definito il nome di tipo "string" è riservato alla modalità Informix stato precedente non gestito in xqs
 EXEC SQL ENDIF non corrispondente tipo di dato chiamato "%s" è sconosciuto descrittore di codice %d sconosciuto token "%s" sconosciuto tipo di variabile sconosciuto codice %d al server è stata richiesta una funzionalità non supportata commento /* non terminato letterale di stringa di bit non terminato stringa delimitata da dollari non terminata letterale di stringa esadecimale non terminato identificativo tra virgolette non terminato stringa tra virgolette non terminata usare la variabile "%s" in una diversa istruzione declare non è supportato la variabile "%s" è nascosta da una variabile locale la variabile "%s" è nascosta da una variabile locale di tipo diverso la variabile "%s" non è né una struttura né una unione la variabile "%s" non è un puntatore la variabile "%s" non è un puntatore ad una struttura o ad una unione la variabile "%s" non è un array la variabile "%s" non è stata dichiarata la variabile "%s" deve essere di tipo numerico identificativo delimitato di lunghezza zero 