��    �        �   
      �      �     �  &   �     �          "     9     O  /   b     �  "   �  1   �  �     "   �  j   �  o   1     �  D   �  !     3   &  ?   Z  H   �  D   �  C   (  E   l  ?   �  ?   �  >   2  9   q  L   �  B   �  E   ;  �   �  0     F   7  >   ~  B   �  I      %   J  <   p  O   �  7   �     5     <     E     W  M   k     �  -   �  !   �  >     E   X  C   �  y   �  9   \  D   �  C   �  D     E   d  >   �  A   �  '   +  (   S  ,   |  7   �  2   �  6     >   K  *   �  /   �  7   �  4     %   R  %   x  1   �  0   �  #        %  4   C  7   x  2   �  6   �  1     0   L  ,   }  .   �  3   �  7         E   +   e   1   �   6   �   6   �   1   1!  *   c!  "   �!  7   �!  "   �!  $   "  J   1"     |"     �"  3   �"  0   �"     #  #   '#  !   K#     m#  !   �#  $   �#      �#  -   �#     "$  4   B$  %   w$  $   �$  "   �$  !   �$  u   %  F   }%     �%  7   �%  )   &  %   :&  &   `&     �&     �&  /   �&  &   �&  0   '  .   6'  -   e'     �'     �'  &   �'      �'  ,   (  (   1(     Z(  %   u(     �(     �(     �(  M   �(  B   )     ])     n)     �)     �)  #   �)     �)     �)     �)     �)     *      3*  "   T*     w*  �  �*  '   $,     L,  .   _,  %   �,  $   �,     �,     �,     -  1   '-     Y-  #   x-  2   �-  �   �-  #   m.  p   �.  s   /     v/  I   �/  "   �/  5   0  M   80  N   �0  E   �0  T   1  H   p1  G   �1  K   2  C   M2  >   �2  Z   �2  M   +3  F   y3  �   �3  9   Z4  L   �4  N   �4  P   05  \   �5  )   �5  I   6  d   R6  A   �6     �6      7     7     7  [   37     �7  2   �7  $   �7  =   �7  M   58  R   �8  �   �8  G   m9  S   �9  U   	:  T   _:  \   �:  ]   ;  P   o;  0   �;  +   �;  0   <  C   N<  =   �<  9   �<  F   
