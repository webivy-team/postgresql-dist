Þ          ü   %   Ü      p  Ù   q  
   K     V     Þ  3   õ  +   )  7   U  6     L   Ä  <        N  6   b  %        ¿  $   Ç  )   ì  (     (   ?     h                         º  !   Ø     ú  	     Ê  $  R  ï  #   B
  Ê   f
  P   1        g   #  c        ï  Ì   t     A  <   ß  v     Z         î  X     q   h  k   Ú  q   F  D   ¸     ý          0  ]   N  r   ¬          ©  	   ,                                                                              
                    	                         
For use as archive_cleanup_command in postgresql.conf:
  archive_cleanup_command = 'pg_archivecleanup [OPTION]... ARCHIVELOCATION %%r'
e.g.
  archive_cleanup_command = 'pg_archivecleanup /mnt/server/archiverdir %%r'
 
Options:
 
Or for use as a standalone archive cleaner:
e.g.
  pg_archivecleanup /mnt/server/archiverdir 000000010000000000000010.00000020.backup
 
Report bugs to <%s>.
   %s [OPTION]... ARCHIVELOCATION OLDESTKEPTWALFILE
   -?, --help     show this help, then exit
   -V, --version  output version information, then exit
   -d             generate debug output (verbose mode)
   -n             dry run, show the names of the files that would be removed
   -x EXT         clean up files if they have this extension
 %s home page: <%s>
 %s removes older WAL files from PostgreSQL archives.

 Try "%s --help" for more information. Usage:
 archive location "%s" does not exist could not close archive location "%s": %m could not open archive location "%s": %m could not read archive location "%s": %m could not remove file "%s": %m detail:  error:  hint:  invalid file name argument must specify archive location must specify oldest kept WAL file too many command-line arguments warning:  Project-Id-Version: pg_archivecleanup (PostgreSQL) 15
Report-Msgid-Bugs-To: pgsql-bugs@lists.postgresql.org
POT-Creation-Date: 2022-07-02 04:50+0000
PO-Revision-Date: 2022-07-04 09:06+0200
Last-Translator: Temuri Doghonadze <temuri.doghonadze@gmail.com>
Language-Team: Georgian <nothing>
Language: ka
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Plural-Forms: nplurals=2; plural=(n != 1);
X-Generator: Poedit 3.1
 
ááááá¡áá§ááááááá, á áááá áª archive_cleanup_command postgresql.conf-á¨á: 
  archive_cleanup_command = 'pg_archivecleanup [ááá áááá¢á á]... áá á¥áááá¡áááááá áááá %%r'
ááá: 
  archive_cleanup_command = 'pg_archivecleanup /mnt/server/archiverdir %%r'
 
ááá áááá¢á ááá
 
áá áá£áá áá á¥áááá¡ áááá¬áááááá ááááá§ááááá:
ááá:
  pg_archivecleanup /mnt/server/archiverdir 000000010000000000000010.00000020.backup
 
á¨ááªááááááá¡ á¨áá¡áá®áá ááá¬áá áá: %s
   %s [ááá áááá¢á á]... áá á¥áááá¡ááááááá áááá á£á«ááááá¡áá¨áááá®á£ááWALá¤áááá
   -?, --help     áá ááá®ááá áááá¡ á©áááááá áá ááá¡ááá
   -V, --version              ááá á¡ááá¡ á©áááááá áá ááá¡ááá
   -d, --debug               ááá¡áááá áá ááá¤áá áááªááá¡ ááááá ááªáá(verbose mode)
   -n             áá¨á ááá ááá¨áááá. á¤ááááááá¡ á¬áá¨ááá¡ áááááá  áá®áááá áááá á¡áá®áááááá¡ á©áááááá
   -x EXT         á¤ááááááá¡ ááá¡á£á¤áááááá, áá£ ááá áá¡ ááá¤áá ááááá áááá©áááá
 %s-áá¡ á¡áá¬á§áá¡á áááá ááá: <%s>
 %s PostgreSQL-áá¡ áá á¥áááááááá á«áááá WAL á¤ááááááá¡ á¬áá¨áá.

 ááá¢á ááá¤áá áááªááá¡áááá¡ á¡áªáááá '%s --help'. ááááá§ááááá:
 áá á¥áááá¡ áááááá áááá áá  áá á¡ááááá¡: %s áá á¥áááá¡ áááááá ááááá¡ ááá§áááááá¡ á¨ááªáááá"%s": %m áá á¥áááá¡ áááááá ááááá¡ ááá®á¡ááá¡ á¨ááªáááá"%s": %m áá á¥áááá¡ áááááá ááááá¡ á¬ááááá®ááá¡ á¨ááªáááá"%s": %m á¤ááááá¡ á¬áá¨ááá¡ á¨ááªáááá "%s": %m ááá¢ááááá:  á¨ááªáááá:  ááááá¨áááá:  á¤ááááá¡ á¡áá®áááá¡ áá áá¡á¬áá á áá áá£áááá¢á áá á¥áááá¡ áááááá ááááá¡ áááááááá áá£áªáááááááá ááá¢ááááá£áá á£á«ááááá¡á WAL á¤ááááá¡ áááááááá áá£áªáááááááá ááá¢áá¡ááá¢áá áááá á áá á«áááááá¡-á¡á¢á áá¥áááá¡ áá áá£áááá¢á warning:  