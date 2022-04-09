FROM archlinux
RUN mkdir -p /var/tmp && cd /var/tmp/

ENV ME=$(whoami)
ENV PKG=profile
ARG DEBIAN_FRONTEND=noninteractive
ENV TZ=America/New_York

# RUN echo "System enable/start bluebooth"
# RUN systemctl enable bluetooth.service
# RUN systemctl start bluetooth.service

RUN echo "Pacman update"
RUN pacman -Syyu --noconfirm

ENV PKG=curl
RUN echo "Pacman install Curl"
RUN pacman -S --noconfirm --needed $PKG

ENV PKG=git
RUN echo "Pacman install Git"
RUN pacman -S --noconfirm --needed $PKG

# Set permissions
# ENV PKG=permissions
# RUN echo "Set $PKG"
# RUN chmod 700 ~/.ssh
# RUN chmod 600 ~/.ssh/*

# Create workspace
ENV PKG=workspace
RUN echo "Create $PKG"
RUN ["/bin/bash", "-c", "mkdir -p ~/.vim/{backups,bundle,swaps,undo}"]
# RUN ["/bin/bash", "-c", "mkdir -p ~/Projects"]
# RUN ["/bin/bash", "-c", "mkdir -p ~/Machines"]

# ENV PKG=intel-ucode
# RUN echo "Pacman install Intel Microcode"
# RUN pacman -S --noconfirm --needed $PKG

ENV PKG=make-gcc-ssl
RUN echo "Pacman install Make & GCC & SSL"
RUN pacman -S --noconfirm --needed base-devel openssl

# ENV PKG=python
# RUN echo "Pacman install Python"
# RUN pacman -S --noconfirm --needed $PKG

# ENV PKG=go
# RUN echo "Pacman install Go"
# RUN pacman -S --noconfirm --needed $PKG

ENV PKG=rust
RUN echo "Pacman install Rust"
RUN pacman -S --noconfirm --needed $PKG

ENV PKG=nodejs-lts-gallium
RUN echo "Pacman install Node"
RUN pacman -S --noconfirm --needed $PKG

# ENV PKG=deno
# RUN echo "Pacman install Deno"
# RUN pacman -S --noconfirm --needed $PKG

# ENV PKG=jdk8-openjdk
# RUN echo "Pacman install OpenJDK"
# RUN pacman -S --noconfirm --needed $PKG

ENV PKG=libarchive
RUN echo "Pacman install Tar"
RUN pacman -S --noconfirm --needed $PKG

# ENV PKG=exfat
# RUN echo "Pacman install exFat"
# RUN pacman -S --noconfirm --needed $PKG

# ENV PKG=winehq
# RUN echo "Pacman install WineHQ"
# RUN pacman -S --noconfirm --needed $PKG

# ENV PKG=aspell
# RUN echo "Pacman install Aspell"
# RUN pacman -S --noconfirm --needed $PKG

# ENV PKG=the_silver_searcher
# RUN echo "Pacman install The Silver Searcher"
# RUN pacman -S --noconfirm --needed $PKG

# ENV PKG=git-extras
# RUN echo "Install $PKG"
# RUN mkdir -p $PKG && curl -sL https://github.com/visionmedia/$PKG/archive/master.tar.gz | tar -xz --strip 1 -C $PKG && cd $PKG && make install && cd ../ && rm -fR $PKG

# ENV PKG=git-flow
# RUN echo "Install Git Flow"
# RUN ["/bin/bash", "-c", "wget --no-check-certificate -q https://raw.github.com/petervanderdoes/gitflow/develop/contrib/gitflow-installer.sh && chmod +x gitflow-installer.sh && ./gitflow-installer.sh install stable && rm -fr gitflow"]

# ENV PKG=burl
# RUN echo "Install $PKG"
# RUN mkdir -p $PKG && curl -sL https://github.com/visionmedia/$PKG/archive/master.tar.gz | tar -xz --strip 1 -C $PKG && cd $PKG && make install && cd ../ && rm -fR $PKG"]

# ENV PKG=clib
# RUN echo "Install $PKG"
# RUN pacman -S --noconfirm --needed libcurl-gnutls
# RUN mkdir -p $PKG && curl -sL https://github.com/clibs/$PKG/archive/master.tar.gz | tar -xz --strip 1 -C $PKG && cd $PKG && make install && cd ../ && rm -fR $PKG"]

# ENV PKG=every
# RUN echo "Install $PKG"
# RUN ["/bin/bash", "-c", "curl -sL https://github.com/visionmedia/$PKG/archive/master.tar.gz | tar -xz --strip 1 -C $PKG && cd $PKG && make install && cd ../ && rm -fR $PKG"]

