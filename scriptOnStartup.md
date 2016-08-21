//http://www.instructables.com/id/Raspberry-Pi-Launch-Python-script-on-startup/?ALLSTEPS

.sh kodu yazıldıktan sonra, script çalıştırılabilir hale getirilir.

$sudo chmod 755 buraklauncher.sh

deneme yapılır,

$sudo sh buraklauncher.sh

crontab kullanılır.

$sudo crontab -e

açılan dosyaya bu kısım eklenir,

$@reboot sh /home/pi/Desktop/buraklauncher.sh >/home/pi/Desktop/logs/cronlog 2>&1
