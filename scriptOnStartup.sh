#buraklauncher.sh
sudo ifconfig wlan0 up
sleep 5

cd /
cd home/pi/Desktop/Denemeler
sudo python proximityToFirebase.py
cd /
