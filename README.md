[![License](https://img.shields.io/badge/License-Apache%202.0-blue.svg)](LICENSE)
[![Platform](https://img.shields.io/badge/Platform-Windows-lightgrey.svg)](https://www.microsoft.com/windows)
[![Downloads](https://img.shields.io/github/downloads/DrowBlack/VoidDpi/total.svg)](https://github.com/DrowBlack/VoidDpi/releases/)

# SplitWire-Turkey Hakkında Önemli Not (29.07.2025)

> [!IMPORTANT]
> Bazı kullanıcılar Discord'a erişmekte veya diğer web sitelerindeki bazı içeriklerin yüklenmemesi hakkında geri bildirimde bulunduğundan farklı metotlarla ancak aynı işlev ile çalışan **[SplitWire-Turkey](https://github.com/cagritaskn/SplitWire-Turkey)** uygulamasını yayınlandı. VoidDPI'ı kaldırdıktan sonra (VoidDPI ı açtıktan sonra 4 ü tuşlayarak kapattıktan sonra dosyaları silmeniz yeterli.) **[bu aracı](https://github.com/cagritaskn/SplitWire-Turkey)** kullanmayı deneyebilirsiniz.

# Kaspersky Antivirüsü Hakkında Önemli Not (13.01.2025)

> [!CAUTION]
> Kaspersky isimli antivirüs yazılımı Rus hükümetiyle olan anlaşmasından dolayı VoidDPI'ın çalışmasına engel olmaktadır. Kaspersky isimli yazılımı kullanıyorsanız, kullandıysanız veya devre dışı halde bile olsa bilgisayarınızda bulunuyorsa lütfen tamamen kaldırın. Bunu yapmadığınız taktirde VoidDPI çok yüksek ihtimalle çalışmayacaktır. Kaspersky yerine alternatif antivirüs yazılımları tercih edebilir ya da Windows Defender kullanabilirsiniz. (Windows Defender 2025 yılı itibariyle kötü amaçlı yazılım ve siteleri engellemekte son derece yeterlidir.)
Kaspersky'i VoidDPI ZIP dosyasının indirme işlemi sırasında devre dışı bırakmanız, indirdikten sonra dışlamalara eklemeniz veya devre dışı bırakmanız sorunu çözmeyecektir. VoidDPI'ı doğru şekilde kullanabilmek için Kaspersky isimli antivirüs yazılımından bir şekilde kurtulmalısınız.

## Özet​

Bu proje Discord ve diğer engelli site ve uygulamalara VPN'siz ve internet hızında yavaşlama olmadan girmek için GoodbyeDpi-Turkey'ın düzenlenmiş bir versiyonudur.

## VoidDPI — Derin Paket İnceleme (DPI) atlatma aracı (Türkiye versiyonu)

Bu uygulama, Türkiye'de bazı internet servis sağlayıcılarının DNS değişikliğine izin vermemesi sebebiyle, bu durumu bertaraf etmek için asıl proje olan [GoodbyeDPI](https://github.com/ValdikSS/GoodbyeDPI)'ın düzenlenmiş bir versiyonudur.
Bu yazılım, birçok ISS'da (İnternet Servis Sağlayıcısı) bulunan ve belirli web sitelerine erişimi engelleyen "Derin Paket İnceleme" (DPI) sistemlerini atlatmak için tasarlanmıştır.
Optik ayırıcı veya port yansıtma (Pasif DPI) kullanarak bağlanan ve herhangi bir veriyi engellemeyen, ancak istenen hedeften daha hızlı yanıt veren DPI'yi ve sıralı olarak bağlanan Aktif DPI'yi işler. Bu uygulama kesinlikle bir VPN değildir ve oyunlarda/genel internet kullanımında bir hız değişikliğine sebep olmayacaktır.

> [!NOTE]
> Windows 7, 8, 8.1, 10 veya 11 işletim sistemlerinde **yönetici olarak çalıştırmanız** mecburidir.

## Virüs & Veri Sızıntısı & Bitcoin Mining

Program açık kaynak kodlu olduğundan tüm kodu görüp inceleyebilirsiniz. Bazı kullanıcılar VirusTotal'de false positive bildirimi yapsa da bu ``WinDivert.dll`` ve ``WinDivert64.sys`` dosyalarının fonksiyonlarından dolayı bu şekilde yanlış bir sonuç verebiliyor (bu dosyalar sistemi etkiler). Bu .dll ve .sys dosyaları da açık kaynak kodludur ve incelenebilir, yani tamamen temizdir. İstemeyen ve güvenmeyen kullanıcılar kullanmak zorunda değildir, herkesin kendi seçimidir.
Dilerseniz tüm klasörü ya da .zip dosyasını [VirusTotal](https://www.virustotal.com/gui/home/upload) gibi bir sitede taratıp sonuçları inceleyebilirsiniz.
> [!NOTE]
> **[VirusTotal sonuçlarında](https://www.virustotal.com/gui/file/3ca863444ce065361b1152e1dddae1147962fc78b90c17ff346efbb35bd146ee)** 73 adet antivirüs progamı içerisinde (bağlantıyla yönlendirileceğiniz sayfada 66 adet antivirüs programı bulunmakta çünkü bazıları ``.zip`` dosyalarını online taramayı desteklememekte) yalnızca Kaspersky isimli uygulama bu yazılımın zararlı olduğunu söylemektedir ancak bu hatalı bir uyarıdır (yukarıdaki uyarıyı okuyunuz). **Dolayısıyla Kaspersky kullanıyorsanız ya devre dışı bırakmanız ya da antivirüs programınızı değiştirmeniz önerilir.**

> [!IMPORTANT]
> WinDivert dosyalarının açıklamalarında ya da silmeye çalışırken karşılaşacağınız Bitcoin adresi sizi korkutmasın.
WinDivert açık kaynaklı bir Windows Paket İnceleme-Değiştirme aracı kütüphanesidir. Bu kütüphanenin sahibi [basil00](https://github.com/basil00) isminde bir geliştiricidir. Bu geliştirici tamamen ücretsiz ve açık kaynak kodlu şekilde bu kütüphaneyi [Github - Windivert](https://github.com/basil00/WinDivert) isimli Github repository'sinde paylaşmaktadır.
Bu geliştirici tamamen ücretsiz şekilde yayınladığı bu kütüphaneden hiçbir gelir elde etmemekte ancak kendisine gelecek bağışları da kabul etmektedir. Bağış yapılacak adres ise .dll ve .sys dosyalarının açıklamalarında bulunuyor. Yani gördüğünüz Bitcoin yazısı ve yanındaki karmaşık sayılar ve harflerden oluşan adres WinDivert kütüphanesinin geliştiricisi olan basil00'a ait bağış yapabileceğiniz **Bitcoin cüzdan adresidir.** Bu adresi resmi sitesinde de paylaşıyor, [bu da bağış sayfasının linki](https://reqrypt.org/donate.html).

## VoidDPI'ı Kullanmak

VoidDPI'ın fork'unu kullanmak son derece kolaydır:

- VoidDPI'ın bütün dosyalarını bilgisayarınıza kurduktan sonra StartVoidDpi.cmd dosyasını açıp izin vermeniz yeterlidir.
- Program açıldıktan sonra 1 i tuşlayarak kolaylıkla başlatabilirsiniz bir kere başlattıktan sonra arkaplanda sürekli çalışır bilgisayar başlangıcında otomatik çalışma şeçeneği bulunmamaktadır.
- VoidDPI'ı kapatmak için tekrardan StartVoidDpi.cmd dosyasını açtıktan sonra 4 ü tuşlayarak evet demeniz yeterlidir bu işlem arkaplanda çalışan bütün voiddpi işlemlerini durduracaktır.

> [!NOTE]
VoidDPI'ın başlangıçta otomatik başlatma özelliği veya bir hizmet özelliği bulunmamaktadır her bilgisayarı kapatıp açtığınızda kendiniz tekrardan açmanız gerekmektedir.

## Sık Karşılaşılan Sorunlar

- WinDivert dosyaları bulunamadı hatası (Yalancı virüs algılaması):
WinDivert dosyaları bulunamadı hatası alıyorsanız antivirüs programınıza ayıkladığınız klasörü dışlama/istisna olarak ekleyin. Windows Defender kullanıyorsanız [buradaki rehberi](https://support.microsoft.com/tr-tr/windows/windows-g%C3%BCvenli%C4%9Fi-ne-d%C4%B1%C5%9Flama-ekleme-811816c0-4dfd-af4a-47e4-c301afe13b26) (Kaspersky antivirüs programı için [buradaki rehberi](https://support.kaspersky.com/ksos/8.5/tr-TR/227390.htm)) takip ederek "goodbyedpi-0.2.3rc3-turkey" klasörünü dışlamalara ekleyebilirsiniz. Ancak dışlamalara eklemek sorununuzu çözmeyebilir. Bu durumda Kaspersky isimli programı sisteminizden tamamen kaldırıp ardından GoodbyeDPI-Turkey'in kurulumunu tekrar gerçekleştirmeniz gerekebilir.

- Hizmetin başlatmaya çalışıldığında "Dosya yolu bulunamadı" hatası:
Bu hata indirdiğiniz .zip klasörünü çıkardığınız konumdan farklı bir konuma taşımanız halinde ya da bazı dosyaları silmeniz halinde ortaya çıkar. Bu durumda [goodbyedpi-0.2.3rc3-turkey.zip](https://github.com/cagritaskn/GoodbyeDPI-Turkey/releases/download/release-0.2.3rc3-turkey/goodbyedpi-0.2.3rc3-turkey.zip) dosyasını tekrar bilgisayarınızda bir konuma çıkararak öncelikle service_remove.cmd dosyasını yönetici olarak çalıştırdıktan sonra seçeceğiniz diğer .cmd dosyasını tekrar çalıştırarak bu sorunu çözebilirsiniz.

- Bazı sitelerin yavaş açılması/açılmaması sorunu:
Bu sorunu komut dosyalarında TTL ayarı bulunan yöntemlerde yaşayabilirsiniz. Şuanki sürümde bir çözüm yolu yoktur orjinal GoodbyeDPI veya VPN Kullanmayı deneyebilirsiniz.

- Discord'a web üzerinden giriş yapabilmeye rağmen uygulamanın açılmaması sorunu:
Bu sorun genellikle fiber tarife kullanıcılarının karşılaştığı bir sorun ve maalesef kesin bir çözüm yolu yok. Ancak yine de bu çözüm yolunu deneyebilirsiniz: **[WinDivertTool.exe](https://github.com/basil00/WinDivertTool/releases/download/v2.2.0/WinDivertTool.exe)** isimli WinDivert tanı aracını indirip çalıştırdıktan sonra konsol penceresinin en altında yer alan listede hangi uygulamaların WinDivert kullanarak çalıştığını görebilirsiniz. Bu listede birden fazla uygulama var ise ilgili satırlarda bulunan konuma giderek söz konusu uygulamayı veya uygulamaları siliniz. Yalnızca en son kurduğunuz konumdaki WinDivert kütüphanesini kullanan uygulamayı silmeyiniz. Ardından bilgisayarınızı yeniden başlatarak doğru şekilde çalışıp çalışmadığını deneyebilirsiniz. 

- Ethernet bağlantısı sorunu: 
İnternet bağlantınızı ethernet adaptörü aracılığı ile sağlıyorsanız ve VoidDPI'ı çalıştaramadıysanız **harmanprecious** isimli kullanıcıya ait çözüm rehberine **[bu adresten](https://www.technopat.net/sosyal/konu/goodbyedpi-ethernet-kartiyla-calismiyorsa-ne-yapilmali.3619948/)** adresinden ulaşabilirsiniz.

## SuperOnline Alternatif Yöntemler

Eğer SuperOnline Fiber kullanıyorsanız ve "Discord update failed - retrying in ** seconds" hatası alıyorsanız Orjinal GoodbyeDPI sürümünü kullanmanız gerekmektedir şuanki VoidDPI destek sağlamamaktadır.

### 3- VoidDPI ile Benzer Programlar

SecureDNSClient veya Zapret isimli programları da deneyebilirsiniz. (Ben denemedim ama ufak bir araştırma ile kullanımını anlatan birilerini bulabilirsiniz.)

## Yasal Uyarı
>
> [!IMPORTANT]
> Bu uygulamanın kullanımından doğan her türlü yasal sorumluluk kullanan kişiye aittir. Uygulama yalnızca eğitim ve araştırma amaçları ile yazılmış ve düzenlenmiş olup; bu uygulamayı bu şartlar altında kullanmak ya da kullanmamak kullanıcının kendi seçimidir. Açık kaynak kodlarının paylaşıldığı bu platformdaki düzenlenmiş bu proje, bilgi paylaşımı ve kodlama eğitimi amaçları ile yazılmış ve düzenlenmiştir.
