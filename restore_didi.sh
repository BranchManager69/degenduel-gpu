#\!/bin/bash
# Quick restoration script
mkdir -p /home/ubuntu/didi
cp /home/ubuntu/degenduel-gpu/*.md /home/ubuntu/didi/
cp -r /home/ubuntu/degenduel-gpu/scripts /home/ubuntu/didi/
cp /home/ubuntu/degenduel-gpu/didi.sh /home/ubuntu/didi/
cp /home/ubuntu/degenduel-gpu/config.py /home/ubuntu/didi/
cp /home/ubuntu/degenduel-gpu/docker-compose.yml /home/ubuntu/didi/
cp /home/ubuntu/degenduel-gpu/Dockerfile /home/ubuntu/didi/
chmod +x /home/ubuntu/didi/didi.sh
chmod +x /home/ubuntu/didi/scripts/*.py
cd /home/ubuntu/didi
./didi.sh status
echo 'Didi restored successfully\!'