# ENV PKG=flash
# RUN echo "Install $PKG"
#  RUN ["/bin/bash", "-c", "curl -sL https://github.com/kingpearl/$PKG/archive/master.tar.gz | tar -xz --strip 1 -C $PKG && cd $PKG && make install && cd ../ && rm -fR $PKG"]

# ENV PKG=mon
# RUN echo "Install $PKG"
# RUN ["/bin/bash", "-c", "curl -sL https://github.com/visionmedia/$PKG/archive/master.tar.gz | tar -xz --strip 1 -C $PKG && cd $PKG && make install && cd ../ && rm -fR $PKG"]

# ENV PKG=mad
# RUN echo "Install $PKG"
#  RUN ["/bin/bash", "-c", "curl -sL https://github.com/visionmedia/$PKG/archive/master.tar.gz | tar -xz --strip 1 -C $PKG && cd $PKG && make install && cd ../ && rm -fR $PKG"]

# ENV PKG=zsh
# RUN echo "Pacman install Zsh"
# RUN pacman -S --noconfirm --needed $PKG
# RUN ["/bin/bash", "-c", 'sh -c "$(curl -fsSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"']

ENV PKG=vim
RUN echo "Pacman install Vim"
RUN pacman -S --noconfirm --needed $PKG

# ENV PKG=vundle
# RUN echo "Install Vundle"
# RUN pacman -S --noconfirm --needed $PKG
# RUN ["/bin/bash", "-c", "git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim"]
# RUN ["/bin/bash", "-c", "vim +PluginInstall +qall;"]
# RUN ["/bin/bash", "-c", 'echo "colorscheme base16-spacemacs" >> ~/.vimrc']

# ENV PKG=emacs
# RUN echo "Pacman install Emacs"
# RUN pacman -S --noconfirm --needed $PKG

# ENV PKG=spacemacs
# RUN echo "Install Spacemacs"
# RUN ["/bin/bash", "-c", "git clone https://github.com/syl20bnr/$PKG ~/.emacs.d"]

ENV PKG=htop
RUN echo "Pacman install Htop"
RUN pacman -S --noconfirm --needed $PKG

# ENV PKG=jpegoptim
# RUN echo "Pacman install Jpegoptim"
# RUN pacman -S --noconfirm --needed $PKG

# ENV PKG=optipng
# RUN echo "Pacman install OptiPNG"
# RUN pacman -S --noconfirm --needed $PKG

# ENV PKG=mutt
# RUN echo "Pacman install Mutt"
# RUN pacman -S --noconfirm --needed $PKG

# ENV PKG=lynx
# RUN echo "Pacman install Lynx"
# RUN pacman -S --noconfirm --needed $PKG

# ENV PKG=newsboat
# RUN echo "Pacman install Newsboat"
# RUN pacman -S --noconfirm --needed $PKG

# ENV PKG=openvpn
# RUN echo "Pacman install OpenVPN"
# RUN pacman -S --noconfirm --needed $PKG networkmanager-$PKG

# ENV PKG=openconnect
# RUN echo "Pacman install OpenConnect"
# RUN pacman -S --noconfirm --needed $PKG networkmanager-$PKG

# ENV PKG=stoken
# RUN echo "Pacman install Stoken"
# RUN pacman -S --noconfirm --needed $PKG

ENV PKG=npm
RUN echo "Pacman install NPM"
RUN pacman -S --noconfirm --needed $PKG

# ENV PKG=psy
# RUN echo "NPM install psy"
# RUN npm install -g $PKG

# ENV PKG=now
# RUN echo "NPM install now"
# RUN npm install -g $PKG

# ENV PKG=yarn
# RUN echo "NPM install Yarn"
# RUN npm install -g $PKG

# ENV PKG=bower
# RUN echo "NPM install Bower"
# RUN npm install -g $PKG

# ENV PKG=browserify
# RUN echo "NPM install Browserify"
# RUN npm install -g $PKG

# ENV PKG=duo
# RUN if [ ! -f .installed-$PKG ];
# RUN then
# RUN echo "NPM install Duo"
# RUN npm install -g $PKG

# ENV PKG=webpack
# RUN echo "NPM install $PKG"
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

# ENV PKG=particle-cli
# RUN echo "NPM install React Native CLI"
# RUN npm install -g $PKG

# ENV PKG=postgresql
# RUN echo "Pacman install PostgreSQL"
# RUN pacman -S --noconfirm --needed $PKG

