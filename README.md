# docker-vim

[![Build Status](https://travis-ci.org/icaoberg/docker-vim.svg?branch=master)](https://travis-ci.org/icaoberg/docker-vim)
[![GitHub issues](https://img.shields.io/github/issues/icaoberg/docker-vim.svg)](https://github.com/icaoberg/docker-vim/issues)
[![GitHub forks](https://img.shields.io/github/forks/icaoberg/docker-vim.svg)](https://github.com/icaoberg/docker-vim/network)
[![GitHub stars](https://img.shields.io/github/stars/icaoberg/docker-vim.svg)](https://github.com/icaoberg/docker-vim/stargazers)
[![GitHub license](https://img.shields.io/badge/license-GPLv3-blue.svg)](https://www.gnu.org/licenses/quick-guide-gplv3.en.html)

![vim as IDE](./images/screenshot.png)

To build an image using the `Dockerfile` in this repository, run the command

```
➜ docker build -t "icaoberg/vim" .
```

To pull the image from Dockerhub, run the command

```
docker pull icaoberg/docker-vim
```

To run a container using the image above

```
➜  docker run -it icaoberg/vim
icaoberg@7312b0fb2f54:~$
```

## About the container

This container comes with 

* [vim](https://www.vim.org/)
* [tmux](https://github.com/tmux/tmux)
* [git](https://git-scm.com/)
