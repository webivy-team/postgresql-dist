��    `        �         (  
   )     4  %   K  3   q  P   �  �   �  P   �	  ?   �	  I   
  =   [
  A   �
  6   �
  �     D   �  �   ?  >   �  �     B   �  C   �  ~   )  D   �     �  9     4   ;  2   p  ;   �  @   �  R         s  :   �  %   �     �  �   �  P   �  Q   �  �   &        -   $  )   R     |     �     �  6   �  !        -     F     c  '   �  *   �  5   �  T   	  I   ^  @   �  =   �  +   '     S  .   \      �     �  |   �     1  ;   8     t     �     �  5   �     �  3     6   I  1   �     �  $   �  '   �  $     *   C      n     �  \   �            ,   ;  6   h  :   �  !   �  F   �  "   C  .   f  #   �  $   �  0   �  $     /   4  6   d  $   �  	   �  �  �     h  9   ~  $   �  U   �  j   3   �   �   �   V!  a   �!  �   C"  R   �"  l   #  R   �#    �#  h   �$  >  V%  N   �&  �   �&  q   �'  {   H(  �   �(  �   �)  )   $*  x   N*  `   �*  �   (+  �   �+  �   1,  �   �,      �-  A   �-  P   �-     <.    W.  �   \/  �   �/  u  �0  J   4  W   Y4  S   �4  >   5  2   D5  2   w5  d   �5  <   6  2   L6  6   6  8   �6  Q   �6  C   A7  a   �7  �   �7  �   ~8  x   9  q   |9  S   �9     B:  Y   Q:  /   �:     �:  w  �:     d<  �   w<  ;   �<  6   ;=  Q   r=  ^   �=  1   #>  h   U>  `   �>  p   ?  -   �?  L   �?  C   @  Q   O@  i   �@  K   A  &   WA  �   ~A  (   &B  A   OB  Q   �B  k   �B  x   OC  M   �C  �   D  =   �D  a   �D  :   AE  6   |E  ]   �E  >   F  \   PF  Z   �F  C   G     LG                T   R   P       U              7   -            
   [          3   K   I      '   "      E           8   C         J   +                       W                          6      >                  $   S   Q           _       	   ;   O   ,   )   /      2   =       @   \   L   .   #          M       G   %   :           A      N          (      !   ?   5      9   Z   X                 `   V   H                    <       ^       B       D   0   4           &   Y   1   ]   *   F    
Options:
 
Report bugs to <%s>.
   %s [OPTION]... [STARTSEG [ENDSEG]]
   -?, --help             show this help, then exit
   -B, --block=N          with --relation, only show records that modify block N
   -F, --fork=FORK        only show records that modify blocks in fork FORK;
                         valid names are main, fsm, vm, init
   -R, --relation=T/D/R   only show records that modify blocks in relation T/D/R
   -V, --version          output version information, then exit
   -b, --bkp-details      output detailed information about backup blocks
   -e, --end=RECPTR       stop reading at WAL location RECPTR
   -f, --follow           keep retrying after reaching end of WAL
   -n, --limit=N          number of records to display
   -p, --path=PATH        directory in which to find log segment files or a
                         directory with a ./pg_wal that contains such files
                         (default: current directory, ./pg_wal, $PGDATA/pg_wal)
   -q, --quiet            do not print any output, except for errors
   -r, --rmgr=RMGR        only show records generated by resource manager RMGR;
                         use --rmgr=list to list valid resource manager names
   -s, --start=RECPTR     start reading at WAL location RECPTR
   -t, --timeline=TLI     timeline from which to read log records
                         (default: 1 or the value used in STARTSEG)
   -w, --fullpage         only show records with a full page write
   -x, --xid=XID          only show records with transaction ID XID
   -z, --stats[=record]   show statistics instead of records
                         (optionally, show per-record statistics)
 %s decodes and displays PostgreSQL write-ahead logs for debugging.

 %s home page: <%s>
 BKPBLOCK_HAS_DATA not set, but data length is %u at %X/%X BKPBLOCK_HAS_DATA set, but no data included at %X/%X BKPBLOCK_SAME_REL set but no previous rel at %X/%X BKPIMAGE_COMPRESSED set, but block image length %u at %X/%X BKPIMAGE_HAS_HOLE not set, but hole offset %u length %u at %X/%X BKPIMAGE_HAS_HOLE set, but hole offset %u length %u block image length %u at %X/%X ENDSEG %s is before STARTSEG %s Expecting "tablespace OID/database OID/relation filenode". Try "%s --help" for more information. Usage:
 WAL file is from different database system: WAL file database system identifier is %llu, pg_control database system identifier is %llu WAL file is from different database system: incorrect XLOG_BLCKSZ in page header WAL file is from different database system: incorrect segment size in page header WAL segment size must be a power of two between 1 MB and 1 GB, but the WAL file "%s" header specifies %d byte WAL segment size must be a power of two between 1 MB and 1 GB, but the WAL file "%s" header specifies %d bytes contrecord is requested by %X/%X could not decompress image at %X/%X, block %d could not find a valid record after %X/%X could not find any WAL file could not find file "%s": %m could not locate WAL file "%s" could not locate backup block with ID %d in WAL record could not open directory "%s": %m could not open file "%s" could not open file "%s": %m could not read file "%s": %m could not read file "%s": read %d of %d could not read from file %s, offset %d: %m could not read from file %s, offset %d: read %d of %d could not restore image at %X/%X compressed with %s not supported by build, block %d could not restore image at %X/%X compressed with unknown method, block %d could not restore image at %X/%X with invalid block %d specified could not restore image at %X/%X with invalid state, block %d custom resource manager "%s" does not exist detail:  end WAL location %X/%X is not inside file "%s" error in WAL record at %X/%X: %s error:  first record is after %X/%X, at %X/%X, skipping over %u byte
 first record is after %X/%X, at %X/%X, skipping over %u bytes
 hint:  incorrect resource manager data checksum in record at %X/%X invalid WAL location: "%s" invalid block number: "%s" invalid block_id %u at %X/%X invalid contrecord length %u (expected %lld) at %X/%X invalid fork name: "%s" invalid info bits %04X in log segment %s, offset %u invalid magic number %04X in log segment %s, offset %u invalid record length at %X/%X: wanted %u, got %u invalid record offset at %X/%X invalid relation specification: "%s" invalid resource manager ID %u at %X/%X invalid timeline specification: "%s" invalid transaction ID specification: "%s" invalid value "%s" for option %s missing contrecord at %X/%X neither BKPIMAGE_HAS_HOLE nor BKPIMAGE_COMPRESSED set, but block image length is %u at %X/%X no arguments specified no start WAL location given option %s requires option %s to be specified out of memory while allocating a WAL reading processor out of memory while trying to decode a record of length %u out-of-order block_id %u at %X/%X out-of-sequence timeline ID %u (after %u) in log segment %s, offset %u record length %u at %X/%X too long record with incorrect prev-link %X/%X at %X/%X record with invalid length at %X/%X resource manager "%s" does not exist start WAL location %X/%X is not inside file "%s" there is no contrecord flag at %X/%X too many command-line arguments (first is "%s") unexpected pageaddr %X/%X in log segment %s, offset %u unrecognized value for option %s: %s warning:  Project-Id-Version: postgresql
Report-Msgid-Bugs-To: pgsql-bugs@lists.postgresql.org
POT-Creation-Date: 2023-01-31 23:17+0000
PO-Revision-Date: 2023-04-19 15:06
Last-Translator: 
Language-Team: Ukrainian
Language: uk_UA
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Plural-Forms: nplurals=4; plural=((n%10==1 && n%100!=11) ? 0 : ((n%10 >= 2 && n%10 <=4 && (n%100 < 12 || n%100 > 14)) ? 1 : ((n%10 == 0 || (n%10 >= 5 && n%10 <=9)) || (n%100 >= 11 && n%100 <= 14)) ? 2 : 3));
X-Crowdin-Project: postgresql
X-Crowdin-Project-ID: 324573
X-Crowdin-Language: uk
X-Crowdin-File: /REL_15_STABLE/pg_waldump.pot
X-Crowdin-File-ID: 904
 
Параметри:
 
Повідомляти про помилки на <%s>.
   %s [OPTION]...[STARTSEG [ENDSEG]]
   -?, --help              показати цю довідку потім вийти
   -B, --block=N з --relation, лише показати записи, які змінюють блок N
   -F, --fork=FORK показати лише записи, які змінюють блоки в форці FORK;
                         дійсні імена: main, fsm, vm, init
   -R, --relation=T/D/R відобразити тільки записи, які змінюють блоки у відношенні T/D/R
   -V, --version            вивести інформацію про версію і вийти
   -b, --bkp-details      виводити детальну інформацію про блоки резервних копій
   -e, --end=RECPTR       зупинити читання WAL з місця RECPTR
   -f, --follow          повторювати спроби після досягнення кінця  WAL
   -n, --limit=N         число записів для відображення
   -p, --path=PATH       каталог, у якому шукати файли сегментів журналу 
або каталог з ./pg_wal, що містить такі файли (за замовчуванням: чинний каталог, ./pg_wal, $PGDATA/pg_wal)
   -q, --quiet            не друкувати жодного виводу, окрім помилок
   -r, --rmgr=RMGR       відображати записи, згенеровані лише ресурсним менеджером RMGR;
                         використовувати --rmgr=list для перегляду списку припустимих імен ресурсного менеджера
   -s, --start=RECPTR     почати читання WAL з місця RECPTR
   -t, --timeline=TLI     часова шкала, записи якої будуть прочитані                          (за замовчуванням: 1 або значення, що використовується у STARTSEG)
   -w, --fullpage показувати записи лише з повним записом на сторінці
   -x, --xid=XID          показати записи лише з ідентифікатором транзакцій XID
   -z, --stats[=record]    показати статистику замість записів                         (необов'язково, відобразити щорядкову статистику)
 %s декодує і відображає журнали попереднього запису PostgreSQL для налагодження.

 Домашня сторінка %s: <%s>
 BKPBLOCK_HAS_DATA встановлений, але довжина даних дорівнює %u в позиції %X/%X BKPBLOCK_HAS_DATA встановлений, але немає даних в позиції %X/%X BKPBLOCK_SAME_REL встановлений, але попереднє значення не задано в позиції %X/%X BKPIMAGE_COMPRESSED встановлений, але довжина образу блока дорівнює %u в позиції %X/%X BKPIMAGE_HAS_HOLE не встановлений, але для пропуску задані: зсув %u, довжина %u в позиції %X/%X BKPIMAGE_HAS_HOLE встановлений, але для пропуску задані: зсув %u, довжина %u, при довжині образу блока %u в позиції %X/%X ENDSEG %s перед STARTSEG %s Очікуємо "tablespace OID/database OID/relation filenode". Спробуйте "%s --help" для додаткової інформації. Використання:
 WAL файл належить іншій системі баз даних: ідентифікатор системи баз даних де міститься WAL файл - %llu, а ідентифікатор системи баз даних pg_control - %llu Файл WAL належить іншій системі баз даних: некоректний XLOG_BLCKSZ в заголовку сторінки Файл WAL належить іншій системі баз даних: некоректний розмір сегменту в заголовку сторінки Розмір сегмента WAL повинен задаватись ступенем двійки в інтервалі між 1 MB і 1 GB, але у заголовку файлу WAL "%s" вказано %d байт Розмір сегмента WAL повинен задаватись ступенем двійки в інтервалі між 1 MB і 1 GB, але у заголовку файлу WAL "%s" вказано %d байти Розмір сегмента WAL повинен задаватись ступенем двійки в інтервалі між 1 MB і 1 GB, але у заголовку файлу WAL "%s" вказано %d байтів Розмір сегмента WAL повинен задаватись ступенем двійки в інтервалі між 1 MB і 1 GB, але у заголовку файлу WAL "%s" вказано %d байтів по зсуву %X/%X запитано продовження запису не вдалося розпакувати зображення на %X/%X, блок %d не вдалося знайти припустимий запис після %X/%X не вдалося знайти жодного WAL файлу не вдалося знайти файл "%s": %m не вдалося знайти WAL файл "%s" не вдалося знайти блок резервної копії з ID %d у записі WAL не вдалося відкрити каталог "%s": %m не вдалося відкрити файл "%s" не можливо відкрити файл "%s": %m не вдалося прочитати файл "%s": %m не вдалося прочитати файл "%s": прочитано %d з %d не вдалося прочитати файл %s, зсув %d: %m не вдалося прочитати з файлу %s, зсув %d: прочитано %d з %d не вдалося відновити зображення в %X/%X, стиснуте %s, не підтримується збіркою, блок %d не вдалося відновити зображення %X/%X стиснуте з невідомим методом, блок %d не вдалося відновити зображення %X/%X з недійсним вказаним блоком %d не вдалося відновити зображення %X/%X з недійсним станом, блок %d користувацький менеджер ресурсів "%s" не існує деталі:  кінцеве розташування WAL %X/%X не всередині файлу "%s" помилка у записі WAL у %X/%X: %s помилка:  перший запис після %X/%X, у %X/%X, пропускається %u байт
 перший запис після %X/%X, у %X/%X, пропускається %u байти
 перший запис після %X/%X, у %X/%X, пропускається %u байтів
 перший запис після %X/%X, у %X/%X, пропускається %u байти
 підказка:  некоректна контрольна сума даних менеджера ресурсів у запису по зсуву %X/%X неприпустиме розташування WAL: "%s" неприпустимий номер блоку: "%s" невірний ідентифікатор блоку %u в позиції %X/%X неприпустима довжина contrecord %u (очікувалось %lld) на %X/%X неприпустиме ім'я форку: "%s" невірні інформаційні біти %04X в сегменті журналу %s, зсув %u невірне магічне число %04X в сегменті журналу %s, зсув %u невірна довжина запису по зсуву %X/%X: очікувалось %u, отримано %u невірний зсув запису: %X/%X неприпустима специфікація відношення: "%s" невірний ID менеджера ресурсів %u в %X/%X неприпустима специфікація часової лінії: "%s" неприпустима специфікація ідентифікатора транзакції: "%s" неприпустиме значення "%s" для параметра %s відсутній contrecord в %X/%X ні BKPIMAGE_HAS_HOLE, ні BKPIMAGE_COMPRESSED не встановлені, але довжина образу блока дорівнює %u в позиції %X/%X не вказано аргументів не задано початкове розташування WAL параметр %s вимагає використання параметру %s недостатньо пам'яті під час виділення обробника читання WAL не вистачило пам'яті під час спроби закодування запису довжиною %u ідентифікатор блока %u out-of-order в позиції %X/%X порушення послідовності ID лінії часу %u (після %u) в сегменті журналу %s, зсув %u довжина запису %u на %X/%X є задовгою запис з неправильним попереднім посиланням %X/%X на %X/%X запис з невірною довжиною на %X/%X менеджер ресурсів "%s" не існує початкове розташування WAL %X/%X не всередині файлу "%s" немає прапорця contrecord в позиції %X/%X забагато аргументів у командному рядку (перший "%s") неочікуваний pageaddr %X/%X в сегменті журналу %s, зсув %u нерозпізнане значення параметра %s: %s попередження:  