bash

sudo chown -R hduser082:hadoop /app/hadoop/tmp
sudo chown -R hduser082:hadoop /usr/local/hadoop_store
sudo chown -R hduser082:hadoop /usr/local/hadoop
sudo chmod -R 777 /app/hadoop/tmp
sudo chmod -R 777 /usr/local/hadoop_store
sudo chmod -R 777 /usr/local/hadoop

start-all.sh
jps