# ENV PKG=mongodb-bin
# RUN echo "Pacman install MongoDB"
# RUN pacman -S --noconfirm --needed $PKG

# ENV PKG=redis
# RUN echo "Pacman install Redis"
# RUN pacman -S --noconfirm --needed $PKG

# ENV PKG=docker
# RUN echo "Pacman install Docker"
# RUN pacman -S --noconfirm --needed $PKG
# RUN systemctl enable docker.service
# RUN systemctl start docker.service
# RUN systemctl enable containerd.service
# RUN systemctl start containerd.service

# ENV PKG=kvm
# RUN echo "Pacman install Docker"
# RUN pacman -S --noconfirm --needed qemu virt-manager virt-viewer dnsmasq vde2 bridge-utils openbsd-netcat edk2-ovmf dmidecode
# RUN usermod -aG libvirt $USER
# RUN systemctl enable systemd-resolved.service
# RUN systemctl start systemd-resolved.service
# RUN systemctl enable libvirtd.service
# RUN systemctl start libvirtd.service
# RUN virsh net-start default
# RUN virsh net-autostart default

# ENV PKG=terraform
# RUN echo "Pacman install Terraform"
# RUN pacman -S --noconfirm --needed $PKG

# ENV PKG=up
# RUN echo "Install Apex"
# RUN ["/bin/bash", "-c", "curl https://raw.githubusercontent.com/apex/up/master/install.sh | bash"]

# ENV PKG=consul-bin
# RUN echo "Pacman install Consul"
# RUN pacman -S --noconfirm --needed $PKG

# ENV PKG=papirus-icon-theme
# RUN echo "Pacman install Papirus Icon Theme"
# RUN pacman -S --noconfirm --needed $PKG

# ENV PKG=gnome-shell-extensions
# RUN echo "Pacman install Gnome Shell Extensions"
# RUN pacman -S --noconfirm --needed $PKG

# ENV PKG=gnome-themes-extra
# RUN echo "Pacman install Gnome Themes Extra"
# RUN pacman -S --noconfirm --needed $PKG

# ENV PKG=gnome-tweaks
# RUN echo "Pacman install Gnome Tweaks"
# RUN pacman -S --noconfirm --needed $PKG

# ENV PKG=paru
# RUN echo "Install Paru"
# RUN ["/bin/bash", "-c", "git clone https://aur.archlinux.org/paru.git && cd paru && makepkg -si && cd ../ && rm -fR paru"]

# ENV PKG=flatpak
# RUN echo "Pacman install Flatpak"
# RUN pacman -S --noconfirm --needed $PKG
# RUN flatpak remote-add --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo

# ENV PKG=android-studio
# RUN echo "Paru install Android Studio"
# RUN paru -S --noconfirm --needed $PKG

# ENV PKG=visual-studio-code-bin
# RUN echo "Paru install Visual Studio Code"
# RUN paru -S --noconfirm --needed $PKG

# ENV PKG=datagrip-jre
# RUN echo "Paru install Datagrip"
# RUN paru -S --noconfirm --needed $PKG

# ENV PKG=postman-bin
# RUN echo "Paru install Postman"
# RUN paru -S --noconfirm --needed $PKG

# ENV PKG=firefox
# RUN echo "Pacman install Firefox"
# RUN pacman -S --noconfirm --needed $PKG

# ENV PKG=google-chrome
# RUN echo "Paru install Google Chrome"
# RUN paru -S --noconfirm --needed $PKG

# ENV PKG=evolution
# RUN echo "Pacman install Evolution"
# RUN pacman -S --noconfirm --needed $PKG

# ENV PKG=slack-desktop
# RUN echo "Paru install Slack"
# RUN paru -S --noconfirm --needed $PKG

# ENV PKG=teams
# RUN echo "Paru install Microsoft Teams"
# RUN paru -S --noconfirm --needed $PKG

# ENV PKG=zoom
# RUN echo "Paru install Zoom"
# RUN paru -S --noconfirm --needed $PKG

# ENV PKG=gimp
# RUN echo "Pacman install Gimp"
# RUN pacman -S --noconfirm --needed $PKG

# ENV PKG=spotify
# RUN echo "Paru install Spotify"
# RUN paru -S --noconfirm --needed $PKG

# ENV PKG=steam
# RUN echo "Paru install Steam"
# RUN paru -S --noconfirm --needed $PKG

# ENV PKG=lutris
# RUN echo "Pacman install Lustris"
# RUN pacman -S --noconfirm --needed $PKG