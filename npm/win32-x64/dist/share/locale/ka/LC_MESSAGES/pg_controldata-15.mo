Þ    ]           ì      è  X   é  
   B     M  3   f  ?     (   Ú  C   	     G	     [	     k	  ,   o	  ,   	  )   É	  )   ó	  )   
  )   G
  )   q
  )   
  +   Å
  )   ñ
  )     ,   E  )   r  ,     )   É  )   ó  )     ,   G  )   t  )     ,   È  )   õ  )     )   I  )   s  )     )   Ç  )   ñ  )     )   E  )   o  )     )   Ã  )   í  )     ,   A  )   n       )   ®  >  Ø  )     %   A     g  )   o  Æ     "   `                    °     Î  (   ì          2  (   O     x          ª     ¼  )   Ê  )   ô  )     )   H  )   r               »     ¿  )   Â  )   ì      	        &     <     J  /   V  )        °     É  )   à  )   
     4  Ç  8  Ý      #   Þ  e     u   h     Þ  Z   e     À  <   Q  >        Í  l   Ñ  g   >  {   ¦  X   "  W   {     Ó  E   \  `   ¢  g      K   k   k   ·      #!  P   ¦!     ÷!  c   "  c   æ"  c   J#  f   ®#  c   $  z   y$     ô$  b   %     ç%  c   m&  c   Ñ&  c   5'  c   '  c   ý'  c   a(  c   Å(  }   ))  f   §)  q   *  Y   *  b   Ú*     =+  }   ¾+  Q   <,  W   ,  Û  æ,  d   Â/  Z   '0      0  >   £0  &  â0  m   	3     w3  $   3  W   ©3  J   4  >   L4  G   4  G   Ó4  M   5  n   i5  G   Ø5  1    6  +   R6  :   ~6  =   ¹6  =   ÷6  =   57  =   s7  =   ±7  	   ï7  i   ù7     c8     8  U   8  C   â8  è  &9     <  :   (<  =   c<     ¡<  ¢   ·<  =   Z=  8   =     Ñ=  =   î=  =   ,>     j>     5            -   :               G   [   4                     1           $   J       ]   @                         !   2                  =       '   
       C         E   \   >   ;       "   &          D   Q          U   #   Y   <   L       3   Z      /       ,   	   %   8          (   N   I            7   H           V   .   0   9                  X   A              K   F   B      +   S   P      R   O   T   *      6      W   ?                                  )   M    
If no data directory (DATADIR) is specified, the environment variable PGDATA
is used.

 
Options:
   %s [OPTION] [DATADIR]
   -?, --help             show this help, then exit
   -V, --version          output version information, then exit
  [-D, --pgdata=]DATADIR  data directory
 %s displays control information of a PostgreSQL database cluster.

 %s home page: <%s>
 64-bit integers ??? Backup end location:                  %X/%X
 Backup start location:                %X/%X
 Blocks per segment of large relation: %u
 Bytes per WAL segment:                %u
 Catalog version number:               %u
 Data page checksum version:           %u
 Database block size:                  %u
 Database cluster state:               %s
 Database system identifier:           %llu
 Date/time type storage:               %s
 End-of-backup record required:        %s
 Fake LSN counter for unlogged rels:   %X/%X
 Float8 argument passing:              %s
 Latest checkpoint location:           %X/%X
 Latest checkpoint's NextMultiOffset:  %u
 Latest checkpoint's NextMultiXactId:  %u
 Latest checkpoint's NextOID:          %u
 Latest checkpoint's NextXID:          %u:%u
 Latest checkpoint's PrevTimeLineID:   %u
 Latest checkpoint's REDO WAL file:    %s
 Latest checkpoint's REDO location:    %X/%X
 Latest checkpoint's TimeLineID:       %u
 Latest checkpoint's full_page_writes: %s
 Latest checkpoint's newestCommitTsXid:%u
 Latest checkpoint's oldestActiveXID:  %u
 Latest checkpoint's oldestCommitTsXid:%u
 Latest checkpoint's oldestMulti's DB: %u
 Latest checkpoint's oldestMultiXid:   %u
 Latest checkpoint's oldestXID's DB:   %u
 Latest checkpoint's oldestXID:        %u
 Maximum columns in an index:          %u
 Maximum data alignment:               %u
 Maximum length of identifiers:        %u
 Maximum size of a TOAST chunk:        %u
 Min recovery ending loc's timeline:   %u
 Minimum recovery ending location:     %X/%X
 Mock authentication nonce:            %s
 Report bugs to <%s>.
 Size of a large-object chunk:         %u
 The WAL segment size stored in the file, %d byte, is not a power of two
