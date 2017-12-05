#FROM resin/rpi-raspbian:jessie
FROM arm32v7/node
MAINTAINER palanisamyparam974@students.itu.edu

# Enable EPEL for Node.js
#RUN rpm -Uvh http://download.fedoraproject.org/pub/epel/6/i386/epel-release-6-8.noarch.rpm
#RUN curl -sL https://deb.nodesource.com/setup_8.x | sudo -E bash - && apt install nodejs
# Install Node...
#RUN apt-get install -y npm

# Copy app to /src
COPY . /src

# Install app and dependencies into /src
RUN cd /src; npm install

EXPOSE 80

CMD cd /src && node ./app.js