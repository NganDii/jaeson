chmod +x ngrok 
cp -R ngrok ~/
cd ~
rm -rf ngrokold
echo " Enter your ngrok token: "
read -r token
$token
echo
echo
echo "Do you want to test your ngrok (Y/N): "
read -r choice
if [[ $choice == "y" || $choice == "Y" ]]; then
echo "Enter any 4 digit port number to test: "
read -r port
./ngrok http $port
else
exit 1
fi
