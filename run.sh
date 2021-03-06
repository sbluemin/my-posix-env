#!/bin/bash

PWD= $(pwd)

sudo add-apt-repository ppa:x4121/ripgrep
sudo apt-get update

# 필수 패키지 설치
sudo apt-get install -y ripgrep vim ctags tig

# Fuzzy finder 설치
git clone --depth 1 https://github.com/junegunn/fzf.git ~/.fzf
~/.fzf/install
    
# Update submodules
git submodule init
git submodule update

# 기존 홈 디렉토리에 존재하는 vim 관련 파일들 정리
rm -rf ~/.vim ~/.vimrc
rm -rf ~/.sbluemin

# 업데이트 받은 설정 파일들을 심볼릭 링크를 이용하여 홈 디렉토리에 세팅
ln -sf $PWD ~/.sbluemin

ln -sf ~/.sbluemin/vim/.vim ~/.vim

ln -sf ~/.sbluemin/configs/.vimrc ~/.vimrc
ln -sf ~/.sbluemin/configs/.tmux.conf ~/.tmux.conf
ln -sf ~/.sbluemin/configs/.tigrc ~/.tigrc
ln -sf ~/.sbluemin/configs/.gitconfig ~/.gitconfig
ln -sf ~/.sbluemin/configs/.bashrc ~/.bashrc
ln -sf ~/.sbluemin/configs/.bashrc ~/.bash_profile
ln -sf ~/.sbluemin/configs/.bash_aliases ~/.bash_aliases

# 세팅 후 vim 플러그인 설치
vim +PluginInstall +qall

echo "Done!"
