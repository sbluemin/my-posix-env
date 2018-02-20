#!/bin/bash

# ctags 설치
apt-get install ctags

echo "Init and update submodules..."

# Update submodules
git submodule init
git submodule update

echo "Setting vim configuration..."

# 기존 홈 디렉토리에 존재하는 vim 관련 파일들 정리
rm -rf ~/.vim ~/.vimrc

# 업데이트 받은 설정 파일들을 심볼릭 링크를 이용하여 홈 디렉토리에 세팅
ln -sf ~/psetting/.vimrc ~/.vimrc
ln -sf ~/psetting/vim/.vim ~/.vim
ln -sf ~/psetting/.tmux.conf ~/.tmux.conf