between 1 MB and 1 GB.  The file is corrupt and the results below are
untrustworthy.

 The WAL segment size stored in the file, %d bytes, is not a power of two
between 1 MB and 1 GB.  The file is corrupt and the results below are
untrustworthy.

 Time of latest checkpoint:            %s
 Try "%s --help" for more information. Usage:
 WAL block size:                       %u
 WARNING: Calculated CRC checksum does not match value stored in file.
Either the file is corrupt, or it has a different layout than this program
is expecting.  The results below are untrustworthy.

 WARNING: invalid WAL segment size
 by reference by value byte ordering mismatch could not close file "%s": %m could not fsync file "%s": %m could not open file "%s" for reading: %m could not open file "%s": %m could not read file "%s": %m could not read file "%s": read %d of %zu could not write file "%s": %m in archive recovery in crash recovery in production max_connections setting:              %d
 max_locks_per_xact setting:           %d
 max_prepared_xacts setting:           %d
 max_wal_senders setting:              %d
 max_worker_processes setting:         %d
 no no data directory specified off on pg_control last modified:             %s
 pg_control version number:            %u
 possible byte ordering mismatch
The byte ordering used to store the pg_control file might not match the one
used by this program.  In that case the results below would be incorrect, and
the PostgreSQL installation would be incompatible with this data directory. shut down shut down in recovery shutting down starting up too many command-line arguments (first is "%s") track_commit_timestamp setting:       %s
 unrecognized status code unrecognized wal_level wal_level setting:                    %s
 wal_log_hints setting:                %s
 yes Project-Id-Version: pg_controldata (PostgreSQL) 15
Report-Msgid-Bugs-To: pgsql-bugs@lists.postgresql.org
POT-Creation-Date: 2022-07-02 04:51+0000
PO-Revision-Date: 2022-07-04 20:26+0200
Last-Translator: Temuri Doghonadze <temuri.doghonadze@gmail.com>
Language-Team: Georgian <nothing>
Language: ka
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Plural-Forms: nplurals=2; plural=(n != 1);
X-Generator: Poedit 3.1
 
áá£ áááááªáááááá¡ á¡áá¥áá¦áááá áááááááá£áá áá áá, ááááá§ááááá£áá áá¥áááá 
ááá áááá¡ áªááááá PGDATA.
 
