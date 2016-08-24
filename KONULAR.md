# LYK 2016 ÖĞRENDİKLERİMİZ

# Lisans
Lisans metni (İngilizce). Detaylar için lisans dosyasına bakınız.

    Copyright (c)  2016 Güray Yıldırım, İlteriş Keskin, Serhat Celil İLERİ
    See the file LICENSE.txt for copying conditions.

## HER ŞEYDEN ÖNCE RTFM!

## TEMEL GNU/LINUX DİZİNLERİ

\*\*\*Linux'da Her Şey Dosyadır.\*\*\*

### / (Root-Kök) DİZİNİ

Root dizini sistemimizin tümünü kapsayan dizindir.

Tüm dizinlerin en büyük ebeveyni olan / (Root) dizininin üzerinde veya yanında herhangi başka bir şey yoktur.

Sistemimizdeki tüm dosya ve dizinler / (Root) dizininin altında bulunur.

### / DİZİNİNİN ALT DİZİNLERİ

/ Dizininin altında genel olarak 15-16 dizin bulunur.

Bu dizinlerin her birinin orada bulunmasının bir amacı vardır.

#### /bin Dizini
bin ismi binary (ikili) nin kısaltmasından gelir.

Burada çalıştırılabilir komutların derlenmiş (binary yapısında) halleri bulunur.

Sistem için kritik önem taşır ve silinmesi durumunda sisteme herhangi bir komut verilemez.

#### /boot Dizini
Açılış dosyalarını ve Kerneli barındırır.

Silinmesi durumunda sistem çalışmaz hale gelir.

#### /dev Dizini
dev ismi Devices yani Cihazlar kelimesinin kısaltmasından gelir.

Sisteme bağlı cihazların dosyalarının bulunduğu yerdir.

