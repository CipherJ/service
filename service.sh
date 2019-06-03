echo "Enter your service name"
read "Name"
echo "after"
read "service"
echo "ExecStart"


echo "service $Name start" >> /usr/local/bin/$Name.sh

echo "[Unit]
After=$service.service

[Service]
ExecStart=/usr/local/bin/$Name.sh

[Install]
WantedBy=default.target" >> /etc/systemd/system/$Name.service