set hlsearch "검색어 하이라이팅
set ruler "현재 커서 위치 표시
set ts=4
set autoindent
set cindent
set nu
set showmatch "일치하는 괄호 표시
set shiftwidth=4 "자동 들여쓰기 너비
set laststatus=2 "상태바 표시 항상
set history=1000 "편집 기록 갯수
set ignorecase "검색 시, 대소문자 구분 안함

map <C-b> :NERDTree<CR>
map <C-w> :q<CR>
map <C-s> :w<CR>

if has("syntax")
	syntax on
endif

set nocompatible
filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'
Plugin 'The-NERD-tree'

" 고속 파일 찾기
Plugin 'ctrlp.vim'

" VIM 하단 상태바 추가
Plugin 'vim-airline/vim-airline'

" 코드상에 git 변경 내역 추가
Plugin 'airblade/vim-gitgutter'

" 상태바에 git 정보 추가
Plugin 'tpope/vim-fugitive'

" Javascript
Plugin 'pangloss/vim-javascript'
Plugin 'moll/vim-node'

call vundle#end()
filetype plugin indent on

colorscheme desert
set t_Co=256
let g:molokai_original = 1
