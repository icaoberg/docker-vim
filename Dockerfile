FROM ubuntu:latest

LABEL maintainer="Ivan E. Cao-Berg <icaoberg@andrew.cmu.edu>"
LABEL description="Install vim as IDE"
LABEL vendor="Computational Biology Department at Carnegie Mellon University"
LABEL version="0.1"

# install vim
USER root
RUN apt-get update --fix-missing
RUN apt-get install -y --no-install-recommends apt-utils
RUN apt-get install -y build-essential git vim tmux 

# configure environment
ENV DEBIAN_FRONTEND noninteractive
ENV SHELL /bin/bash
ENV USERNAME icaoberg
ENV UID 1000
RUN useradd -m -s /bin/bash -N -u $UID $USERNAME
RUN if [ ! -d /home/$USERNAME/ ]; then mkdir /home/$USERNAME/; fi
WORKDIR /home/$USERNAME/

# prepare IDE
USER $USERNAME
RUN git clone https://github.com/icaoberg/vim-as-an-ide.git && mv vim-as-an-ide/vimrc.vim ~/.vimrc && rm -rf vim-as-an-ide
RUN mkdir ~/.vim && git clone https://github.com/VundleVim/Vundle.vim ~/.vim/bundle/Vundle.vim
RUN git clone https://github.com/Yggdroot/duoduo.git && mv duoduo/colors ~/.vim/ && rm -rf duoduo
RUN sed -i 's/solarized/duoduo/g' ~/.vimrc
RUN sed -i 's/nerdtree_tabs_open_on_console_startup = 0/nerdtree_tabs_open_on_console_startup = 1/g' ~/.vimrc
RUN vim +PluginInstall +qall
