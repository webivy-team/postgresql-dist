Þ    b      ,     <      H      I     j               ¨     Â  S   Ô  H   (	  V   q	  =   È	  A   
  U   H
  Z   
  K   ù
  M   E  I     I   Ý  T   '  T   |     Ñ  <   ì  D   )  B   n  <   ±  D   î  B   3  A   v  :   ¸  H   ó  8   <  6   u  =   ¬  M   ê  K   8  ;     U   À  7     =   N  ;     :   È  8     <   <  ,   y  0   ¦  7   ×       <        O     c  +   ~     ª     ¿     Ï     ï  %   ý     #     +  V   D  )     9   Å     ÿ       /   >     n               ¡  *   À     ë  :   ó  ,   .  !   [     }       3     2   Ð  ;        ?  :   W  :        Í     ì     þ        '   3  /   [       %   ¡     Ç  .   Ý  #        0     A  0   P       /     	   Ë  Ã  Õ  |     @     1   W  P     Y   Ú  =   4     r       Ë     y   h     â  Ç   k   È   3!  ©   ü!  µ   ¦"  ¢   \#  Ã   ÿ#     Ã$  ¬   Y%  J   &  g   Q&     ¹&     D'     Ù'     \(     ú(     )     *     ·*  }   >+  ^   ¼+     ,      ,  ´   /-     ä-  Ì   r.  f   ?/     ¦/     @0     È0  |   S1  n   Ð1  N   ?2  R   2  X   á2     :3  ¡   =3  <   ß3  H   4  f   e4  W   Ì4  &   $5  t   K5  8   À5  Z   ù5      T6     u6    6  i   7     8  _   8  ]   ï8     M9     ë9     :  N   :  g   k:  r   Ó:     F;     ^;  x   ô;  U   m<  D   Ã<     =     &=  ¨   ½=  |   f>  9   ã>     ?     ©?  c   G@  5   «@  >   á@  m    A     A     $B  P   ÃB     C  b   ¦C  O   	D  ^   YD  5   ¸D  9   îD  h   (E  W   E  ¢   éE  #   F                           8   ^            $   @   1   b      Y       3           W           )          C      [   R               !   X   O   Q              0   D      "   7   .   ;   =   A      /   
   ?   P                 6   N          &   	       2   H             #      -       %   >          '      J       M   ]          T   +   (       G      S   9       `       B           4       U       ,       V   *      :   F   5   I         L      \   _      <          a      K   Z       E    
B-tree index checking options:
 
Connection options:
 
Other options:
 
Report bugs to <%s>.
 
Table checking options:
 
Target options:
       --endblock=BLOCK            check table(s) only up to the given block number
       --exclude-toast-pointers    do NOT follow relation TOAST pointers
       --heapallindexed            check that all heap tuples are found within indexes
       --install-missing           install missing extensions
       --maintenance-db=DBNAME     alternate maintenance database
       --no-dependent-indexes      do NOT expand list of relations to include indexes
       --no-dependent-toast        do NOT expand list of relations to include TOAST tables
       --no-strict-names           do NOT require patterns to match objects
       --on-error-stop             stop checking at end of first corrupt page
       --parent-check              check index parent/child relationships
       --rootdescend               search from root page to refind tuples
       --skip=OPTION               do NOT check "all-frozen" or "all-visible" blocks
       --startblock=BLOCK          begin checking table(s) at the given block number
   %s [OPTION]... [DBNAME]
   -?, --help                      show this help, then exit
   -D, --exclude-database=PATTERN  do NOT check matching database(s)
   -I, --exclude-index=PATTERN     do NOT check matching index(es)
   -P, --progress                  show progress information
   -R, --exclude-relation=PATTERN  do NOT check matching relation(s)
   -S, --exclude-schema=PATTERN    do NOT check matching schema(s)
   -T, --exclude-table=PATTERN     do NOT check matching table(s)
   -U, --username=USERNAME         user name to connect as
   -V, --version                   output version information, then exit
   -W, --password                  force password prompt
   -a, --all                       check all databases
   -d, --database=PATTERN          check matching database(s)
   -e, --echo                      show the commands being sent to the server
   -h, --host=HOSTNAME             database server host or socket directory
   -i, --index=PATTERN             check matching index(es)
   -j, --jobs=NUM                  use this many concurrent connections to the server
   -p, --port=PORT                 database server port
   -r, --relation=PATTERN          check matching relation(s)
   -s, --schema=PATTERN            check matching schema(s)
   -t, --table=PATTERN             check matching table(s)
   -v, --verbose                   write a lot of output
   -w, --no-password               never prompt for password
 %*s/%s relations (%d%%), %*s/%s pages (%d%%) %*s/%s relations (%d%%), %*s/%s pages (%d%%) %*s %*s/%s relations (%d%%), %*s/%s pages (%d%%) (%s%-*.*s) %s %s checks objects in a PostgreSQL database for corruption.

 %s home page: <%s>
 %s must be in range %d..%d Are %s's and amcheck's versions compatible? Cancel request sent
 Command was: %s Could not send cancel request:  Query was: %s Try "%s --help" for more information. Usage:
 btree index "%s.%s.%s":
 btree index "%s.%s.%s": btree checking function returned unexpected number of rows: %d cannot specify a database name with --all cannot specify both a database name and database patterns checking btree index "%s.%s.%s" checking heap table "%s.%s.%s" could not connect to database %s: out of memory database "%s": %s detail:  end block out of bounds end block precedes start block error sending command to database "%s": %s error:  heap table "%s.%s.%s", block %s, offset %s, attribute %s:
 heap table "%s.%s.%s", block %s, offset %s:
 heap table "%s.%s.%s", block %s:
 heap table "%s.%s.%s":
 hint:  improper qualified name (too many dotted names): %s improper relation name (too many dotted names): %s in database "%s": using amcheck version "%s" in schema "%s" including database "%s" internal error: received unexpected database pattern_id %d internal error: received unexpected relation pattern_id %d invalid argument for option %s invalid end block invalid start block invalid value "%s" for option %s no btree indexes to check matching "%s" no connectable databases to check matching "%s" no databases to check no heap tables to check matching "%s" no relations to check no relations to check in schemas matching "%s" no relations to check matching "%s" query failed: %s query was: %s
 skipping database "%s": amcheck is not installed start block out of bounds too many command-line arguments (first is "%s") warning:  Project-Id-Version: pg_amcheck (PostgreSQL) 15
Report-Msgid-Bugs-To: pgsql-bugs@lists.postgresql.org
POT-Creation-Date: 2022-07-02 04:50+0000
PO-Revision-Date: 2022-07-04 11:33+0200
Last-Translator: Temuri Doghonadze <temuri.doghonadze@gmail.com>
Language-Team: Georgian <nothing>
Language: ka
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Plural-Forms: nplurals=2; plural=(n != 1);
X-Generator: Poedit 3.1
 
áá ááááá á®áá¡ ááááá¥á¡áá¡ á¨áááá¬ááááá¡ ááá áááá¢á ááá:
 
á¨ááá ááááá¡ ááá áááá¢á ááá:
 
á¡á®áá ááá áááá¢á ááá:
 
á¨ááªááááááá¡ á¨áá¡áá®áá ááá¬áá áá: %s
 
áªá®á áááá¡ á¨áááá¬ááááá¡ ááá áááá¢á ááá:
 
á¡ááááááá¡ ááá áááá¢á ááá:
       --endblock=ááááá            á¨áááá¬ááááá¡ áááááááá£á áááááá ááááááá ááá
       --exclude-toast-pointers    á£á áááá ááááá¡ TOAST ááá©ááááááááá¡ áá  ááá°á§áááá
       --heapallindexed            á¨áááá¬áááá, ááá®á¡ááá áááá¡ áªá®á ááá¨á á§áááá áááááªááá áá á¡ááááá¡, áá£ áá á
       --install-missing           ááááá£áá ááá¤áá áááááááá¡ ááá§ááááá
       --maintenance-db=ááááá¡á¡áá®ááá     ááá¢áá ááá¢áá£áá á¡ááááá áá áááá
       --no-dependent-indexes      á£á ááá ááááááá¡ á¡ááá¡ áááá£á¨áááááá¡áá¡ ááááá¥á¡ááá áá  áááá£á¨áááááááá
       --no-dependent-toast        á£á áááá ááááááá¡ á¡ááá¡ áááá£á¨áááááá¡áá¡ TOAST áªá®á ááááá áá  áááá£á¨áááááá 
       --no-strict-names           áááá®áááááá¨á á¨ááááááá ááááá®áááá á©áá¡áá£áá áá  áá¥áááá
       --on-error-stop             áá£á¨ááááá¡ ááá áááá ááááááááá£áá áááá ááá¡ ááááá¨á á¨áá¬á§ááá¢á
       --parent-check              ááááá¥á¡áá¡ áá¨ááááá/á¨ááááá¡ á£á áááá ááááá¡ á¨áááá¬áááá
       --rootdescend               áááááªáááááá¡ ááááááá á¡ááááááááá á«ááááá¡ root áááá ááááá ááá¬á§ááá
       --skip=ááá áááá¢á á               "all-frozen" áá "all-visible" ááááááá áá  á¨áááá¬ááááá
       --startblock=ááááá          á¨áááá¬ááááá¡ áááááá¡ áááááááá£áá áááá áááá ááá¬á§ááá
   %s [ááá áááá¢á á]... [ááááá¡á¡áá®ááá]
   -?, --help     áá ááá®ááá áááá¡ á©áááááá áá ááá¡ááá
   -D, --exclude-database=á¨áááááá  á¨áá¡áááááá¡á ááá(áá)áá¡ áá -á¨áááá¬áááá
   -I, --exclude-index=á¨áááááá     á¨áá¡áááááá¡á á¨ááááá(áá)-áá¡ áá -á¨áááá¬áááá
   -P, --progress                  áááááááá ááááá¡ ááá¤áá áááªááá¡ á©áááááá
   -R, --exclude-relation=á¨áááááá  á¨áá¡áááááá¡á á£á áááá ááá(áá)-áá¡ áá -á¨áááá¬áááá
   -S, --exclude-schema=á¨áááááá    á¨áá¡áááááá¡á á¡á¥áá(áá)-áá¡ áá  á¨áááá¬áááá
   -T, --exclude-table=á¨áááááá     á¨áá¡áááááá¡á áªá®á áá(áá)-á áá  á¨áááá¬ááááá
   -U, --username=áááá®ááá ááááá         ááá¡ááá áááááá áááá®ááá ááááá¡ á¡áá®ááá
   -V, --version            ááá á¡ááá¡ ááá¤áá áááªááá¡ ááááá¢ááá áá ááá¡ááá
   -W, --password                  ááá áááá¡ á§áááá á¨áááá®ááááá¨á áááá®áá
   -a, --all                       á§áááá ááááá¡ á¨áááá¬áááá
   -d, --database=á¨áááááá          á¨áá¡áááááá¡á ááá(áá)-áá¡ á¨áááá¬áááá
   -e, --echo-queries       á¡áá ááá áá áááááááááá áá á«áááááááá¡ ááááá¢ááá
   -h, --host=á°áá¡á¢áá¡_á¡áá®ááá             ááááá¡ á¡áá ááá áá¡ á¡áá®ááá áá á¡áááá¢áá¡ á¡áá¥áá¦áááá
   -i, --index=á¨áááááá             á¨áá¡áááááá¡á ááááá¥á¡(áá)-áá¡ á¨áááá¬áááá
   -j, --jobs=á ááªá®áá                  á¡áá ááá ááá áááááááá£áá á ááááááááá¡ áááá ááááááá¡ ááááá§ááááá
   -p, --port=ááá á¢á                 ááááá¡ á¡áá ááá áá¡ ááá á¢á
   -r, --relation=á¨áááááá          á¨áá¡áááááá¡á á£á ááááá ááá(áá)-áá¡ á¨áááá¬áááá
   -s, --schema=á¨áááááá            á¨áá¡áááááá¡á á¡á¥áá(áá)-áá¡ á¨áááá¬áááá
   -t, --table=á¨áááááá             á¨áá¡áááááá¡á áªá®á áá(áá)-áá¡ á¨áááá¬áááá
   -v, --verbose                   ááááá¢ááááá ááá¤áá áááªááá¡ ááááá¢ááá
   -w, --no-password               ááá áááá¡ áááá®áááá áá  ááá®áááá
 %*s/%s á£á áááá áááá (%d%%), %*s/%s áááá áá (%d%%) %*s/%s á£á áááá áááá (%d%%), %*s/%s áááá áá (%d%%) %*s %*s/%s á£á áááá áááá(%d%%), %*s/%s áááá áá (%d%%) (%s%-*.*s) %s %s PostgreSQL -áá¡ ááááá¨á áá á¡ááá£á ááááá¥á¢ááá¡ áááááááááááá á¨ááááá¬áááá¡.

 %s-áá¡ á¡áá¬á§áá¡á áááá ááá: <%s>
 %s áá áá á¡ááá¦áá ááá¨á %d-ááá %d-ááá áá ááá %s"-áá¡ áá amcheck-áá¡ ááá á¡áááá áááá¡ááááá? ááá£á¥ááááá¡ áááá®áááá ááááááááááá
 áá á«ááááá áá§á: %s ááá£á¥ááááá¡ áááá®ááááá¡ áááááááá á¨áá£á«ááááááá:  áááá®ááááá¡ á¨ááááá á¡á: %s ááá¢á ááá¤áá áááªááá¡áááá¡ á¡áªáááá '%s --help'. ááááá§ááááá:
 btree index "%s.%s.%s":
 áá ááááá á®áá¡ ááááá¥á¡á"%s.%s.%s": áá ááááá á®áá¡ á¨áááá¬ááááá¡ á¤á£áá¥áªááá áá¬áá áááááá¡ ááá£ááááááá á áááááááá ááááá á£áá: %d --all -ááá áá ááá ááááá¡ á¡áá®ááá¡ ááá  ááá£áááááá áá áááá¡, ááááá¡ á¡áá®ááá¡á áá ááá¡ á¨áááááá¡ ááá  ááá£áááááá áá ááááá á®áá¡ ááááá¥á¡áá¡ á¨áááá¬áááá "%s.%s.%s" ááá®á¡ááá áááá¡ áªá®á áááá¡ á¨áááá¬áááá"%s.%s.%s" ááááá¡ááá (%s) áááá áááá á¨áá£á«ááááááá: áá áá¡ááááá áá¡á ááá®á¡ááá ááá áááá "%s": %s ááá¢ááááá:  áááá ááááá á¡ááá¦áá ááá¡ ááá áááá áááá ááááá á¡áá¬á§áá¡ áááááááá áááááá áááá¡ ááááá¡áááá¡ áá á«áááááá¡ ááááááááá¡ á¨ááªáááá "%s": %s á¨ááªáááá:  ááá®á¡ááá áááá¡ áªá®á ááá "%s.%s.%s", ááááá %s, á¬ááááªááááá %s, áá¢á ááá£á¢á %s:
 ááá®á¡ááá áááá¡ áªá®á ááá "%s.%s.%s", ááááá %s, á¬ááááªááááá %s:
 ááá®á¡ááá áááá¡ áªá®á ááá "%s.%s.%s", ááááá %s:
 áªá®á ááá ááá®á¡ááá áááá¨á "%s.%s.%s":
 ááááá¨áááá:  áá áá¡á¬áá á á¡á á£áá á¡áá®ááá (á«ááááá áááá á á¬áá á¢áááááá á¡áá®ááá): %s á£á áááá ááááá¡ áá áá¡á¬áá á á¡áá®ááá (á«ááááá áááá á á¬áá á¢áááááá á¡áá®ááá): %s ááááá¨á "%s": áááááá§ááááá amcheck-áá¡ ááá á¡áá "%s" á¡á¥áááá¨á "%s" áá áá¡á¬áá á á¡áá¥áá¦áááá "%s" á¨ááá á¨ááªáááá: ááá¦ááá£áá ááááá¡ ááá£ááááááá á¨ááááááá¡_id: %d á¨ááá á¨ááªáááá: ááá¦ááá£áá á£á áááá ááááá¡ ááá£ááááááá á¨ááááááá¡_id: %d áá áá¡á¬áá á áá áá£áááá¢á ááá áááá¢á áá¡áááá¡: %s áá áá¡á¬áá á áááá ááááá áá áá¡á¬áá á á¡áá¬á§áá¡á ááááá áá áá¡á¬áá á áááá¨ááááááá "%s" ááá áááá¢á áá¡áááá¡ %s áá áááá á®áá¡ ááááá¥á¡ááá, á áááááááª áááá®áááá "%s"-á¡, áá  áá á¡ááááá¡ "%s"-áá¡ ááááá®ááááá¡ á¨áá¡áááá¬áááááá áááá áááááá áááá áá  áá á¡ááááá¡ á¨áááá¡áááá¬áááááá ááááá¡ ááá áá¨á ááá®á¡áá áááá¡ áªá®á ááááá, á áááááááª áááá®áááá "%s"-á¡, áá  áá á¡áááá¡ á¨áá¡áááá¬áááááá á£á áááá ááááááá¡ ááá áá¨á "%s"-á¡ áá áª áá áá á¡á¥ááá áá  áááá®áááá "%s"-á¡ áá áª áá áá á£á áááá áááá áá  áááá®áááá áááá®ááááá¡ á¨ááªáááá: %s áááá®ááááá¡ á¨ááááá á¡á: %s
 "%s" ááááá¡ ááááá¢ááááá: amcheck ááá§ááááá£áá áá áá á¡áá¬á§áá¡á ááááá á¡ááá¦áá ááá¡ ááá áááá ááá¢áá¡ááá¢áá áááá á áá á«áááááá¡-á¡á¢á áá¥áááá¡ áá áá£áááá¢á (ááá ááááá "%s") ááá¤á áá®ááááá:  