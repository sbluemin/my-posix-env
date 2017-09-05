set hlsearch "검색어 하이라이팅
set ruler "현재 커서 위치 표시
set ts=4
set expandtab
set autoindent
set cindent
set nu
set showmatch "일치하는 괄호 표시
set shiftwidth=4 "자동 들여쓰기 너비
set laststatus=2 "상태바 표시 항상
set history=1000 "편집 기록 갯수
set ignorecase "검색 시, 대소문자 구분 안함
set splitright "수직 창 분할 시 새로운 창을 오른쪽으로 
set splitbelow "수평 창 분할 시 새로운 창을 아래로

set diffopt+=iwhite " vimdiff에서 공백 문자 무시

let python_version_3 = 1
let python_highlight_all = 1

" Vim
let g:indentLine_color_term = 239

" GVim
"let g:indentLine_color_gui = '#A4E57E'

" none X terminal
"let g:indentLine_color_tty_light = 7 " (default: 4)
"let g:indentLine_color_dark = 1 " (default: 2)

" Background (Vim, GVim)
"let g:indentLine_bgcolor_term = 202
"let g:indentLine_bgcolor_gui = '#FF5F00'

map <C-b> :NERDTree<CR>
"map <C-w> :q<CR>
map <C-s> :w<CR>

if has("syntax")
	syntax on
endif

set nocompatible
filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'

" 컬러 스키마들
Plugin 'tomasiser/vim-code-dark'

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

" Ctags
Plugin 'ctags.vim'

" Python
Plugin 'davidhalter/jedi-vim'

Plugin 'Yggdroot/indentLine'

call vundle#end()
filetype plugin indent on

let g:airline_theme = 'codedark'
set t_Co=256
set t_ut=
colorscheme codedark

"let g:molokai_original = 1dd
