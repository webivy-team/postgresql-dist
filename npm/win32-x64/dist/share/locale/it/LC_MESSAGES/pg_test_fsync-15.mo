��    $      <  5   \      0  1   1  2   c  /   �     �  8   �          4     O     j     �     �     �  (   �  U   �  [   F  K   �  c   �     R  .   m  F   �  E   �  %   )  +   O  !   {     �     �     �     �     �     �     �        /     	   5     ?  �  L  T   
  Q   V
  :   �
      �
  K     !   P  !   r  !   �  !   �  +   �  .        3  )   :  ]   d  p   �  i   3  r   �        7   1  J   i  I   �  ,   �  .   +  2   Z  $   �     �     �     �     �  %   �            9        T     c     "          
                            !                                  $                  	                   #                                                                  
Compare file sync methods using one %dkB write:
 
Compare file sync methods using two %dkB writes:
 
Compare open_sync with different write sizes:
 
Non-sync'ed %dkB writes:
 
Test if fsync on non-write file descriptor is honored:
  1 * 16kB open_sync write  2 *  8kB open_sync writes  4 *  4kB open_sync writes  8 *  2kB open_sync writes %13.3f ops/sec  %6.0f usecs/op
 %s must be in range %u..%u %s: %m %u second per test
 %u seconds per test
 (If the times are similar, fsync() can sync data written on a different
descriptor.)
 (This is designed to compare the cost of writing 16kB in different write
open_sync sizes.)
 (in wal_sync_method preference order, except fdatasync is Linux's default)
 * This file system and its mount options do not support direct
  I/O, e.g. ext4 in journaled mode.
 16 *  1kB open_sync writes Direct I/O is not supported on this platform.
 F_NOCACHE supported on this platform for open_datasync and open_sync.
 O_DIRECT supported on this platform for open_datasync and open_sync.
 Try "%s --help" for more information. Usage: %s [-f FILENAME] [-s SECS-PER-TEST]
 could not create thread for alarm could not open output file detail:  error:  fsync failed hint:  invalid argument for option %s n/a n/a* too many command-line arguments (first is "%s") warning:  write failed Project-Id-Version: pg_test_fsync (PostgreSQL) 15
Report-Msgid-Bugs-To: pgsql-bugs@lists.postgresql.org
POT-Creation-Date: 2022-09-26 08:21+0000
PO-Revision-Date: 2022-09-30 14:56+0200
Language: it
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Plural-Forms: nplurals=2; plural=n != 1;
Last-Translator: Domenico Sgarbossa <sgarbossa.domenico@gmail.com>
Language-Team: 
X-Generator: Poedit 2.3
 
Confronta i metodi di sincronizzazione dei file utilizzando una scrittura di %dkB:
 
Confronta i metodi di sincronizzazione dei file utilizzando due scritture %dkB:
 
Confronta open_sync con diverse dimensioni di scrittura:
 
%dkB non sincronizzato scrive:
 
Verifica se fsync sul descrittore di file non di scrittura è rispettato:
  1 * 16 kB di scrittura open_sync  2 *  8 kB di scritture open_sync  4 *   4kB di scrittura open_sync  8 *   2kB di scritture open_sync %13.3f operazioni/sec %6.0f operazioni/sec
 %s deve essere compreso nell'intervallo %u..%u %s: %m %u secondo per test
 %u secondi per test
 (Se i tempi sono simili, fsync() può sincronizzare i dati scritti su un altro
descrittore.)
 (Questo è progettato per confrontare il costo di scrittura di 16kB in diverse scritture
dimensioni open_sync.)
 (nell'ordine di preferenza wal_sync_method, tranne che fdatasync è l'impostazione predefinita di Linux)
 * Questo file system e le sue opzioni di montaggio non supportano Direct
  I/O, ad es. ext4 in modalità journal.
 16 *  1kB di scrittura open_sync L'I/O diretto non è supportato su questa piattaforma.
 F_NOCACHE supportato su questa piattaforma per open_datasync e open_sync.
 O_DIRECT supportato su questa piattaforma per open_datasync e open_sync.
 Prova "%s --help" per maggiori informazioni. Utilizzo: %s [-f FILENAME] [-s SECS-PER-TEST]
 non è stato possibile creare thread per l'allarme impossibile aprire il file di output dettaglio:  errore: fsync non è riuscito suggerimento:  argomento non valido per l'opzione %s n/a n/a* troppi argomenti della riga di comando (il primo è "%s") avvertimento:  scrittura fallita 