#!/bin/bash

PWD= $(pwd)

# vim 설치
brew install vim

# ctags 설치
brew install ctags

# tmux 설치
brew install tmux

# git 설치
brew install git

echo "Init and update submodules..."

# Update submodules
git submodule init
git submodule update

echo "Setting vim configuration..."

# 기존 홈 디렉토리에 존재하는 vim 관련 파일들 정리
rm -rf ~/.vim ~/.vimrc

# 업데이트 받은 설정 파일들을 심볼릭 링크를 이용하여 홈 디렉토리에 세팅
ln -sf $PWD/.vimrc ~/.vimrc
ln -sf $PWD/vim/.vim ~/.vim
ln -sf $PWD/.tmux.conf ~/.tmux.conf
ln -sf $PWD/.gitconfig ~/.gitconfig
ln -sf $PWD/.bashrc ~/.bash_profile
ln -sf $PWD/.bash_aliases ~/.bash_aliases

# 세팅 후 vim 플러그인 설치
vim +PluginInstall +qall

echo "Done!"