ááá áááá¢á ááá
   %s [ááá áááá¢á á]... [áááááªáááááá¡á¡áá¥áá¦áááá]
   -?, --help                   áá ááá®ááá áááá¡ á©áááááá áá ááá¡ááá
   -V, --version            ááá á¡ááá¡ ááá¤áá áááªááá¡ ááááá¢ááá áá ááá¡ááá
  [-D, --pgdata=]DATADIR     áááááªáááááá¡ á¡áá¥áá¦áááá
 %s áááááá¢ááá¡ ááá¤áá áááªááá¡ PostgreSQL ááááá¡ áááá¡á¢áá áá¡ á¨áá¡áá®áá.

 %s-áá¡ á¡áá¬á§áá¡á áááá ááá: <%s>
 64-ááá¢áááá áááá á ááªá®áááá ??? ááá á¥áá¤á¡ ááá¡áá¡á á£ááá¡ áááááá áááá:                  %X/%X
 ááá á¥áá¤áá¡ ááá¬á§áááá¡ áááááá áááá:                %X/%X
 áááá á£á áááá ááááá¡ á¡áááááá¢ááá áááááá£á ááááá¨á: %u
 áááá¢ááá áááááá£á WAL á¡áááááá¢á¨á:         %u
 ááá¢áááááá¡ ááá á¡ááá¡ ááááá á:               %u
 áááááªáááááá¡ áááá ááá¡ á¡ááááá¢á ááá á¯áááá¡ ááá á¡áá:           %u
 ááááá¡ áááááá¡ áááá:                  %u
 ááááá¡ áááá¡á¢áá áá¡ ááááááá áááá:               %s
 ááááá¡ á¡áá¡á¢ááá£á á ááááá¢áá¤áááá¢áá á:           %llu
 ááá áá¦áá¡ á¢áááá¡ á¡ááªááá:               %s
 ááá á¥áá¤áá¡-áááá á©áááá¬áá á áá£áªáááááááá:       %s
 LSN-áá¡ á§áááá ááááááá áá ááá£á áááááááááá á£á á-áááá¡:   %X/%X
 Float8 áá áá£áááá¢áá¡ áááááªááá:              %s
 á¡ááááá¢á ááá á¬áá á¢áááá¡ á£ááááá¡ááááá áááááá áááá:           %X/%X
 á£áá®ááá¡á á¡ááááá¢á ááá á¬áá á¢áááá¡ NextMultiOffset:  %u
 á£áá®ááá¡á á¡ááááá¢á ááá á¬áá á¢áááá¡ NextMultiXactId:  %u
 á£áá®ááá¡á á¡ááááá¢á ááá á¬áá á¢áááá¡ NextOID:          %u
 á£áá®ááá¡á á¡ááááá¢á ááá á¬áá á¢áááá¡ NextXID:          %u:%u
 á£áá®ááá¡á á¡ááááá¢á ááá á¬áá á¢áááá¡ PrevTimeLineID:   %u
 á£ááááá¡ááááá á¡ááááá¢á ááá á¬áá á¢áááá¡ REDO WAL á¤áááá:    %s
 á¡ááááá¢á ááá á¬áá á¢áááá¡ REDO-áá¡ á£ááááá¡ááááá áááááá áááá:    %X/%X
 á£áá®ááá¡á á¡ááááá¢á ááá á¬áá á¢áááá¡TimeLineID:       %u
 á£áá®ááá¡á á£ááááá¡ááááá á¡ááááá¢á ááá á¬áá á¢áááá¡ full_page_writes: %s
 á£áá®ááá¡á á¡ááááá¢á ááá á¬áá á¢áááá¡ newestCommitTsXid:%u
 á£áá®ááá¡á á¡ááááá¢á ááá á¬áá á¢áááá¡ oldestActiveXID:  %u
 á£áá®ááá¡á á¡ááááá¢á ááá á¬áá á¢áááá¡ oldestCommitTsXid:%u
 á£áá®ááá¡á á¡ááááá¢á ááá á¬áá á¢áááá¡ oldestMulti's DB: %u
 á£áá®ááá¡á á¡ááááá¢á ááá á¬áá á¢áááá¡ oldestMultiXid:   %u
 á£áá®ááá¡á á¡ááááá¢á ááá á¬áá á¢áááá¡ oldestXID's DB:   %u
 á£áá®ááá¡á á¡ááááá¢á ááá á¬áá á¢áááá¡ oldestXID:        %u
 ááááá¥á¡á¨á á¡ááá¢áááá¡ ááá¥á¡ááááá£á á á áááááááá:          %u
 áááááªáááááá¡ á¡á¬áá áááá¡ ááá¥á¡ááá£áá:            %u
 ááááá¢áá¤áááá¢áá áááá¡ ááá¥á¡ááááá£á á á¡ááá á«á:     %u
 TOAST áááááá¯áá¡ ááá¥á¡ááááá£á á áááá:        %u
 ááá. áá¦áá ááá¡áá¡á  áááááá  áá ááá¡ á®ááá:    %u
 áááááááá£á á áá¦áááááá¡ ááá¡áá¡á á£ááá¡ áááááá áááá     %X/%X
 á¤á¡áááááááááá¢ááááªááá¡ á¨áááá®áááááá á ááªá®áá:           %s
 á¨ááªááááááá¡ á¨áá¡áá®áá ááá¬áá áá: <%s>
 áááá ááááá¥á¢áá¡ áááááá¯áá¡ áááá:        %u
 á¤áááá¨á á¨áááá®á£áá WAL á¡áááááá¢áá¡ áááá, %d áááá¢á, áá  áá áá¡ áá áá¡ 
