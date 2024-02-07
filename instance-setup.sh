sudo yum update -y
sudo yum -y install docker git
sudo service docker start
sudo usermod -a -G docker ec2-user
