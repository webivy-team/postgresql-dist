Þ    b      ,     <      H      I     j               ¨     Â  S   Ô  H   (	  V   q	  =   È	  A   
  U   H
  Z   
  K   ù
  M   E  I     I   Ý  T   '  T   |     Ñ  <   ì  D   )  B   n  <   ±  D   î  B   3  A   v  :   ¸  H   ó  8   <  6   u  =   ¬  M   ê  K   8  ;     U   À  7     =   N  ;     :   È  8     <   <  ,   y  0   ¦  7   ×       <        O     c  +   ~     ª     ¿     Ï     ï  %   ý     #     +  V   D  )     9   Å     ÿ       /   >     n               ¡  *   À     ë  :   ó  ,   .  !   [     }       3     2   Ð  ;        ?  :   W  :        Í     ì     þ        '   3  /   [       %   ¡     Ç  .   Ý  #        0     A  0   P       /     	   Ë  Z  Õ  0   0     a     z  -     $   Ç     ì  e     a   q     Ó  Y   n  D   È           ®     N  _   à  M   @   \         ë      !  2   "  G   C"  Y   "  Y   å"  8   ?#  Y   x#  S   Ò#  S   &$  D   z$  M   ¿$  M   %  J   [%  J   ¦%  S   ñ%     E&  J   Ý&  b   ('  M   '  J   Ù'  D   $(  D   i(  M   ®(  J   ü(  ;   G)  ?   )  F   Ã)     
*  Y   *     g*  2   *  7   ·*  +   ï*     +  8   ,+     e+  2   y+     ¬+  #   »+  h   ß+  8   H,  Z   ,  *   Ü,  (   -  L   0-     }-     -  $   ¡-  E   Æ-  A   .     N.  Q   Z.  F   ¬.  2   ó.  !   &/     H/  N   T/  Z   £/  ^   þ/  %   ]0  L   0  L   Ð0  )   1     G1     c1  1   1  J   ±1  U   ü1  3   R2  I   2  3   Ð2  X   3  F   ]3  (   ¤3     Í3  a   â3  $   D4  ?   i4     ©4                           8   ^            $   @   1   b      Y       3           W           )          C      [   R               !   X   O   Q              0   D      "   7   .   ;   =   A      /   
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
 skipping database "%s": amcheck is not installed start block out of bounds too many command-line arguments (first is "%s") warning:  Project-Id-Version: pg_amcheck (PostgreSQL 15)
Report-Msgid-Bugs-To: pgsql-bugs@lists.postgresql.org
POT-Creation-Date: 2022-08-09 12:00+0900
PO-Revision-Date: 2022-05-10 11:31+0900
Last-Translator: 
Language-Team: 
Language: ja
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Generator: Poedit 1.8.13
 
B-treeã¤ã³ããã¯ã¹æ¤æ»ãªãã·ã§ã³:
 
æ¥ç¶ãªãã·ã§ã³:
 
ãã®ä»ã®ãªãã·ã§ã³:
 
ãã°ã¯<%s>ã«å ±åãã¦ãã ããã
 
ãã¼ãã«æ¤æ»ãªãã·ã§ã³:
 
å¯¾è±¡æå®ãªãã·ã§ã³:
       --endblock=BLOCK            æå®ãããã­ãã¯çªå·ã¾ã§ãã¼ãã«ã®æ¤æ»ãè¡ã
       --exclude-toast-pointers    ãªã¬ã¼ã·ã§ã³ã®TOASTãã¤ã³ã¿ãè¿½è·¡ãããªãã
       --heapallindexed            ãã¹ã¦ã®ãã¼ãã¿ãã«ãã¤ã³ããã¯ã¹åã«
                                  è¦ã¤ãããã¨ãæ¤æ»
       --install-missing           æ©è½æ¡å¼µããªãå ´åã«ã¤ã³ã¹ãã¼ã«ãã
       --maintenance-db=DBNAME     ä»£æ¿ã®ä¿å®ãã¼ã¿ãã¼ã¹
       --no-dependent-indexes      ãªã¬ã¼ã·ã§ã³ã®ãªã¹ããã¤ã³ããã¯ã¹ãå«ãããã«
                                  æ¡å¼µãããªãã
       --no-dependent-toast        ãªã¬ã¼ã·ã§ã³ã®ãªã¹ããTOASTãã¼ãã«ãå«ã
                                  ããã«æ¡å¼µãããªãã
       --no-strict-names           ãã¿ã¼ã³ããªãã¸ã§ã¯ãã«åè´ãããã¨ãå¿é ã¨
                                  ããªã
       --on-error-stop             æåã®ç ´æãã¼ã¸ã®çµããã§æ¤æ»ãä¸­æ­ãã
       --parent-check              ã¤ã³ããã¯ã¹ã®è¦ªå­é¢ä¿ãæ¤æ»
       --rootdescend               ã¿ãã«åæ¢ç´¢ãã«ã¼ããã¼ã¸ããå®è¡ãã
       --skip=OPTION               "all-frozen"ããã³"all-visible"ã§ãã
                                  ãã­ãã¯ãæ¤æ»ãããªãã
       --startblock=BLOCK          æå®ãããã­ãã¯çªå·ãããã¼ãã«ã®æ¤æ»ã
                                  éå§ãã
   %s [ãªãã·ã§ã³]... [ãã¼ã¿ãã¼ã¹å]
   -?, --help                      ãã®ãã«ããè¡¨ç¤ºãã¦çµäº
   -D, --exclude-database=PATTERN  åè´ãããã¼ã¿ãã¼ã¹ãæ¤æ»ãããªãã
   -I, --exclude-index=PATTERN     åè´ããã¤ã³ããã¯ã¹ãæ¤æ»ãããªãã
   -P, --progress                  é²è¡ç¶æ³ãè¡¨ç¤º
   -R, --exclude-relation=PATTERN  åè´ãããªã¬ã¼ã·ã§ã³ãæ¤æ»ãããªãã
   -S, --exclude-schema=PATTERN    åè´ããã¹ã­ã¼ããæ¤æ»ãããªãã
   -T, --exclude-table=PATTERN     åè´ãããã¼ãã«ãæ¤æ»ãããªãã
   -U, --username=USERNAME         æ¥ç¶ã«ç¨ããã¦ã¼ã¶ã¼å
   -V, --version                   ãã¼ã¸ã§ã³æå ±ãè¡¨ç¤ºãã¦çµäº
   -W, --password                  ãã¹ã¯ã¼ãå¥åè¦æ±ãå¼·å¶ãã
   -a, --all                       ãã¹ã¦ã®ãã¼ã¿ãã¼ã¹ãæ¤æ»
   -d, --database=PATTERN          åè´ãããã¼ã¿ãã¼ã¹ãæ¤æ»
   -e, --echo                      ãµã¼ãã¼ã«éãããã³ãã³ããè¡¨ç¤º
   -h, --host=HOSTNAME             ãã¼ã¿ãã¼ã¹ãµã¼ãã¼ã®ãã¹ãã¾ãã¯
                                  ã½ã±ãããã£ã¬ã¯ããª
   -i, --index=PATTERN             åè´ããã¤ã³ããã¯ã¹ãæ¤æ»
   -j, --jobs=NUM                  ãµã¼ãã¼ã«å¯¾ãã¦æå®ããæ°ã®æ¥ç¶ãä½¿ç¨ãã
   -p, --port=PORT                 ãã¼ã¿ãã¼ã¹ãµã¼ãã¼ã®ãã¼ã
   -r, --relation=PATTERN          åè´ãããªã¬ã¼ã·ã§ã³ãæ¤æ»
   -s, --schema=PATTERN            åè´ããã¹ã­ã¼ããæ¤æ»
   -t, --table=PATTERN             åè´ãããã¼ãã«ãæ¤æ»
   -v, --verbose                   å¤ãã®ã¡ãã»ã¼ã¸ãåºåãã¾ã
   -w, --no-password               ãã¹ã¯ã¼ãå¥åãè¦æ±ããªã
 %*s/%såã®ãªã¬ã¼ã·ã§ã³(%d%%), %*s/%sãã¼ã¸(%d%%) %*s/%såã®ãªã¬ã¼ã·ã§ã³(%d%%), %*s/%sãã¼ã¸(%d%%) %*s %*s/%såã®ãªã¬ã¼ã·ã§ã³(%d%%), %*s/%sãã¼ã¸(%d%%) (%s%-*.*s) %s %sã¯PostgreSQLãã¼ã¿ãã¼ã¹åã®ãªãã¸ã§ã¯ãã®ç ´æãæ¤æ»ãã¾ãã

 %s ãã¼ã ãã¼ã¸: <%s>
 %sã¯%d..%dã®ç¯å²ã«ãªããã°ãªãã¾ãã %sã¨amcheckã®ãã¼ã¸ã§ã³ã¯åã£ã¦ãã¾ãã? ã­ã£ã³ã»ã«è¦æ±ãéä¿¡ãã¾ãã
 ã³ãã³ã: %s ã­ã£ã³ã»ã«è¦æ±ãéä¿¡ã§ãã¾ããã§ãã:  åãåãã: %s è©³ç´°ã¯"%s --help"ãå®è¡ãã¦ãã ããã ä½¿ç¨æ¹æ³:
 btreeã¤ã³ããã¯ã¹"%s.%s.%s":
 btreeã¤ã³ããã¯ã¹"%s.%s.%s": btreeæ¤ç´¢é¢æ°ãäºæããªãæ°ã®è¡ãè¿å´ãã¾ãã: %d --allã§ã¯ãã¼ã¿ãã¼ã¹åã¯æå®ã§ãã¾ãã ãã¼ã¿ãã¼ã¹åã¨ãã¼ã¿ãã¼ã¹ãã¿ã¼ã³ã¯åæã«æå®ã¯ã§ãã¾ãã btreeã¤ã³ããã¯ã¹"%s.%s.%s"ãæ¤æ» ãã¼ããã¼ãã«"%s.%s.%s"ãæ¤æ» ãã¼ã¿ãã¼ã¹%sã«æ¥ç¶ã§ãã¾ããã§ãã: ã¡ã¢ãªä¸è¶³ã§ã ãã¼ã¿ãã¼ã¹"%s": %s è©³ç´°:  çµäºãã­ãã¯ãç¯å²å¤ã§ã çµäºãã­ãã¯ãéå§ãã­ãã¯ããåã«ãªã£ã¦ãã¾ã ãã¼ã¿ãã¼ã¹"%s"ã¸ã®ã³ãã³ãéåºä¸­ã®ã¨ã©ã¼: %s ã¨ã©ã¼:  ãã¼ããã¼ãã«"%s.%s.%s"ããã­ãã¯%sããªãã»ãã%sãå±æ§%s:
 ãã¼ããã¼ãã«"%s.%s.%s"ããã­ãã¯%sããªãã»ãã%s:
 ãã¼ããã¼ãã«"%s.%s.%s"ããã­ãã¯%s:
 ãã¼ããã¼ãã«"%s.%s.%s":
 ãã³ã:  ä¿®é£¾åãä¸é©åã§ã(ãããåºåãã®ååãå¤ããã¾ã): %s ãªã¬ã¼ã·ã§ã³åãä¸é©åã§ã(ãããåºåãã®ååãå¤ããã¾ã): %s ãã¼ã¿ãã¼ã¹"%1$s"å: ã¹ã­ã¼ã"%3$s"åã§amcheck ãã¼ã¸ã§ã³"%2$s"ãä½¿ç¨ä¸­ ãã¼ã¿ãã¼ã¹"%s"ãå«ãã¾ã åé¨ã¨ã©ã¼: äºæããªããã¼ã¿ãã¼ã¹ãã¿ã¼ã³ID %dãåä¿¡ åé¨ã¨ã©ã¼: äºæããªããªã¬ã¼ã·ã§ã³ãã¿ã¼ã³ID %dãåä¿¡ ãªãã·ã§ã³%sã®å¼æ°ãä¸æ­£ã§ã ä¸æ­£ãªçµäºãã­ãã¯ ä¸æ­£ãªéå§ãã­ãã¯ ãªãã·ã§ã³%2$sã«å¯¾ããä¸æ­£ãªå¤"%1$s" %s"ã«åè´ããæ¤æ»å¯¾è±¡ã®btreeã¤ã³ããã¯ã¹ãããã¾ãã "%s"ã«åè´ããæ¤æ»å¯¾è±¡ã®æ¥ç¶å¯è½ãªãã¼ã¿ãã¼ã¹ãããã¾ãã æ¤æ»ãã¹ããã¼ã¿ãã¼ã¹ãããã¾ãã "%s"ã«åè´ããæ¤æ»å¯¾è±¡ã®ãã¼ããã¼ãã«ãããã¾ãã æ¤æ»å¯¾è±¡ã®ãªã¬ã¼ã·ã§ã³ãããã¾ãã "%s"ã«åè´ããã¹ã­ã¼ãåã«æ¤æ»å¯¾è±¡ã®ãªã¬ã¼ã·ã§ã³ãããã¾ãã "%s"ã«åè´ããæ¤æ»å¯¾è±¡ã®ãªã¬ã¼ã·ã§ã³ãããã¾ãã åãåãããå¤±æãã¾ãã: %s åãåãã: %s
 ãã¼ã¿ãã¼ã¹"%s"ãã¹ã­ãããã¾ã: amcheckãã¤ã³ã¹ãã¼ã«ããã¦ãã¾ãã éå§ãã­ãã¯ãç¯å²å¤ã§ã ã³ãã³ãã©ã¤ã³å¼æ°ãå¤ããã¾ãã(åé ­ã¯"%s") è­¦å:  