Her cihazın bir numarası vardır. Bu numaralar rastgele değil daha önceden belirlenen ve yeni cihazlar çıktıkça güncellenen devices.txt ye göre verilir.
bkz. [https://www.kernel.org/doc/Documentation/devices.txt](https://www.kernel.org/doc/Documentation/devices.txt)

#### /etc Dizini
Sistem ayar dosyalarının tutulduğu dizindir.

Herhangi bir ayarı elle değiştirmek istersek genellikle bu dizinin altındaki bir dosyada değişiklik yaparız.

#### /home Dizini
Kullanıcıların ev dizinlerinin tutulduğu dizindir.

İçindeki bir dizinin silinmesi durumunda silinen dizinin sahibi olan kullanıcı dosyalarını kaybetmiş olur.

#### /lib Dizini
Kütüphane ve Kernel Modüllerinin tutulduğu dizindir.

#### /media Dizini
Çıkarılabilir medya cihazlarının mount edildiği dizindir.

#### /mnt Dizini
Geçici mount edilmiş dosya sistemlerinin mount edildiği dizindir.

#### /opt Dizini
Kendi kütüphane dosyaları ile gelen uygulamaların kütüphane dosyalarının saklandığı dizindir.

#### /sbin Dizini
Sistem çalıştırılabilir dosyalarının saklandığı dizindir.

#### /srv Dizini
Services in kısaltmasından gelir.

Sistem tarafından sunulan servis dosyalarının bulunduğu dizindir.

#### /tmp Dizini
Geçici dosyaların bulunduğu dizindir.

Bu dizinde root haricindeki her kullanıcı sadece kendi dosyalarında değişiklik hakkına sahiptir.

#### /usr Dizini
BİLGİLER EKLENECEK!
#### /var Dizini
BİLGİLER EKLENECEK!
#### /root Dizini
root Kullanıcısının ev dizinidir.

#### /proc Dizini
Sistem ile ilgili bilgileri alabileceğimiz dosyaların bulunduğu dizindir.

Dizinin içi aslında boştur. Sistem çalıştığı zaman sistemin özellikleri dosya olarak görünür.

---

## KULLANICI DEĞİŞTİRME VE BİLGİ ALMA

~~~bash
su = Kullanıcı değiştirme (Switch user'in kısaltması)
~~~
~~~bash
su = Tek başına kullanılırsa 'root' kullanıcısına geçme
~~~
~~~bash
su - kullaniciadi = Belirtilen kullanıcıya geçme
~~~
~~~bash
whoami = Kullanıcı adını gösterir
~~~
~~~bash
$SHELL = Kullanıcının Shell/konsol unun yolu
~~~
~~~bash
echo $SHELL = Kullanıcının Shell/konsol unun yolunu yazar
~~~
~~~bash
$PATH = Komutların aranacağı adresler
~~~
~~~bash
echo $PATH =  Komutların aranacağı adresleri ekrana yazar
~~~
---
## DD KOMUTU KULLANIMI
~~~bash
dd = Disk Dump
~~~
~~~bash
dd if = Input File
~~~
~~~bash
dd of = Output File
~~~
~~~bash
dd count = Byte Sayısı
~~~
~~~bash
dd bs = Block Size
~~~
~~~bash
dd if=/dev/zero of=/dev/sda count=1 bs=512 = MBR Silme
~~~

---
## ELLE KULLANICI EKLEME
~~~bash
1-  etc/shadow

2- etc/passwd

3- etc/group

dosyalarına bilgileri ekle.

4- home dizini altında kullanıcı dizini oluştur.

5- /etc/skel altındaki .bash ile başlayanları kullanıcının home dizinine kopyala ve sahibini/grubunu yeni kullanıcı yap (bkz: chown)
~~~
---
## WC KOMUTU

~~~bash
wc = Satır - Kelime - Harf sayısını gösterir
~~~
~~~bash
wc -l = Satır sayısını verir
~~~
~~~bash
wc -w = Kelime sayısını verir
~~~
~~~bash
wc -c = Harf sayısını verir
~~~

**Not: wc aslında bitleri sayar**

~~~bash
wc -m = Gerçek harf sayısını verir
~~~
~~~bash
wc --char = Gerçek harf sayısını verir
~~~
---

## DOSYA İÇİ GÖRÜNTÜLEME

~~~bash
head = İlk 10 satırı gösterir
~~~
~~~bash
tail = Son 10 satırı gösterir
~~~
~~~bash
head -n 5 = İlk 5 satırı gösterir
~~~
~~~bash
tail -n 5 = Son 5 satırı gösterir
~~~
~~~bash
head -n-5 = İlk n-5 satırı gösterir
~~~
~~~bash
tail -n+5 = Son n-5 satırı gösterir -n+5 = -(-n-5)
~~~
~~~bash
head -n -6 siir.txt | tail -n +5 = İlk 5 ve son 5 satırı kırpılmış dosya
~~~
~~~bash
more = Bir şeyin içini gösterir.Sadece aşağı gidilebilir.
~~~
~~~bash
less = Bir şeyin içini gösterir, yukarı aşağı gitme seçeneği de vardır.
~~~

---
## ALIAS SİSTEMİ
~~~bash
alias = Sonradan komut tanımlama
~~~
~~~bash
alias = (Komut olarak girildiğinde) Tüm aliasları gösterir
~~~
~~~bash
alias "merhaba=echo Merhaba" = alias örneği
~~~
~~~bash
alias merhaba="echo Merhaba" = alias örneği
~~~
~~~bash
unalias = alias kaldırma
~~~

---

## Dosya İzinleri  /  Türleri
~~~
-|---|---|---
1| 2 | 3 | 4
~~~
2-3-4 yapısı = |rwx|
>r = read

>w = write

>x = executable

1. Bölüm = Dosya Tipi
2. Bölüm = Sahibi (u)
3. Bölüm = Grubu (g)
4. Bölüm = Diğer (Other) (o)

İzin Hesaplama : Her bölüm için |abc| = ((2^0) * c)+((2^1) * b)+((2^2) * a)

Eğer x olması gereken yerde s varsa bu suid anlamına gelir. Yani çalıştırıldığında
sanki dosyanın sahibi çalıştırmış gibi çalışmasını sağlıyor.

suid in açılımı Set User ID dir.

Bu sayede root olmayan bir kullanıcı dolaylı yoldan dahi s iznine sahip bir
programı çalıştırırsa o program root çalıştırmış gibi çalışır.

suid yapmak için chmod ile binler basamağını 4 yaparız. (Yani 4XXX)

Çalıştırılabilir dosyalar s (küçük s) ile ; çalıştırılamayanlar S (büyük S) ile gösterilir.

İzin türü s ise x=1 dir. Eğer S ise x = 0 dır.

suid Kullanıcı iznini sağlar.

sgid Grup İznini sağlar.

suid için chmod binler basamağı 4

sgid için chmod binler basamağı 2

Bir de t yani sticky izin türü vardır.

Bu türde her kullanıcı sadece kendi dosyalarında işlem yapabilir.

### Kullanıcıya Özel İzin Verme

setfacl komutunu kullanırız.

~~~bash
setfacl -m u:kull_adi:rwx dosya = Dosyaya belirtilen kullanıcıya belitrilen izinleri verme
~~~

~~~bash
setfacl -b dosya = Dosyanın özel izinlerini kaldırma
~~~

~~~bash
getfacl dosya = Dosyanın özel izinlerini görme
~~~

---
## DOSYA İZİNLERİNDE DEĞİŞİKLİK
~~~bash
chmod = Dosya izni değiştirme
~~~
~~~bash
chmod XXX dosyaadi = Dosyanın izinlerini ayarlama
~~~

chmod a sayısal değer girerek yada anlamlı harflerle izin değişikliği yapabiliriz.

chmod da
	oluşturan kullanıcı için u
	kullanıcı grubu için g
	diğer kullanıcılar için o
harfine ekleme yada çıkarma yapabiliriz.
Örneğin diğer kullanıcılara
>r izni eklemek için chmod o+r dosyaadi

>w izni eklemek için chmod o+w dosyaadi

>x izni eklemek için chmod o+x dosyaadi

komutlarını kullanabiliriz.
Aynı şekilde diğer kullanıcıların izinlerini kaldırmak için de

>r izni kaldırmak için chmod o-r dosyaadi

>w izni kaldırmak için chmod o-w dosyaadi

>x izni kaldırmak için chmod o-x dosyaadi

komutlarını kullanabiliriz.

---
## KULLANICI BİLGİLERİNİ DÜZENLEME
~~~bash
usermod = ilgisi değiştirme
~~~
~~~bash
usermod -g = Kullanıcı grubu değiştirme
~~~
~~~bash
usermod -g grup_adi kullanici_aci = Kullanıcı grubu değiştirme örnek
~~~

---

## DOSYA SİSTEMİ
Dosyaların isimleri bulunduğu dizinde kayıtlıdır.
Dosyaların izin bilgileri harddiskte MBR bölümünün hemen ardından gelen
dosya sisteminin saklandığı bölümde inode ler bulunur.
Inode lerde dosyaların Metadataları bulunur.
Bir harddiskte en fazla Inode sayısı kadar dosya oluşturulabilir.
Dizinler içlerindeki dosyaların isim ve inode bilgilerini tutar.
Bir dosyayı silebilmek için buulunduğu dizine yazma hakkımız olması gerekiyor.
Bir dosyada hiçbir iznimiz olmasa bile bulunduğu dizinde yazma iznimiz varsa
yeniden adlandırma ve silme işlemi yapabiliriz. Çünkü bu dosyanın isim ve inot
bilgileri bulunduğu dizinde tutulur.

~~~bash
stat = Dosyaların detaylı bilgilerini gösterir.
~~~

---
## HARD DİSK
~~~
|------|-------|------------------------------|
| MBR  |INODES |            BLOCKS            |
|------|-------|------------------------------|
~~~
MBR = 512 byte (Açılış bilgileri)
INODE = Dosya sisteminin saklandığı yer
BLOCK = Dosyalarımızın saklandığı yer
~~~
DİZİN
 |---\
 |----\
 |------\
 |-------\
 |---------\
 |----------\
 |------------\
 |-------------\
Metadata - Content

Metadata: Type | Mode | Link Count | User | Group | Size | Timestamp | inode

Content (name|inode ):
.          | 101
..         | 102
file1      | 256 (e.g)
~~~
---
## VARSAYILAN DOSYA İZİNLERİ
~~~bash
umask = Oluşturulan dosyaların varsayılan izin değerlerini ayarlamaya yarar
~~~

umask Çalışma Mantığı

umask kendisine verilen değer 0666 dan rakam rakam çıkarılmasıyla elde edilen
değeri varsayılan dosya oluşturma izni yapar.
Örneğin 0022 olan umask değeri için
~~~bash
0666
0022
-___
0644
~~~
Yani varsayılan oluşturulan dosya izinleri 644 (-|rw-|r--|r--) olur.
Eğer umask değeri 0000 olasydı 666 yani (-|rw-|rw-|rw-) olacaktı.

Dizinler için ise varsayılan umask değeri 777 dir.
Aynı hesap dizinler için 777 sayısı ile geçerlidir.

Varsayılan umask değeri 0022 dir.

---

## KISAYOL - LİNK OLUŞTURMA
~~~bash
ln = Dosyalar arası bağlantılar oluşturmaya yarar
~~~
~~~bash
ln -s = Sembolik link oluşturmaya yarar
~~~

Linkler iki çeşittir
1. Soft Link
2. Hard Link

Soft Link: Sembolik link de denir. Sadece adrese bağlı link türüdür.
Hard Link: Fiziksel link de denir. Bağlandığı dosyanın adresi değişse bile
takip edebilen link türüdür.

Eğer herhangi bir parametre girmezsek hard link yapmış oluruz.

Bir linki belirtirken sonuna / işareti koyarsak artık link dosyasına değil
link verilen dosyaya işaret etmiş oluruz. Yani rm -rf link/ şeklinde bir komut
girersek linki değil linkin gösterdiği yeri silmiş oluruz.
~~~bash
pwd = Bulunduğumuz dizinin full path ini gösterir.
~~~

~~~bash
pwd -P = Bulunduğumuz dizinin FİZİKSEL adresini gösterir.
Linklerin içindeyken gerçek adreslerini görmek için de kullanabiliriz.
~~~


---

## PAKET YÖNETİMİ

~~~bash
rpm = Red Hat Package Manager
~~~
~~~bash
rpm -q paket = Paket bilgileri
~~~
~~~bash
rpm -ql paket = Paketin tüm dosyaları
~~~
~~~bash
rpm -qa = Sistemde yüklü tüm paketleri listeler
~~~
~~~bash
rpm -qc paket_adi = Paket ayar dosyalarını listeler
~~~
~~~bash
rpm -i paket.rpm = Yeni paket yükleme
~~~
~~~bash
rpm -i --force paket.rpm = Paket yüklerken hata vermemesi için zorlama
~~~
~~~bash
yum = Yellowdog Updater Modified
~~~
~~~bash
yum search aradigimiz_paket_adi_benzeri_biseyler = Kurmak istediğimiz paketin ismini arama
~~~
~~~bash
yum install paket_adi = Paket kurma
~~~
~~~bash
yum remove paket_adi = Paket silme
~~~
~~~bash
yum provides komut = Yazdığımız komutu hangi paketin sağlayacağını gösterir
~~~

---
## İNTERNET AYARI
Açılışta arayüzün otomatik başlatılması için
~~~bash
/etc/sysconfig/network-scripts/ifcfg-enp...
~~~
benzeri isme sahip olan dosyanın içindeki
~~~bash
ONBOOT
~~~
ayarı yes yapılır. Yani
~~~bash
ONBOOT=yes
~~~
olarak değiştirilir.

Tek seferlik bağlantı için ise
~~~bash
dhclient
~~~
komutunu kullanarak DHCP üzerinden IP alınabilir.

## Arayüz Kullanarak Ayar Yapma

**nmtui** aracını kullanırız.

---

## İNTERNETTEN İNDİRME YAPMA

İnternetten indirme yapmak için **wget** isimli paketi indirmemiz gerekiyor. (Bkz farklı bir program: **curl**)

~~~bash
yum install wget
~~~

Daha sonra da

~~~bash
wget http://dosyaadresi.com
~~~
şeklinde istediğimiz dosyayı indirebiliriz.

---

## TRACEROUTE SİSTEMİ

Traceroute bizim cihazımızın bir adrese gidene kadar izlediği yolları öğrenmemize yarayan komuttur.

~~~bash
traceroute 8.8.8.8
~~~

### Traceroute Çalışma Prensibi

Traceroute komutu uğranılan yerleri öğrenmek için paket ömrü (Time-to-live) sisteminden yararlanır.

Paket ömrü bir paketin kaç yönlendirme geçirebileceğinin sınırıdır. Bu sınır aşıldığında paket ölür ve öldüğü router paketi gönderen kaynağa iletilir.

Traceroute de bu Time-to-live sistemini kullanarak uğranılan yolları öğrenir.

İlk önce paketin ömrünü 1 yapar. Bu sayede paket Gateway a gelip ömrünü tamamlar ve Gateway den paketin kendisinde öldüğü bilgisi gelir.

Daha sonra TTL 2 yapılır. Bu sayede paket Gatewayden bir sonraki adreste ömrünü tamamlar. Ve aynı şekilde o adres bilgisayara iletilir.

Daha sonra TTL 3 olur ,4 olur ,5 olur ve böyle devam eder. 

Bu sayede paketin geçtiği yollar öğrenmiş olur.

TTL in olmasının bir faydası da router ler arasında oluşabilecek bir kısır dögü durumunda routerlerin sonsuza kadar boşuna birbirlerine paket iletip durmasının önüne geçerek paket belli bir aşamada ölür ve öldüğü router bilgisi bilgisayara iletilir.


---
## ZAMANLANMIŞ GÖREVLER OLUŞTURMA - DÜZENLEME
Zamanlanmış görev tanımı için **/etc/crontab** dosyasını düzenleriz.
Örnek iş tanımlaması:
~~~bash
.---------------- dakika (0 - 59)
|  .------------- saat (0 - 23)
|  |  .---------- ayın kaçıncı günü (1 - 31)
|  |  |  .------- ay (1 - 12) örn jan,feb,mar,apr ...
|  |  |  |  .---- haftanın hangi günü (0 - 6) (Pazar=0 yada 7) yada sun,mon,tue,wed,thu,fri,sat
|  |  |  |  |
*  *  *  *  * kullanıcı-adı  calisacak-komut
~~~

Burada * ların yerine vakitleri rakam olarak yazarız.
~~~bash
*
~~~
burada "HER" anlamına gelir.

Bir işin bir zaman biriminde birden çok ayrı değerde çalışması için değerler arasına virgül koyarız.

Bir birimin içinde belli periyotlarda çalışmasını istiyorsak
~~~bash
*/sayi (örn. */10)
~~~
~~~bash
@reboot kadi komut = Her başlangıçta yapılacak işlem
~~~

Saatlik, günlük yada haftalık işlemler için etc klasörünün içindeki
~~~bash
cron.hourly
cron.daily
cron.weekly
~~~
gibi dosyaları kullanabiliriz. Bu işlemler sistem boştayken yapılır, dakik olmaları gerekmeyenler için kullanılır.

İçinde oluşturacağımız dosyanın içindeki komutları çalıştıracaktır.

cron özelliğini kullanacak kullanıcılar:
~~~bash
/etc/cron.allow
~~~
dosyasında bulunur.
Bu dosya orjinalde bulunmayabilir.

Eğer cron kullanamayacakları belirlemek istiyorsak o kullanıcıları
~~~bash
/etc/cron.deny
~~~
dosyasının içine yazarak belirleyebiliriz.

Eğer /etc/cron.deny dosyasının içine **all** yazarsak tüm kullanıcıları engeller.

Herhangi bir kullanıcıdayken
~~~bash
crontab -e
~~~
komutuyla o kullanıcının görevlerini düzenleyebiliriz.

~~~bash
crontab -e -u kullanici_aci komutuyla başka kullanıcının cron unu da düzenleyebiliriz.
~~~
~~~bash
at = Belirtilen saatte tek seferliğine programlanmış görev oluşturma
~~~
~~~bash
batch = Sistemin düşük seviyede kullanıldığında yapılacak planlanmış görev oluşturma
~~~

Kullanıcıların cron ları **/var/spool/cron** dosyasında saklanır
---
## TAR KOMUTU

**tar** komutu dosyaları birleştirmeye yarar.Arşiv yapar, sıkıştırMAZ!

**c** parametresi yeni dosya oluşturur. (create)

**x** parametresi arşivi çıkarır. (extract)

**z** parametresi arşivlemeye ek olarak ve gzip sıkıştırmasını da açar. (gzip)

**j** parametresi arşivlemeye ek olarak ve bzip2 sıkıştırmasını da açar.

**t** parametresi bir arşivin içindekileri gösterir.

**a** parametresi bir arşive dosya ekler. (append)

**f** parametresi çıktı almaya yarar. Her zaman en sonda yazılır. (file)

~~~bash
tar cf cikti_dosya.tar icine_koyulacak_dosyaLAR = tar lama işlemi
~~~
~~~bash
tar xf dosya.tar  = Extract işlemi
~~~
~~~bash
tar czf dosya.tar.gz  dosya1 dosya2 ....= tar.gz yapma
~~~
~~~bash
tar xzf dosya.tar.gz  = tar.gz çıkarma
~~~
~~~bash
zcat dosya.gz = gunzip+cat işlemini çıkarma yapmadan yapmayı sağlar.
~~~
---

## STREAM DÜZENLEMESİ

**sed** ile stream düzenlemeleri yaparız.

Yani dosyaların içindeki metinleri regex kullanarak düzenleyebiliriz.

---
## SIKIŞTIRMA ALGORİTMASI
Bazı örnekler:

### Huffman Algoritması
Veri içerisinde bazı ifadelerin diğerlerine göre daha çok geçtiği varsayımıyla o ifadelere daha az bit ayırmaktan oluşur.

### LZW

### Run-lenght coding Algoritması
---

## DOSYA İSİMLERİNDE ARAMA YAPMA

**find** komutu dosyaların isimlerinde ve inodlarında arama yapar, içine bakmaz.

~~~bash
find -name isim = Dosya isimlerinde arıyor
~~~

~~~bash
find -iname isim = Büyük küçük harf önemsiz
~~~

~~~bash
find -type tur = Dosyanın türüne bakıyor. (f,d,b,c,l)
~~~

~~~bash
find / -cnewer dosya = Bulunan dosyalar bizim dosyamızdan daha yeni değiştirlme tarihine sahip olsun
~~~

~~~bash
find / -type tur = Dosyanın türüne bakıyor. (f,d,b,c,l)
~~~

~~~bash
find /home -name *pass* = /home dizininde adında pass geçen dosyaları bul
~~~

~~~bash
find / -atime +2 =  Erişimi 2 den fazla olan dosyaları bul
~~~
**-exec** = Arguman olarak yollama
---

## DOSYA İÇİNDE ARAMA YAPMA

**grep** ile dosyaların içlerinde satır bazında arama yapabiliriz.

~~~bash
grep 'aranacak kelime' aranacak_yer
~~~

**grep** de aranacak kelimede ^ sembolü satır başını belirtir.

**grep** de aranacak kelimede $ sembolü satır sonunu belirtir.

**grep** de aranacak kelimede . sembolü oraya herhangi bir şey belirtir.

**grep** de aranacak kelimede * sembolü oraya herhangi bir şey gelebileceğini de gelmeyebileceğini de belirtir.

**-v** parametresi çıktının tersini alır. Yani gösterilmesini istemediğimiz şeyi yazarız.

**-B** parametresi bulunandan önce gösterilcek satır sayısı

**-A** parametresi bulunandan sonra gösterilcek satır sayısı

**-C** parametresi bulunandan önce ve sonra gösterilcek satır sayısı

**-c** parametresi kaç satırda bulunduğunu söyler

**-n** parametresi kaçıncı satırda bulunduğunu söyler

**-w** parametresi kelimeyi bulmaya yarıyor.

**-l** parametresi arananın bulunduğu dosyaların listesini verir.

**-E** parametresi () + ? karakterlerini kullanmayı sağlar.

**-i** parametresi büyük küçük harf ayrımını kaldırır

**--** parametresi - karakterini arayabilmeyi sağlar.

**zgrep** sıkıştırılmış dosyalarda grep işlemi yapmayı sağlar.

**uniq** farklı şeyleri göstermeye yarar. Aynı şeyi birdaha göstermez.

**sort** Alfabetik sıralamaya yarar.

~~~bash
.* = O veya daha fazla herhangi bir karakter
.+ = 1 veya daha fazla herhangi bir karakter
~~~

Aranacak kelimelerin arasına **\|** koyarak or deyimi yaparız.

Aranacak kelimelerin içine **kelime(ek\|ler\|i)** koyarak or istediğimiz ekleri bulabiliriz..

REGEX de yardımcı olabilecek = http://regexr.com/
---
## XARGS (Arguman Yollama)

~~~bash
komutlar | xargs arguman_alacak_komut = arguman_alacak_komut'a komutlar'ın listesini arguman olarak gönderir.
~~~
---

## BASH SCRIPT

Yazdığımız komut dosyasını
~~~bash
sh dosya.sh
~~~
yazarak çalıştırabilriiz.

Ya da:
~~~bash
chmod +x
~~~
komutu ile çalıştırılabilirlik özelliği ekleriz.

Ya da:
~~~bash
. dosya.sh
~~~
yazarak çalıştırabiliriz.

Dosyanın sadece ismini yazarak çalıştırmak istiyorsak o dosyanın adresini PATH'e ekleriz.
~~~bash
PATH=$PATH:/home/kull/dosyanınBulunduğuDizin
~~~

Matematik işlemleri yapmak için **let** komutunu kullanırız.
---
## SUNUCU İŞLEMLERİ

Apache'yi kur.
~~~bash
yum install httpd
~~~
Selinux'u geçici olarak kapat(yeniden başlangıçta otomatik tekrar açılır):
~~~bash
setenfoce 0
~~~
Bir önceki komutu kontrol et:
~~~bash
getenfoce
~~~
~~~bash
iptables -F
~~~
~~~bash
systemctl start httpd.service
~~~
~~~bash
systemctl stop httpd.service
~~~
~~~bash
systemctl reload httpd.service
~~~
~~~bash
systemctl restart httpd.service
~~~
~~~bash
systemctl list- (devamında gelen şeylerle raporlar sunar)
~~~
~~~bash
systemctl disable httpd.service
~~~
~~~bash
systemctl stop sshd.service
~~~
~~~bash
systemctl  httpd.service
~~~
---

## SANAL MAKİNE İNTERNET BAĞLANTI SEÇENEKLERİ

### NAT
Network Adress Translation = Ağ Adres Dönüştürücü

Ana bilgisayarımız sanal makine ile access point arasına girerek gerekli dönüşümleri ve atamaları yaparak sanal makinemizin internetini kendisinin internetiymiş gibi gösterir. Bu yöntemde ana bilgisayarın ip si ile sanal makinenin ip si aynıdır. Access point kendisine 1 cihazın bağlandığını zanneder.

NAT 2 ye ayrılır.

#### SNAT = Source NAT

Routerin kendine bağlı cihazın isteğini kendi isteğiymiş gibi görünmesini sağlama işlemidir.
Yani Router in Ip si 15.20.25.30
Yerel Cihaz Ip si 192.168.1.25 ise
Yerel Cihaz'ın dışarıya bağlantı kurarken 15.20.25.30 gibi çıkmasını sağlar.

#### DNAT = Destination NAT

DNAT ise SNAT ın ters yönlü işlemidir. Ağ geçidine (gateway) gelen isteği ilgili cihaza yönlendirir.

### BRIDGE

Bilgisayarımız sanal makine ile access point arasında sadece köprü vazifesi görür. Herhangi bir dönüşüm vs. yapmaz, ethernet kartını sanal makinenin de sanki ayrı bir cihazmış gibi kullanmasını sağlar. Access point de sanal makineye de ana makineye de farklı ip ler atar , çünkü kendisine 2 ayrı cihazın bağlandığını zanneder.

### IP Adresi

IP Adresi 4 adet 8 bitlik kısımdan oluşur.
4*8 = 32 olduğu için IP adresleri 0 dan 2^32 olan sayılardır.
Yani 0 ile (2^32) arasındaki tüm sayılar birer IP adresidir.

Ancak bu sayılar karmaşık gelebilir diye noktalı gösterim kullanılmaya başlanılmıştır.

Her nokta arası 8 bitlik sayılar olacağından 2^8 yani 256 tane rakamdan biri olabilir.
Ancak 0 dan başladığı için 255 e kadardır.

Yani bir ip 0.0.0.0 ile 255.255.255.255 arasındaki sayılardır.

### NETMASK

32 Bitlik bir sayıda Netmask sayısı kadar başta 1 bulunur gerisi 0 dır.
Yani 16 ise 11111111111111110000000000000000 dir.

IP Adresiyle Netmask in AND (çarpma) işlemine tabii tutulmasıyla Network adresi elde edilir.

Network adresinin Netmask ile elde edilen sondaki 0 larını 1 yaparsak da Broadcast adresini elde ederiz.

---

## DNS

DNS = Domain Name Server

~~~bash
dig @sorguipsi domain.adi.com
~~~

---

## UZAK SUNUCU BAĞLANTISI - SSH

ssh = Secure shell

Bağlantı yapmak için
~~~bash
ssh kull_adi@sunucu_adresi
~~~
komutunu gireriz.

~~~bash
ssh kull_adi@sunucu_adresi -p PORT
~~~
istenilen port numarasından SSH bağlantısı açmayı dener.

Kendimizi doğrulanmış olarak eklemek için
~~~bash
ssh-copy-id kull_adi@sunucu_adresi
~~~
**wall** komutuyla karşı tarafa birşeyler yazdırabiliriz.

komutunu kullanırız.

### ssh Ayarları 

ssh Ayarlarının dosyası **/etc/ssh/sshd_config**

Port numarasını değiştirebiliriz.

PasswordAutentication u **no** yaparsak daha önce doğrulanamayan kimse parola olsa dahi bağlanamaz.

---

## rsync - Senkronizasyon

Güvenli ve akıllı veri senkronizasyonu yapmayı sağlar.
~~~bash
rsync -secenekler kaynak hedef
~~~
şeklinde kullanılır.

Bir de **scp** (Secure CoPy) var. Kullanımı rsync ile aynıdır.

**rsync** Senkronizasyon yaparken **scp**  kopyalama yapar.

Yani rsync değiştirilmemiş dosyaları aktarmazken scp baştan sonra ne var ne yoksa kopyalar.
---
## DİĞER - EXTRA

~~~bash
gzip = Sıkıştırma
~~~
~~~bash
history = O zaman kadar girilen komutları listeler
~~~
~~~bash
history -c = Eski kaydedilen komutları temizler
~~~
~~~bash
cat >> dosya << kelime = dosya ya yazdıklarımızı belirlediğimiz kelime gelene kadar olanları kaydeder
~~~
~~~bash
dhclient = İnternete bağlanma
~~~
~~~bash
>/dev/null = Çıktıyı silme
~~~
~~~bash
2>/dev/null = Hatayı silme
~~~
~~~bash
> = Dosyaya yaz
~~~
~~~bash
>> = Dosyanın sonuna ekle
~~~
~~~bash
gcc vs. yükeleme = yum group install "Development Tools"
~~~
~~~bash
nano yükleme = yum install nano
~~~
~~~bash
ll = ls -l (Alias)
~~~
~~~bash
yum group list = Grup Listesini çekme
~~~
~~~bash
yum group install "Development Tools" = gcc filen yükleme
~~~
~~~bash
yum install lynx = LYNX Tarayıcı !!!!!!!!!!!!! Başlatmak için lynx komutunu kullanırız.
~~~
~~~bash
startx = DESKTOP Başlatma
~~~
~~~bash
locate = Dosya arama
~~~
~~~bash
updatedb = Veritabanı güncelleme
~~~
~~~bash
env = Çevre Değişkenlerini gösterir
~~~
~~~bash
env DEGISKEN=yenideger calisacak-komut Komutuyla çevre değişkenkerinin değerini değiştirebiliriz. Bir seferliğine böyle çalışacaktır.
~~~
~~~bash
tac = Son satırdan başlayarak ilk satıra giderek gösterir. cat ın tersi.
~~~

**df** komutu seçili dosya sisteminin kullanım oranlarını gösterir.

Bir komutun başına **\** koyarsak aliaslarını iptal etmiş halini kullanırız.

~~~bash
chsh = Varsayılan shell adresini değiştirme
~~~

~~~bash
chfn = Kullanıcı kontakt bilgilerini düzenleme
~~~

~~~bash
visudo = Sudo yapacak kullanıcı ayarları
~~~
~~~bash
dmesg = Çekirdek mesajlarını görüntülemeye yarar.
~~~

---
