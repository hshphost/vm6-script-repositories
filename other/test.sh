if [ -f /etc/redhat-release ]; then
	yum update -y;
	yum install sudo -y;
	yum install wget -y;
	yum install curl -y;
else
	apt update -y;
	apt install sudo -y;
	apt install wget -y;
	apt install curl -y;
fi
