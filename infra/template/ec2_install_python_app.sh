#! /bin/bash
# shellcheck disable=SC2164
cd /home/ubuntu
yes | sudo apt update
yes | sudo apt install python3 python3-pip
git clone https://github.com/vishnumohanan404/devops-p1-python-app.git
sleep 30
# shellcheck disable=SC2164
cd devops-p1-python-app
echo 'Install requirements'
pip3 install -r requirements.txt
# Update application code with RDS endpoint (using environment variable)
echo "RDS endpoint: ${rds_endpoint}"
export RDS_HOST=${rds_endpoint}
echo 'Waiting for 30 seconds before running the app.py'
sleep 40
setsid python3 -u app.py &