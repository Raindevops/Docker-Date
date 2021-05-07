# Load source image from official docker registry
FROM ubuntu:16.04

#Install apache on ubuntu
RUN apt-get update 
RUN apt-get install -y apache2 && apt-get clean

#Add configuration in apache conf file
RUN echo "ServerName localhost" >> /etc/apache2/apache2.conf

#Set the working directory
WORKDIR /var/www/html

#Copy files in the working directory
COPY style.css .

COPY date.sh .

# On containter run, start apache and run custom script
ENTRYPOINT apache2ctl -k start && sh /var/www/html/date.sh

# Expose default apache port for mapping
EXPOSE 80