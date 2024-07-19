FiveM Anti-Stopper
FiveM Anti-Stopper sunucularınızın güvenliğini ve stabilitesini artırmak için geliştirilmiş bir script'tir. Bu script, belirlediğiniz kritik kaynakların kapatılmasını engeller ve kapatılma girişimlerinde sizi anında bilgilendirir.

Özellikler
Koruma: Belirlediğiniz kaynakların durdurulmasını engeller.
Otomatik Yeniden Başlatma: Kapatılmaya çalışılan kaynakları otomatik olarak yeniden başlatır.
Discord Bildirimleri: Kaynak kapatma girişimlerinde Discord üzerinden bildirim almanızı sağlar (isteğe bağlı).
Kolay Kurulum ve Kullanım: Basit yapılandırma ile hemen kullanmaya başlayabilirsiniz.
Kurulum
Bu repository'yi indirin veya klonlayın.
antistopper_server.lua dosyasını resources klasörünüze ekleyin.
server.cfg dosyanıza start antistopper satırını ekleyin.
Koruma altına almak istediğiniz kaynakları antistopper.lua dosyasına ekleyin.
Kullanım
Discord Webhook: Discord bildirimlerini kullanmak için antistopper_server.lua dosyasındaki webhookURL değişkenine kendi Discord Webhook URL'nizi ekleyin.
Kaynak Listesi: Koruma altına almak istediğiniz kaynakların adlarını antistopper.lua dosyasındaki protectedResources tablosuna ekleyin.