á®áá áá¡á®á1 áá-ááá 1 áá-ááá. á¤áááá ááááááááá£ááá áá á¥ááááá áááªááá£ááá á¨ááááááá
áá áá¡ááááá.
 á¤áááá¨á á¨áááá®á£áá WAL á¡áááááá¢áá¡ áááá, %d áááá¢á, áá  áá áá¡ áá áá¡ 
á®áá áá¡á®á1 áá-ááá 1 áá-ááá. á¤áááá ááááááááá£ááá áá á¥ááááá áááªááá£ááá á¨ááááááá
áá áá¡ááááá.
 á£áá®ááá¡á á¡ááááá¢ááá á¬áá á¢áááá¡ áá á:            %s
 ááá¢á ááá¤áá áááªááá¡áááá¡ á¡áªáááá '%s --help'. ááááá§ááááá:
 WAL áááááá¡ áááá:                       %u
 ááá¤á áá®ááááá: áááááááááá CRC á¡ááááá¢á ááá á¯ááá á¤áááá¨á á¨áááá®á£á áááá¨áááááááá¡ áá  áááá®áááá. 
á¤áááá áá ááááááááá£ááá, áá áá¥áá¡ áááá¡á®áááááá£áá ááááááá ááá. áááá á 
áá ááá ááá ááááááá.     á¥ááááá ááá§áááááá á¨ááááááá áá áá¡ááááá.

 ááá¤á áá®áááá: WAL-áá¡ á¡áááááá¢áá¡ áá áá¡á¬áá á áááá
 áááá áááá¨áááááááá áááá¢áááá¡ ááááááá ááá áá  áááá®áááá á¤ááááá¡ (%s) ááá®á£á ááá¡ á¨ááªáááá: %m á¤ááááá¡ (%s) fsync-áá¡ á¨ááªáááá: %m á¤ááááá¡ (%s) ááá®á¡ááá¡ á¨ááªáááá: %m á¤ááááá¡ (%s) ááá®á¡ááá¡ á¨ááªáááá: %m á¤ááááá¡ (%s) á¬ááááá®ááá¡ á¨ááªáááá: %m "%s"-áá¡ á¬ááááá®ááá¡ á¨ááªáááá: á¬ááááá®á£ááá %d %zu-ááá á¤áááá¨á (%s) á©áá¬áá áá¡ á¨ááªáááá: %m áá á¥áááááá áá¦ááááá áááá ááá¡ áá¦ááááá á¬áá áááááá¨á ááá¨áááá£áá max_connections ááá áááá¢á á:              %d
 max_locks_per_xact ááá áááá¢á á:           %d
 max_prepared_xacts ááá áááá¢á á:           %d
 max_wal_senders ááá áááá¢á á:              %d
 max_worker_processes ááá áááá¢á á:         %d
 áá á áááááªáááááá¡ á¡áá¥áá¦áááá áááááááá£áá áá áá ááááá áá£áá á©áá á pg_control-áá¡ áááá áªáááááááá¡ áá á:             %s
 pg_control ááá á¡ááá¡ ááááá á:            %u
 áááá¢áááá¡ ááááááá áááá¡ á¨áá¡áá«áá á¨áá£á¡ááááááá pg_control á¤ááááá¡ á¨áá¡áááá®áá ááááá§ááááá£áá 
áááá¢áááá¡ ááááááá ááá á¨áá¡áá«ááá áá  áááá®áááááá¡ áá áá ááá áááá¡ áááá  ááááá§ááááá£áá¡. áá á¨áááá®ááááá¨á  á¥ááááá 
áááªááá£áá á¨ááááááá áá áá¡á¬áá á áá¥áááá áá PostgreSQL áá¡ ááááá áá áááááªáááá á¡áá¥áá¦ááááá¡ááá á¨áá£áááá¡ááááá áá¥áááá. ááááá ááá ááááá ááá áá¦ááááá¡áááá¡ áááááááá áááá¡ ááááá ááá ááá¨áááá ááá¢áá¡ááá¢áá áááá á áá á«áááááá¡-á¡á¢á áá¥áááá¡ áá áá£áááá¢á (ááá ááááá "%s") track_commit_timestamp ááá áááá¢á á:       %s
 á¡á¢áá¢á£á¡áá¡ á£áªáááá áááá á£áªáááá wal_level wal_level ááá áááá¢á á:                    %s
 wal_log_hints ááá áááá¢á á:                %s
 áááá® 