��    �      �  �   |	      �      �     �  &   �     #     C  -   b     �     �  -   �     �  /     �   5      �  f   �  k   U     �  B   �  !      3   B  ?   v  H   �  D   �  C   D  E   �  ?   �  ?     >   N  9   �  L   �  B     E   W  �   �  0   "  F   S  >   �  B   �  I     %   f  <   �  O   �  7        Q     X     a  M   s  -   �  !   �  >     E   P  C   �  y   �  9   T  D   �  C   �  D     >   \  A   �  '   �  (     ,   .  2   [  6   �  >   �  *     /   /  7   _  4   �  %   �  1   �  0   $  #   U     y  4   �  2   �  1   �  0   1  ,   b  .   �  3   �     �  +     1   >  6   p  1   �  *   �  "     7   '  "   _  $   �  J   �     �        3   %   0   Y      �   #   �   !   �      �   !   !  $   $!      I!  -   j!     �!  4   �!  %   �!  $   "  "   8"  !   ["  u   }"  F   �"     :#  7   N#  )   �#  k   �#  `   $  %   }$  &   �$     �$  d   �$     7%  /   V%  &   �%  0   �%  .   �%  )   &  )   7&     a&     x&  &   �&      �&  ,   �&  (   �&     ('  !   C'     e'     y'     �'     �'     �'     �'     �'     �'     �'     (     (     -(      L(  "   m(     �(  v  �(  )   &*     P*  2   e*  6   �*  7   �*  <   +     D+     X+  6   m+  +   �+  :   �+  �   ,  (   �,  t   �,  u   U-  #   �-  L   �-  !   <.  ;   ^.  :   �.  D   �.  J   /  M   e/  Q   �/  @   0  5   F0  N   |0  2   �0  [   �0  e   Z1  G   �1  �   2  2   �2  O   �2  K   :3  A   �3  K   �3  .   4  B   C4  h   �4  E   �4     55     =5     Q5  k   e5  0   �5  "   6  <   %6  U   b6  T   �6  �   7  K   �7  Y   �7  T   K8  P   �8  G   �8  N   99  (   �9  $   �9  '   �9  A   �9  J   @:  8   �:  +   �:  9   �:  7   *;  6   b;  '   �;  4   �;  -   �;  $   $<     I<  1   g<  <   �<  ?   �<  ;   =  4   R=  5   �=  ;   �=      �=  +   >  1   F>  5   x>  A   �>  .   �>     ?  6   >?  (   u?  &   �?  S   �?      @     :@  1   U@  7   �@     �@  0   �@  "   A     (A  $   @A  ,   eA  "   �A  @   �A     �A  7   B     MB      mB     �B  !   �B  i   �B  X   :C     �C  A   �C  ,   �C  ~   D  z   �D  &   E  ?   =E     }E  m   �E  $   �E  .   F  :   MF  ;   �F  =   �F  9   G  9   <G  "   vG     �G  3   �G  '   �G  !   H  #   )H  '   MH      uH     �H     �H     �H     �H     I     !I     7I     TI     jI     }I     �I  /   �I  1   �I  "   J  #   5J             2           b   y   <           Z   x           �   �   v   8                  
   �   B       ;   )       @              l       R   %      �   �           �      ?             6   �       =   r   �               ,       �   0   J   G   3       �   a       h   5   p   {   X   [   `       7                     +   t   K         |   S      :   \   !           �   z   W   �       i   s          _   (   q   >       V               9   k   e      N   #   �          A           �   �       c   /                	   ]   �           "       F   �           U   }   g               j      D   ~   �   *   '   d   -   f   ^   �       H   �   4   C       m       P   1   �   L             $   E         Q              w                  O   u   �   .   T       Y         �      I   &      M   n      o        
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
Report bugs to <pgsql-bugs@postgresql.org>.
 
Shutdown modes are:
 
Start types are:
   %s init[db] [-D DATADIR] [-s] [-o OPTIONS]
   %s kill     SIGNALNAME PID
   %s promote  [-D DATADIR] [-W] [-t SECS] [-s]
   %s register [-D DATADIR] [-N SERVICENAME] [-U USERNAME] [-P PASSWORD]
                  [-S START-TYPE] [-e SOURCE] [-W] [-t SECS] [-s] [-o OPTIONS]
   %s reload   [-D DATADIR] [-s]
   %s restart  [-D DATADIR] [-m SHUTDOWN-MODE] [-W] [-t SECS] [-s]
                  [-o OPTIONS] [-c]
   %s start    [-D DATADIR] [-l FILENAME] [-W] [-t SECS] [-s]
                  [-o OPTIONS] [-p PATH] [-c]
   %s status   [-D DATADIR]
   %s stop     [-D DATADIR] [-m SHUTDOWN-MODE] [-W] [-t SECS] [-s]
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
 %s is a utility to initialize, start, stop, or control a PostgreSQL server.

 %s: -S option not supported on this platform
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
 %s: cannot set core file size limit; disallowed by hard limit
 %s: cannot stop server; single-user server is running (PID: %ld)
 %s: control file appears to be corrupt
 %s: could not access directory "%s": %s
 %s: could not allocate SIDs: error code %lu
 %s: could not create promote signal file "%s": %s
 %s: could not create restricted token: error code %lu
 %s: could not determine the data directory using command "%s"
 %s: could not find own program executable
 %s: could not find postgres program executable
 %s: could not get LUIDs for privileges: error code %lu
 %s: could not get token information: error code %lu
 %s: could not open PID file "%s": %s
 %s: could not open process token: error code %lu
 %s: could not open service "%s": error code %lu
 %s: could not open service manager
 %s: could not read file "%s"
 %s: could not register service "%s": error code %lu
 %s: could not remove promote signal file "%s": %s
 %s: could not send promote signal (PID: %ld): %s
 %s: could not send reload signal (PID: %ld): %s
 %s: could not send signal %d (PID: %ld): %s
 %s: could not send stop signal (PID: %ld): %s
 %s: could not start server
Examine the log output.
 %s: could not start server: %s
 %s: could not start server: error code %lu
 %s: could not start service "%s": error code %lu
 %s: could not unregister service "%s": error code %lu
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
 The program "%s" is needed by %s but was not found in the
same directory as "%s".
Check your installation.
 The program "%s" was found by "%s"
but was not the same version as %s.
Check your installation.
 Timed out waiting for server startup
 Try "%s --help" for more information.
 Usage:
 WARNING: online backup mode is active
Shutdown will not complete until pg_stop_backup() is called.

 Waiting for server startup...
 cannot duplicate null pointer (internal error)
 child process exited with exit code %d child process exited with unrecognized status %d child process was terminated by exception 0x%X child process was terminated by signal %d child process was terminated by signal %s command not executable command not found could not change directory to "%s": %s could not find a "%s" to execute could not get current working directory: %s
 could not identify current directory: %s could not read binary "%s" could not read symbolic link "%s" invalid binary "%s" out of memory
 pclose failed: %s server promoted
 server promoting
 server shutting down
 server signaled
 server started
 server starting
 server stopped
 starting server anyway
 trying to start server anyway
 waiting for server to promote... waiting for server to shut down... waiting for server to start... Project-Id-Version: pg_ctl-tr
Report-Msgid-Bugs-To: pgsql-bugs@postgresql.org
POT-Creation-Date: 2018-10-10 21:15+0000
PO-Revision-Date: 2018-10-15 12:14+0300
Last-Translator: Abdullah Gülner
Language-Team: Turkish <ceviri@postgresql.org.tr>
Language: tr
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Generator: Poedit 1.8.7.1
 
kill için izin verilen sinyal adları:
 
Ortak seçenekler:
 
Kaydetmek ya da kaydı silmek için seçenekler:
 
Başlamak ya da yeniden başlamak için seçenekler:
 
Durdurmak ya da yeniden başlatmak için seçenekler:
 
Hataları <pgsql-bugs@postgresql.org> adresine bildiriniz.
 
Kapatma modları:
 
Başlama tipleri: 
   %s init[db] [-D VERİDİZİN] [-s] [-o SEÇENEKLER]
   %s kill     SİNYAL_ADI SÜREÇ_NUMARASI
   %s promote  [-D VERİDİZİNİ] [-W] [-t SANİYE] [-s]

   %s register [-D VERİDİZİNİ] [-N SERVISADI] [-U KULLANICIADI] [-P PAROLA]
                  [-S BAŞLATMA-TİPİ] [-e KAYNAK] [-W] [-t SANİYE] [-s] [-o SEÇENEKLER]
   %s reload   [-D VERİ_DİZİNİ] [-s]
   %s restart  [-D VERİDİZİNİ] [-m KAPATMA-MODU] [-W] [-t SANİYE] [-s]
                  [-o SEÇENEKLER] [-c]

   %s start    [-D VERİDİZİN] [-l DOSYAADI] [-W] [-t SANİYE] [-s]
                  [-o SECENEKLER] [-p YOL] [-c]
   %s status   [-D VERİ_DİZİNİ]
   %s stop     [-D VERİDİZİNİ] [-m KAPATMA_MODU] [-W] [-t SANİYE] [-s]

   %s unregister [-N SERVİS_ADI]
   -?, --help             bu yardımı göster, sonra çık
   -D, --pgdata=VERİDİZİNİ   verinin tutulacağı alan
   -N SERVICENAME  PostgreSQL sunucusunu kaydedeceğiniz servis adı
   -P PASSWORD     PostgreSQL sunucusunu kaydetmek için hesabın şifresi
   -S START-TYPE   PostgreSQL sunucusunu kaydedeceğiniz servis başlama tipi
   -U USERNAME     PostgreSQL sunucusunu kaydetmek için gerekli kullanıcı adı
   -V, --version          sürüm bilgisini göster, sonra çık
   -W, --no-wait          işlem bitene kadar bekleme
   -c, --core-files       postgres'in core dosyaları oluşturmasına izin ver
   -c, --core-files       bu platformda uygulanmaz
   -e SOURCE              servis olarak çalışırken loglama için olay (event) kaynağı
   -l, --log=DOSYA_ADI     sunucu loglarını DOSYA_ADI dosyasına yaz (ya da dosyanın sonuna ekle).
   -m, --mode=MOD        MOD "smart", "fast", veya "immediate" olabilir
   -o, --options=SEÇENEKLER   postgres'e (PostgreSQL sunucusu çalıştırılabilir dosyası)
                         ya da initdb'ye geçilecek komut satırı seçenekleri
   -p PATH-TO-POSTGRES  normalde gerekli değildir
   -s, --silent           sadece hataları yazar, hiç bir bilgi mesajı yazmaz
   -t, --timeout=SANİYE     -w seçeneğini kullanırken beklenecek saniye
   -w, --wait             işlem bitene kadar bekle (varsayılan)
   auto       sistem açılışında servisi otomatik başlat (varsayılan)
   demand       hizmeti talep üzerine başlat
   fast        düzgünce kapanarak direk olarak dur (varsayılan)
   immediate   tam bir kapanma gerçekleşmeden dur; yeniden başladığında kurtarma modunda açılır
   smart       tüm istemciler bağlantılarını kestikten sonra dur
  tamam
  başarısız oldu
 bekleme durduruldu
 %s bir PostgreSQL sunucusunu ilklendirmek, başlatmak, durdurmak ya da kontrol etmek için bir araçtır.

 %s: -S seçeneği bu platformda desteklenmiyor.
 %s: "%s" PID dosyası bulunamadı
 %s: UYARI: bu platformda restricted token oluşturulamıyor
 %s: UYARI: sistem API içinde tüm iş nesnesi fonksiyonlarının yeri belirlenemedi
 %s: başka bir sunucu çalışıyor olabilir; yine de başlatmaya çalışılıyor.
 %s: root olarak çalıştırılamaz
Lütfen  (yani "su" kullanarak) sunucu sürecine sahip olacak (yetkisiz) kullanıcı
ile sisteme giriş yapınız.
 %s: sunucu yükseltilemiyor (promote), sunucu yedek (standby) modda değil
 %s: sunucu yükseltilemedi (promote), tek kullanıcılı sunucu çalışıyor (PID: %ld)
 %s: sunucu yeniden yüklenemedi, tek kullanıcılı sunucu çalışıyor (PID: %ld)
 %s: sunucu başlatılamadı; tek kullanıcılı sunucu çalışıyor (PID: %ld)
 %s: core boyutu ayarlanamadı; hard limit tarafından sınırlanmış.
 %s: sunucu durdurulamadı; tek kullanıcılı sunucu çalışıyor (PID: %ld)
 %s: kontrol dosyası bozuk görünüyor
 %s: "%s" dizine erişim hatası: %s
 %s: SIDler ayrılamadı: Hata kodu %lu
 %s: "%s" yükseltme (promote) sinyal dosyası yaratılamadı: %s
 %s: kısıtlı andaç (restricted token) oluşturulamıyor: hata kodu %lu
 %s: "%s" komutu kullanılarak veri dizini belirlenemedi
 %s:Çalıştırılabilir dosya bulunamadı
 %s: çalıştırılabilir postgres programı bulunamadı
 %s: yetkiler için LUID'ler alınamadı: hata kodu %lu
 %s: andaç (token) bilgisi alınamadı: hata kodu %lu
 %s: "%s" PID dosyası açılamadı: %s
 %s: process token açma başarısız: hata kodu %lu
 %s: "%s" servisi açılamadı: hata kodu %lu
 %s: servis yöneticisi açılamadı
 %s: "%s" dosyası okunamadı
 %s: "%s" servisi kayıt edilemedi: hata kodu %lu
 %s: "%s" yükseltme (promote) sinyal dosyası slinemedi: %s
 %s: yükseltme (promote) sinyali gönderilemedi (PID: %ld): %s
 %s: yeniden yükleme sinyali gönderilemedi (PID: %ld): %s
 %s: %d reload sinyali gönderilemedi (PID: %ld): %s
 %s:durdurma sinyali başarısız oldu (PID: %ld): %s
 %s: sunucu başlatılamadı
Kayıt dosyasını inceleyiniz
 %s: sunucu başlatılamadı: %s
 %s: sunucu başlatılamadı: hata kodu %lu
 %s: "%s" servisi başlatılamadı: Hata kodu %lu
 %s: "%s" servisinin kaydı silinemedi: hata kodu %lu
 %s: "%s" yükseltme (promote) sinyal dosyasına yazılamadı: %s
 %s: veritabanı ilklendirme başarısız oldu
 %s: "%s" dizini mevcut değil
 %s: "%s" dizini bir veritabanı kümesi dizini değil
 %s: "%s" PID dosyasında geçersiz veri
 %s: kill modu için eksik argümanlar
 %s: Hiçbir veritabanı dizini belirtilmemiş ve PGDATA çevresel değişkeni boş
 %s: hiçbir işlem belirtilmedi
 %s: çalışan sunucu yok
 %s: eski sunucu süreci (PID: %ld) kaybolmuştur
 %s: "%s" seçenek dosyası sadece 1 satır olmalıdır
 %s: yetersiz bellek
 %s: sunucu zamanında yükseltilemedi (promote)
 %s: sunucu zamanında başlamadı
 %s: sunucu kapanmıyor
 %s: sunucu çalışıyor (PID: %ld)
 %s: "%s" servisi daha önce kaydedilmiştir
 %s: "%s" servisi kayıtlı değil
 %s: sunucu, tek kullanıcı biçiminde çalışıyor (PID: %ld)
 %s: "%s" PID dosyası boştur
 %s: çok fazla komut satırı argümanı (ilki : "%s")
 %s: geçersiz işlem modu "%s"
 %s: geçersiz kapanma modu "%s"
 %s: geçersiz sinyal adı "%s"
 %s: geçersiz başlama tipi "%s"
 İPUCU: "-m fast" seçeneği oturumların kendilerinin bitmesini beklemektense
oturumları aniden keser.
 Eğer -D seçeneği gözardı edilirse, PGDATA çevresel değişkeni kullanılacaktır.
 Sunucu çalışıyor mu?
 Lütfen tek kullanıcılı sunucuyu durdurun ve yeniden deneyin.
 Sunucu başladı ve bağlantı kabul ediyor
 "%s" programına %s tarafından gereksinim duyuluyor, ancak 
"%s" ile aynı dizinde bulunamadı.
Kurulumunuzu kontrol ediniz.
 "%s" programı "%s" tarafından
bulundu ancak %s ile aynı sürüm numarasına sahip değil.
Kurulumunuzu kontrol ediniz.
 Sunucu başlarken zaman aşımı oldu
 Daha fazla bilgi için "%s --help" komutunu kullanabilirsiniz.
 Kullanımı:
 WARNING: çevrimiçi yedekleme modu etkin
pg_stop_backup() çalıştırılmadam sunucu kapatılmayacaktır.

 Sunucunun başlaması bekleniyor...
 null pointer  duplicate edilemiyor (iç hata)
 alt süreç %d çıkış koduyla sonuçlandırılmıştır alt süreç %d bilinmeyen durumu ile sonlandırılmıştır alt süreç 0x%X exception tarafından sonlandırılmıştır alt süreç %d sinyali tarafından sonlandırılmıştır alt süreç %s sinyali tarafından sonlandırılmıştır komut çalıştırılabilir değil komut bulunamadı çalışma dizini "%s" olarak değiştirilemedi: %s "%s"  çalıştırmak için bulunamadı geçerli dizin belirlenemedi: %s
 geçerli dizin tespit edilemedi: %s "%s" ikili (binary) dosyası okunamadı symbolic link "%s" okuma hatası geçersiz ikili (binary) "%s" bellek yetersiz
 pclose başarısız oldu: %s sunucu yükseltildi (promote)
 sunucu yükeltiliyor (promote)
 sunucu kapatılıyor
 sunucuya sinyal gönderildi
 sunucu başlatıldı
 sunucu başlıyor
 sunucu durduruldu
 sunucu yine de başlatılıyor
 sunucu yine de başlatılmaya çalışılıyor
 sunucunun yükseltilmesi (promote)  bekleniyor... sunucunun kapanması bekleniyor... sunucunun başlaması bekleniyor... 