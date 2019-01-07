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
set tags=./tags,tags
set diffopt+=iwhite " vimdiff에서 공백 문자 무시
set visualbell
set t_vb=

" Vim 크기 확장 안함.
let Tlist_Inc_Winwidth=0
" 오른쪽에 태그리스트 보여줌
let Tlist_Use_Right_Window=1
" Vim
let g:indentLine_color_term = 239

nnoremap <silent> <F10> :NERDTree<CR>
nnoremap <silent> <F11> :TlistToggle<CR>
nnoremap <silent> <C-F11> :w<CR>:TlistUpdate<CR>

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

Plugin 'vim-scripts/AutoComplPop'
Plugin 'vim-syntastic/syntastic'
Plugin 'taglist.vim'

call vundle#end()
filetype plugin indent on

let NERDTreeShowHidden=1
let g:airline_theme = 'codedark'
set t_Co=256
set t_ut=
colorscheme codedark

"let g:molokai_original = 1dd
