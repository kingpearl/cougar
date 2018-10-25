FROM ubuntu:18.04
RUN mkdir -p /var/tmp && cd /var/tmp/

ENV ME=$(whoami)
ENV PKG=profile
# RUN locale-gen en_US.UTF-8

RUN echo "Apt update"
RUN apt-get update

ENV PKG=curl
RUN echo "Apt install Curl"
RUN apt-get -y install $PKG

ENV PKG=git
RUN echo "Apt install Git"
RUN apt-get -y install $PKG

# Set permissions
# ENV PKG=permissions
# RUN echo "Set $PKG"
# RUN ["/bin/bash", "-c", "chmod g+rwx /usr/local/{.,bin,etc,include,lib,sbin,share,src,share/man}"]
# RUN ["/bin/bash", "-c", "chgrp $ME /usr/local/{.,bin,etc,include,lib,sbin,share,src,share/man}"]
# RUN chmod 700 ~/.ssh
# RUN chmod 600 ~/.ssh/*

# Create workspace
ENV PKG=workspace
RUN echo "Create $PKG"
RUN ["/bin/bash", "-c", "mkdir -p ~/.vim/{backups,bundle,swaps,undo}"]

RUN echo "Apt upgrade"
RUN apt-get -y upgrade

ENV PKG=make-gcc-ssl
RUN echo "Apt install Make & GCC & SSL"
RUN apt-get -y install build-essential libssl-dev

ENV PKG=python
RUN echo "Apt install Python"
RUN apt-get -y install $PKG

# ENV PKG=unzip
# RUN echo "Apt install unzip"
# RUN apt-get -y install $PKG

# ENV PKG=p7zip-full
# RUN echo "Apt install 7Z"
# RUN apt-get -y install $PKG

# ENV PKG=openjdk-8-jdk
# RUN echo "Apt install OpenJDK"
# RUN apt-get -y install $PKG

# ENV PKG=silversearcher-ag
# RUN echo "Apt install The Silver Searcher"
# RUN apt-get -y install $PKG

# ENV PKG=jsduck
# RUN echo "Gem install JsDuck"
# RUN gem install $PKG

# ENV PKG=git-extras
# RUN echo "Install $PKG"
# RUN mkdir -p $PKG && curl -sL https://github.com/visionmedia/$PKG/archive/master.tar.gz | tar -xz --strip 1 -C $PKG && cd $PKG && make install && cd ../ && rm -fR $PKG

# ENV PKG=git-flow
# RUN echo "Apt install Git Flow"
# RUN apt-get -y install $PKG

# ENV PKG=jpegoptim
# RUN echo "Apt install Jpegoptim"
# RUN apt-get -y install $PKG

# ENV PKG=optipng
# RUN echo "Apt install OptiPNG"
# RUN apt-get -y install $PKG

# ENV PKG=phantomjs-2.1.1-linux-x86_64
# RUN echo "Install $PKG"
# RUN mkdir -p $PKG && curl -sL https://bitbucket.org/ariya/phantomjs/downloads/$PKG.tar.bz2 | tar -xj --strip 1 -C $PKG && cd $PKG && cp -pR bin/* /usr/local/bin/ && cd ../ && rm -fR $PKG

# ENV PKG=burl
# RUN echo "Install $PKG"
# RUN mkdir -p $PKG && curl -sL https://github.com/visionmedia/$PKG/archive/master.tar.gz | tar -xz --strip 1 -C $PKG && cd $PKG && make install && cd ../ && rm -fR $PKG

# ENV PKG=clib
# RUN echo "Install $PKG"
# RUN apt-get -y install libcurl4-gnutls-dev
# RUN mkdir -p $PKG && curl -sL https://github.com/clibs/$PKG/archive/master.tar.gz | tar -xz --strip 1 -C $PKG && cd $PKG && make install && cd ../ && rm -fR $PKG

ENV VER=v10.12.0
ENV PKG=node-$VER-linux-x64
RUN echo "Install Node"
RUN ["/bin/bash", "-c", "mkdir -p node && curl -sL https://nodejs.org/dist/$VER/$PKG.tar.gz | tar -xz --strip 1 -C node && cd node && cp -R {bin,lib,share} /usr/local/ && cd ../ && rm -fR node"]

# RUN echo "Update NPM"
# RUN npm install -g npm

# ENV PKG=yarn
# RUN echo "NPM install Yarn"
# RUN npm install -g $PKG

# ENV PKG=bower
# RUN echo "NPM install Bower"
# RUN npm install -g $PKG

# ENV PKG=duo
# RUN if [ ! -f .installed-$PKG ];
# RUN then
# RUN echo "NPM install Duo"
# RUN npm install -g $PKG

# ENV PKG=browserify
# RUN echo "NPM install Browserify"
# RUN npm install -g $PKG

# ENV PKG=webpack
# RUN echo "NPM install $PKG"
# RUN npm install -g $PKG

# ENV PKG=typescript
# RUN echo "NPM install TypeScript"
# RUN npm install -g $PKG

# ENV PKG=grunt-cli
# RUN echo "NPM install Grunt"
# RUN npm install -g $PKG

# ENV PKG=gulp
# RUN echo "NPM install Gulp"
# RUN npm install -g $PKG

# ENV PKG=yo
# RUN echo "NPM install Yeoman"
# RUN npm install -g $PKG

# ENV PKG=create-react-app
# RUN echo "NPM install Create React App"
# RUN npm install -g $PKG

