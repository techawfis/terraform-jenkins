#!/bin/bash
sudo yum update –y
# sudo amazon-linux-extras install java-openjdk11 -y
sudo dnf install java-17-amazon-corretto -y
java -version
readlink -f $(which java)
echo 'export JAVA_HOME=/usr/lib/jvm/java-17-amazon-corretto' >> ~/.bashrc
echo 'export PATH=$JAVA_HOME/bin:$PATH' >> ~/.bashrc
source ~/.bashrc
echo $JAVA_HOME
cd /opt/
sudo wget https://dlcdn.apache.org/tomcat/tomcat-11/v11.0.12/bin/apache-tomcat-11.0.12.tar.gz
ls
sudo tar -xzvf apache-tomcat-11.0.12.tar.gz
ls
sudo mv apache-tomcat-11.0.12 tomcat11
sudo chown ec2-user:ec2-user tomcat11/ -R
cd tomcat11/bin/
./startup.sh
