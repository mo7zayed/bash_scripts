## Create the file with your scripts
```bash
echo "cd /home/ubuntu/aqary-web && ./vendor/bin/sail up -d" > start.sh
```

## Create the service file
```bash
sudo nano /etc/systemd/system/on-start.service
```
Add the content below
```service
[Unit]
After=network.target

[Service]
ExecStart=/home/ubuntu/start.sh

[Install]
WantedBy=default.target
```

## Set appropriate permissions for both, the Systemd service unit and script:
```bash
sudo chmod 744 /home/ubuntu/start.sh
sudo chmod 664 /etc/systemd/system/on-start.service
```

## Next, enable the service unit:
```bash
sudo systemctl daemon-reload
sudo systemctl enable on-start.service
```