# ENV PKG=create-react-native-app
# RUN echo "NPM install Create React Native App"
# RUN npm install -g $PKG

# ENV PKG=react-native-cli
# RUN echo "NPM install React Native CLI"
# RUN npm install -g $PKG

# ENV PKG=react-vr-cli
# RUN echo "NPM install React VR CLI"
# RUN npm install -g $PKG

# ENV PKG=cordova
# RUN echo "NPM install Cordova"
# RUN npm install -g $PKG

# ENV PKG=ionic
# RUN echo "NPM install Ionic"
# RUN npm install -g $PKG

# ENV VER=v4.9.0
# ENV PKG=watchman
# RUN echo "Install Watchman"
# RUN apt-get -y install autoconf automake && curl -sL https://github.com/facebook/$PKG/archive/$ver.tar.gz | tar -xz --strip 1 -C $PKG && cd $PKG && ./autogen.sh && ./configure && make && make install && cd ../ && rm -fR $PKG

# ENV PKG=go1.11.linux-amd64
# RUN echo "Install Go"
# RUN mkdir -p go && curl -sL https://storage.googleapis.com/golang/$PKG.tar.gz | tar -xz --strip 1 -C go && cp -R go /usr/local/ && rm -fR go

# ENV PKG=docker
# RUN echo "Install Docker"
# RUN apt-get update
# RUN apt-get install -y linux-image-extra-$(uname -r) linux-image-extra-virtual
# RUN apt-get update
# RUN apt-get install -y apt-transport-https ca-certificates curl software-properties-common
# RUN curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
# RUN apt-key fingerprint 0EBFCD88
# RUN add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable"
# RUN apt-get update
# RUN apt-get install $PKG-ce

# ENV PKG=mongodb-linux-x86_64-4.0.3
# RUN echo "Install MongoDB"
# RUN mkdir -p mongo && curl -sL http://fastdl.mongodb.org/linux/$PKG.tgz | tar -xz --strip 1 -C mongo && cd mongo && cp -R bin /usr/local/ && mkdir -p /var/lib/mongo && cd ../ && rm -fR mongo

# ENV PKG=postgresql-10
# RUN echo "Install PostgreSQL"
# RUN touch /etc/apt/sources.list.d/pgdg.list && echo "deb http://apt.postgresql.org/pub/repos/apt/ artful-pgdg main" | tee -a /etc/apt/sources.list.d/pgdg.list
# RUN wget --quiet -O - https://www.postgresql.org/media/keys/ACCC4CF8.asc | apt-key add -
# RUN apt-get update
# RUN apt-get -y install $PKG postgresql-contrib-10
# RUN psql --command "CREATE USER postgres WITH SUPERUSER PASSWORD 'postgres';"
# RUN createdb -O pearl pearl
# RUN psql pearl --command 'CREATE EXTENSION "pgcrypto";'

# ENV PKG=redis-5.0.0
# RUN echo "Install Redis"
# RUN mkdir -p redis && curl -sL http://download.redis.io/releases/$PKG.tar.gz | tar -xz --strip 1 -C redis && cd redis && make && make install && cd ../ && mkdir -p /var/lib/redis && rm -fR redis

# ENV PKG=consul
# RUN echo "Install Consul"
# RUN curl -sL https://releases.hashicorp.com/consul/0.7.0/consul_0.7.0_linux_amd64.zip > $PKG.zip && unzip $PKG.zip && rm $PKG.zip && cp -R $PKG /usr/local/bin/

# ENV PKG=weave
# RUN echo "Install Weave"
# RUN curl -sL https://git.io/$PKG > /usr/local/bin/$PKG && chmod a+x /usr/local/bin/$PKG

# ENV PKG=every
# RUN echo "Install $PKG"
# RUN mkdir -p $PKG && curl -sL https://github.com/visionmedia/$PKG/archive/master.tar.gz | tar -xz --strip 1 -C $PKG && cd $PKG && make install && cd ../ && rm -fR $PKG

# ENV PKG=flash
# RUN echo "Install $PKG"
# RUN mkdir -p $PKG && curl -sL https://github.com/kingpearl/$PKG/archive/master.tar.gz | tar -xz --strip 1 -C $PKG && cd $PKG && make install && cd ../ && rm -fR $PKG

# ENV PKG=mon
# RUN echo "Install $PKG"
# RUN mkdir -p $PKG && curl -sL https://github.com/visionmedia/$PKG/archive/master.tar.gz | tar -xz --strip 1 -C $PKG && cd $PKG && make install && cd ../ && rm -fR $PKG

# ENV PKG=mad
# RUN echo "Install $PKG"
# RUN mkdir -p $PKG && curl -sL https://github.com/visionmedia/$PKG/archive/master.tar.gz | tar -xz --strip 1 -C $PKG && cd $PKG && make install && cd ../ && rm -fR $PKG

# ENV PKG=psy
# RUN echo "NPM install psy"
# RUN npm install -g $PKG

# ENV PKG=vundle
# RUN echo "Install Vundle"
# RUN mkdir -p $PKG && curl -sL https://github.com/gmarik/$PKG/archive/master.tar.gz | tar -xz --strip 1 -C $PKG && mv $PKG ~/.vim/bundle/$PKG
# RUN vim +BundleInstall! +qall
# RUN echo "colorscheme base16-spacemacs" >> ~/.vimrc