=  %   Q=  <   w=  B   �=  C   �=  -   ;>  -   i>  <   �>  8   �>  -   ?      ;?  <   \?  E   �?  ?   �?  ?   @  9   _@  6   �@  .   �@  5   �@  ;   5A  ?   qA  $   �A  5   �A  :   B  F   GB  I   �B  C   �B  8   C      UC  H   vC  *   �C  &   �C  f   D  $   xD  %   �D  ?   �D  ;   E     ?E  (   QE  "   zE     �E  )   �E  '   �E  (   F  6   4F  $   kF  =   �F  ,   �F  +   �F  $   'G  &   LG  z   sG  J   �G     9H  >   WH  2   �H  2   �H  7   �H     4I      :I  0   [I  0   �I  2   �I  0   �I  .   !J     PJ     lJ  )   �J  ,   �J  2   �J  +   K     >K  '   ]K     �K     �K     �K  Z   �K  M   L     dL     xL     �L     �L  3   �L      M     M     -M     DM  &   dM  #   �M      �M     �M     a   2   *   B       �   ,   U   �   )   7       M   �       ;   L   <       R      W          &   b   G   8   4          �   �           -      6      �       O       �      �   T   �           1   K   h   �   �              �   P      {       X          0              �          �   !   :   w   |   �   z       #          p   +       t       V      e           9   N               d       �   @   D   �      �   i   c   %      "   �              r       _   f   s   �   .       �       E   �       /      ]   `      Q   >               Z   �   
           (       v   �           \   m   $   k   �   l       g          A                  =           x       J       n               �   '   ^   [          �       H   q   �   o   �   C   }       y       Y       S      �   ?                	   j   �   �                 u   F   I          ~   3          5    
Allowed signal names for kill:
 
Common options:
 
Options for register and unregister:
 
Options for start or restart:
 
Options for stop or restart:
 
Report bugs to <%s>.
 
Shutdown modes are:
 
Start types are:
   %s init[db]   [-D DATADIR] [-s] [-o OPTIONS]
   %s kill       SIGNALNAME PID
   %s logrotate  [-D DATADIR] [-s]
   %s promote    [-D DATADIR] [-W] [-t SECS] [-s]
   %s register   [-D DATADIR] [-N SERVICENAME] [-U USERNAME] [-P PASSWORD]
                    [-S START-TYPE] [-e SOURCE] [-W] [-t SECS] [-s] [-o OPTIONS]
   %s reload     [-D DATADIR] [-s]
   %s restart    [-D DATADIR] [-m SHUTDOWN-MODE] [-W] [-t SECS] [-s]
                    [-o OPTIONS] [-c]
   %s start      [-D DATADIR] [-l FILENAME] [-W] [-t SECS] [-s]
                    [-o OPTIONS] [-p PATH] [-c]
   %s status     [-D DATADIR]
   %s stop       [-D DATADIR] [-m SHUTDOWN-MODE] [-W] [-t SECS] [-s]
   %s unregister [-N SERVICENAME]
   -?, --help             show this help, then exit
   -D, --pgdata=DATADIR   location of the database storage area
   -N SERVICENAME  service name with which to register PostgreSQL server
   -P PASSWORD     password of account to register PostgreSQL server
   -S START-TYPE   service start type to register PostgreSQL server
   -U USERNAME     user name of account to register PostgreSQL server
   -V, --version          output version information, then exit
   -W, --no-wait          do not wait until operation completes
   -c, --core-files       allow postgres to produce core files
   -c, --core-files       not applicable on this platform
   -e SOURCE              event source for logging when running as a service
   -l, --log=FILENAME     write (or append) server log to FILENAME
   -m, --mode=MODE        MODE can be "smart", "fast", or "immediate"
   -o, --options=OPTIONS  command line options to pass to postgres
                         (PostgreSQL server executable) or initdb
   -p PATH-TO-POSTGRES    normally not necessary
   -s, --silent           only print errors, no informational messages
   -t, --timeout=SECS     seconds to wait when using -w option
   -w, --wait             wait until operation completes (default)
   auto       start service automatically during system startup (default)
   demand     start service on demand
   fast        quit directly, with proper shutdown (default)
   immediate   quit without complete shutdown; will lead to recovery on restart
   smart       quit after all clients have disconnected
  done
  failed
  stopped waiting
 %s home page: <%s>
 %s is a utility to initialize, start, stop, or control a PostgreSQL server.

 %s() failed: %m %s: -S option not supported on this platform
 %s: PID file "%s" does not exist
 %s: WARNING: cannot create restricted tokens on this platform
 %s: WARNING: could not locate all job object functions in system API
 %s: another server might be running; trying to start server anyway
 %s: cannot be run as root
Please log in (using, e.g., "su") as the (unprivileged) user that will
own the server process.
 %s: cannot promote server; server is not in standby mode
 %s: cannot promote server; single-user server is running (PID: %ld)
 %s: cannot reload server; single-user server is running (PID: %ld)
 %s: cannot restart server; single-user server is running (PID: %ld)
 %s: cannot rotate log file; single-user server is running (PID: %ld)
 %s: cannot set core file size limit; disallowed by hard limit
 %s: cannot stop server; single-user server is running (PID: %ld)
 %s: control file appears to be corrupt
 %s: could not access directory "%s": %s
 %s: could not allocate SIDs: error code %lu
 %s: could not create log rotation signal file "%s": %s
 %s: could not create promote signal file "%s": %s
 %s: could not create restricted token: error code %lu
 %s: could not determine the data directory using command "%s"
 %s: could not find own program executable
 %s: could not find postgres program executable
 %s: could not get LUIDs for privileges: error code %lu
 %s: could not get token information: error code %lu
 %s: could not open PID file "%s": %s
 %s: could not open log file "%s": %s
 %s: could not open process token: error code %lu
 %s: could not open service "%s": error code %lu
 %s: could not open service manager
 %s: could not read file "%s"
 %s: could not register service "%s": error code %lu
 %s: could not remove log rotation signal file "%s": %s
 %s: could not remove promote signal file "%s": %s
 %s: could not send log rotation signal (PID: %ld): %s
 %s: could not send promote signal (PID: %ld): %s
 %s: could not send reload signal (PID: %ld): %s
 %s: could not send signal %d (PID: %ld): %s
 %s: could not send stop signal (PID: %ld): %s
 %s: could not start server
Examine the log output.
 %s: could not start server due to setsid() failure: %s
 %s: could not start server: %s
 %s: could not start server: error code %lu
 %s: could not start service "%s": error code %lu
 %s: could not unregister service "%s": error code %lu
 %s: could not write log rotation signal file "%s": %s
 %s: could not write promote signal file "%s": %s
 %s: database system initialization failed
 %s: directory "%s" does not exist
 %s: directory "%s" is not a database cluster directory
 %s: invalid data in PID file "%s"
 %s: missing arguments for kill mode
 %s: no database directory specified and environment variable PGDATA unset
 %s: no operation specified
 %s: no server running
 %s: old server process (PID: %ld) seems to be gone
 %s: option file "%s" must have exactly one line
 %s: out of memory
 %s: server did not promote in time
 %s: server did not start in time
 %s: server does not shut down
 %s: server is running (PID: %ld)
 %s: service "%s" already registered
 %s: service "%s" not registered
 %s: single-user server is running (PID: %ld)
 %s: the PID file "%s" is empty
 %s: too many command-line arguments (first is "%s")
 %s: unrecognized operation mode "%s"
 %s: unrecognized shutdown mode "%s"
 %s: unrecognized signal name "%s"
 %s: unrecognized start type "%s"
 HINT: The "-m fast" option immediately disconnects sessions rather than
waiting for session-initiated disconnection.
 If the -D option is omitted, the environment variable PGDATA is used.
 Is server running?
 Please terminate the single-user server and try again.
 Server started and accepting connections
 Timed out waiting for server startup
 Try "%s --help" for more information.
 Usage:
 Waiting for server startup...
 cannot duplicate null pointer (internal error)
 child process exited with exit code %d child process exited with unrecognized status %d child process was terminated by exception 0x%X child process was terminated by signal %d: %s command not executable command not found could not change directory to "%s": %m could not find a "%s" to execute could not get current working directory: %s
 could not identify current directory: %m could not read binary "%s" could not read symbolic link "%s": %m invalid binary "%s" out of memory out of memory
 program "%s" is needed by %s but was not found in the same directory as "%s"
 program "%s" was found by "%s" but was not the same version as %s
 server promoted
 server promoting
 server shutting down
 server signaled
 server signaled to rotate log file
 server started
 server starting
 server stopped
 starting server anyway
 trying to start server anyway
 waiting for server to promote... waiting for server to shut down... waiting for server to start... Project-Id-Version: PostgreSQL 15
Report-Msgid-Bugs-To: pgsql-bugs@lists.postgresql.org
POT-Creation-Date: 2022-09-10 18:27-0300
PO-Revision-Date: 2005-10-04 22:15-0300
Last-Translator: Euler Taveira <euler@eulerto.com>
Language-Team: Brazilian Portuguese <pgsql-translators@postgresql.org>
Language: pt_BR
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
 
Sinais permitidos para sinalização:
 
Opções comuns:
 
Opções para registrar ou remover registro:
 
Opções para início ou reinício:
 
Opções para parada ou reinício:
 
Relate erros a <%s>.
 
Modos de desligamento são:
 
Tipos de início são:
   %s init[db]   [-D DIRDADOS] [-s] [-o OPÇÕES]
   %s kill       NOMESINAL PID
   %s logrotate  [-D DIRDADOS] [-s]
   %s promote    [-D DIRDADOS] [-W] [-t SEGS] [-s]
   %s register   [-D DIRDADOS] [-N NOMESERVIÇO] [-U USUÁRIO] [-P SENHA]
                    [-S TIPO-INÍCIO] [-e ORIGEM] [-W] [-t SEGS] [-s] [-o OPÇÕES]
   %s reload     [-D DIRDADOS] [-s]
   %s restart    [-D DIRDADOS] [-m MODO-DESLIGAMENTO] [-W] [-t SEGS] [-s]
                    [-o OPÇÕES] [-c]
   %s start      [-D DIRDADOS] [-l ARQUIVO] [-W] [-t SEGS] [-s]
                    [-o OPÇÕES] [-p CAMINHO] [-c]
   %s status     [-D DIRDADOS]
   %s stop       [-D DIRDADOS] [-m MODO-DESLIGAMENTO] [-W] [-t SEGS] [-s]
   %s unregister [-N NOMESERVIÇO]
   -?, --help             mostra essa ajuda e termina
   -D, --pgdata=DIRDADOS  local da área de armazenamento dos bancos de dados
   -N NOMESERVIÇO nome do serviço no qual se registrou o servidor PostgreSQL
   -P SENHA        senha da conta que registrou o servidor PostgreSQL
   -S TIPO-INÍCIO  tipo de início do serviço para registrar o servidor PostgreSQL
   -U USUÁRIO      nome do usuário que registrou o servidor PostgreSQL
   -V, --version          mostra informação sobre a versão e termina
   -W, --no-wait          não espera até que a operação seja concluída
   -c, --core-files       permite o postgres produzir arquivos core
   -c, --core-files       não é aplicável a esta plataforma
   -e ORIGEM              origem de eventos para registro quando executar como um serviço
   -l, --log=ARQUIVO      escreve (ou concatena) log do servidor para ARQUIVO
   -m, --mode=MODO        MODO pode ser "smart", "fast" ou "immediate"
   -o, --options=OPÇÕES   opções de linha de comando passadas para o postgres
                         (executável do servidor PostgreSQL) ou initdb
   -p CAMINHO-DO-POSTGRES normalmente não é necessário
   -s, --silent           mostra somente erros, nenhuma mensagem informativa
   -t, --timeout= SEGS    segundos a esperar quando a opção -w for utilizada
   -w, --wait             espera até que a operação seja concluída (padrão)
   auto       inicia serviço automaticamente durante a inicialização do sistema (padrão)
   demand     inicia serviço sob demanda
   fast        termina diretamente, com desligamento apropriado (padrão)
   immediate   termina sem desligamento completo; conduzirá a uma recuperação durante o reinício
   smart       termina depois que todos os clientes desconectarem
 feito
 falhou
 parou de esperar
 Página web do %s: <%s>
 %s é um utilitário para inicializar, iniciar, parar e controlar um servidor PostgreSQL.

 %s() falhou: %m %s: opção -S não é suportada nessa plataforma
 %s: arquivo do PID "%s" não existe
 %s: AVISO: não pode criar tokens restritos nesta plataforma
 %s: AVISO: não pôde localizar todas funções job object na API do sistema
 %s: outro servidor pode estar executando; tentando iniciar o servidor assim mesmo
 %s: não pode ser executado como root
Por favor entre (utilizando "su") como um usuário (sem privilégios) que
será o dono do processo do servidor.
 %s: não pode promover servidor; servidor não está no modo em espera
 %s: não pode promover servidor; servidor monousuário está executando (PID: %ld)
 %s: não pode recarregar servidor; servidor monousuário está executando (PID: %ld)
 %s: não pode reiniciar servidor; servidor monousuário está executando (PID: %ld)
 %s: não pode rotacionar log do servidor; servidor monousuário está executando (PID: %ld)
 %s: não pode definir tamanho limite do arquivo core; não é permitido pelo limite superior
 %s: não pode parar servidor; servidor monousuário está executando (PID: %ld)
 %s: arquivo de controle parece estar corrompido
 %s: não pôde acessar diretório "%s": %s
 %s: não pôde alocar SIDs: código de erro %lu
 %s: não pôde criar arquivo de sinal de rotação de log "%s": %s
 %s: não pôde criar arquivo de sinal de promoção "%s": %s
 %s: não pôde criar token restrito: código de erro %lu
 %s: não pôde determinar diretório de dados utilizando comando "%s"
 %s: não pôde encontrar executável
 %s: não pôde encontrar o programa executável do postgres
 %s: não pôde obter LUIDs para privilégios: código de erro %lu
 %s: não pôde obter informação sobre token: código de erro %lu
 %s: não pôde abrir arquivo do PID "%s": %s
 %s: não pôde abrir arquivo de log "%s": %s
 %s: não pôde abrir token de processo: código de erro %lu
 %s: não pôde abrir serviço "%s": código de erro %lu
 %s: não pôde abrir gerenciador de serviço
 %s: não pôde ler arquivo "%s"
 %s: não pôde registrar serviço "%s": código de erro %lu
 %s: não pôde remover arquivo de sinal de rotação de log "%s": %s
 %s: não pôde remover arquivo de sinal de promoção "%s": %s
 %s: não pôde enviar sinal de rotação de log (PID: %ld): %s
 %s: não pôde enviar sinal de promoção (PID: %ld): %s
 %s: não pôde enviar sinal de recarga (PID: %ld): %s
 %s: não pôde enviar sinal %d (PID: %ld): %s
 %s: não pôde enviar sinal de parada (PID: %ld): %s
 %s: não pode iniciar o servidor
Examine o arquivo de log.
 %s: não pôde iniciar servidor devido a falha no setsid(): %s
 %s: não pôde iniciar servidor: %s
 %s: não pôde iniciar servidor: código de erro %lu
 %s: não pôde iniciar serviço "%s": código de erro %lu
 %s: não pôde remover registro do serviço "%s": código de erro %lu
 %s: não pôde escrever no arquivo de sinal de rotação de log "%s": %s
 %s: não pôde escrever no arquivo de sinal de promoção "%s": %s
 %s: inicialização do sistema de banco de dados falhou
 %s: diretório "%s" não existe
 %s: diretório "%s" não é um diretório de agrupamento de banco dados
 %s: dado inválido no arquivo do PID "%s"
 %s: faltando argumento para modo kill
 %s: nenhum diretório de banco de dados especificado e variável de ambiente PGDATA não foi definida
 %s: nenhuma operação especificada
 %s: nenhum servidor está executando
 %s: processo servidor antigo (PID: %ld) parece estar terminado
 %s: arquivo de opções "%s" deve ter exatamente uma linha
 %s: sem memória
 %s: servidor não foi promovido a tempo
 %s: servidor não iniciou a tempo
 %s: servidor não desligou
 %s: servidor está executando (PID: %ld)
 %s: serviço "%s" já está registrado
 %s: serviço "%s" não está registrado
 %s: servidor monousuário está executando (PID: %ld)
 %s: arquivo do PID "%s" está vazio
 %s: muitos argumentos de linha de comando (primeiro é "%s")
 %s: modo de operação "%s" é desconhecido
 %s: modo de desligamento "%s" desconhecido
 %s: nome de sinal "%s" desconhecido
 %s: tipo de início "%s" desconhecido
 DICA: A opção "-m fast" desconecta imediatamente sessões ao invés de esperar pela desconexão das sessões iniciadas.
 Se a opção -D for omitida, a variável de ambiente PGDATA é utilizada.
 O servidor está executando?
 Por favor finalize o servidor monousuário e tente novamente.
 Servidor foi iniciado e está aceitando conexões
 Tempo de espera esgotado para início do servidor
 Tente "%s --help" para obter informações adicionais.
 Uso:
 Esperando o servidor iniciar...
 não pode duplicar ponteiro nulo (erro interno)
 processo filho terminou com código de saída %d processo filho terminou com status desconhecido %d processo filho foi terminado pela exceção 0x%X processo filho foi terminado pelo sinal %d: %s comando não é executável comando não foi encontrado não pôde mudar diretório para "%s": %m não pôde encontrar o "%s" para executá-lo não pôde obter diretório de trabalho atual: %s
 não pôde identificar diretório atual: %m não pôde ler o binário "%s" não pôde ler link simbólico "%s": %m binário "%s" é inválido sem memória sem memória
 O programa "%s" é requerido pelo %s mas não foi encontrado no mesmo diretório que "%s"
 O programa "%s" foi encontrado pelo "%s" mas não tem a mesma versão que %s
 servidor promovido
 servidor está sendo promovido
 servidor está desligando
 servidor foi sinalizado
 servidor sinalizado para rotacionar arquivo de log
 servidor iniciado
 servidor está iniciando
 servidor está parado
 iniciando servidor mesmo assim
 tentando iniciar servidor mesmo assim
 esperando servidor ser promovido... esperando o servidor desligar... esperando o servidor iniciar... 