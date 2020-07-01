FROM debian:10 
RUN apt-get update && apt-get install -y wget apt-transport-https gnupg2 openjdk-11-jre-headless
RUN wget -qO - https://artifacts.elastic.co/GPG-KEY-elasticsearch | apt-key add -
RUN echo "deb https://artifacts.elastic.co/packages/7.x/apt stable main" | tee -a /etc/apt/sources.list.d/elastic-7.x.list
RUN apt-get update && apt-get install -y logstash 

