#!/bin/bash

PWD= $(pwd)

unameOut="$(uname -s)"
case "${unameOut}" in
    Linux*)     machine=Linux;;
    Darwin*)    machine=Mac;;
    CYGWIN*)    machine=Cygwin;;
    MINGW*)     machine=MinGw;;
    *)          machine="UNKNOWN:${unameOut}"
esac

if [ "${machine}" == "Linux" ]; then
    sudo add-apt-repository ppa:x4121/ripgrep
    sudo apt-get update

    sudo apt-get install ripgrep
    
    # vim 설치
    sudo apt-get install vim

    # ctags 설치
    sudo apt-get install ctags
    
    git clone --depth 1 https://github.com/junegunn/fzf.git ~/.fzf
    ~/.fzf/install

elif [ "${machine}" == "Mac" ]; then
    brew update

    # vim 설치
    brew install vim

    # ctags 설치
    brew install ctags

    # git 설치
    brew install git

    brew install fzf
    brew install ripgrep

	# mac vscode vim에서 키 repat가 안되는 문제
	defaults write com.microsoft.VSCodeInsiders ApplePressAndHoldEnabled -bool false 
	defaults write com.microsoft.VSCode ApplePressAndHoldEnabled -bool false


else
    echo "This script supported only mac or linux!"
    exit -1
fi

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
ln -sf ~/.sbluemin/configs/.gitconfig ~/.gitconfig
ln -sf ~/.sbluemin/configs/.bashrc ~/.bashrc
ln -sf ~/.sbluemin/configs/.bashrc ~/.bash_profile
ln -sf ~/.sbluemin/configs/.bash_aliases ~/.bash_aliases

# 세팅 후 vim 플러그인 설치
vim +PluginInstall +qall

echo "Done!"
