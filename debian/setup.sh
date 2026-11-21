apt update
apt upgrade -y
apt install -y micro lynis git curl wget rsync
sh -c "$(wget -O- https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
lynis audit system --cronjob --logfile /var/log/lynis/lynis-$(date +%F).log --report-file /var/log/lynis-report-$(date +%F).dat
print "Setup complete. Serah Camacho, 2026. Questions? Contact me at serah@serah.tech"
