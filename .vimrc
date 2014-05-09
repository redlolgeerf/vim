set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

" let Vundle manage Vundle, required
Plugin 'gmarik/vundle'

Plugin 'davidhalter/jedi-vim'
"no autocompletion on dot
let g:jedi#popup_on_dot = 0
"select first option on autocomplete
let g:jedi#popup_select_first = 0
"force python vercion to 3
let g:jedi#force_py_version = 3

Plugin 'scrooloose/syntastic'
let g:syntastic_python_checkers = ['pylint', 'pylama']
let g:syntastic_always_populate_loc_list = 1
nmap <leader>c :SyntasticCheck<CR> 


Plugin 'scrooloose/nerdtree'
"open NerdTree with leader+t
nmap <leader>t :NERDTreeToggle<CR> 

Plugin 'terryma/vim-multiple-cursors'

Plugin 'Raimondi/delimitMate'

Plugin 'vim-scripts/desert.vim', {'rtp': 'colors/'}

"plugin for indentation line
Plugin 'Yggdroot/indentLine'

" scripts from http://vim-scripts.org/vim/scripts.html

filetype plugin indent on

"Вырубаем .swp и ~ (резервные) файлы
set nobackup
set noswapfile
set encoding=utf-8 " Кодировка файлов по умолчанию
set fileencodings=utf8,cp1251 " Возможные кодировки файлов, если файл не в unicode кодировке,
" то будет использоваться cp1251

"Вырубаем .swp и ~ (резервные) файлы
set nobackup
set noswapfile
set encoding=utf-8 " Кодировка файлов по умолчанию
set fileencodings=utf8,cp1251 " Возможные кодировки файлов, если файл не в unicode кодировке,
" то будет использоваться cp1251

colorscheme desert "Цветовая схема
set nu "Включаем нумерацию строк
set mousehide "Спрятать курсор мыши когда набираем текст
set mouse=a "Включить поддержку мыши

"сокращение для добавления кодировки
iab bin! # !/usr/bin/env python3
iab utf! # -*- coding: utf-8 -*-
iab main! if __name__ == '__main__':
"syntax on
"Включаем 256 цветов в терминале, мы ведь работаем из иксов?
"Нужно во многих терминалах, например в gnome-terminal
set t_Co=256
set background=dark
syntax on

"отображение скрытых символов
if has('multi_byte')
    if version >= 700
        " set listchars=tab:»\ ,trail:·,eol:¶,extends:→,precedes:←,nbsp:×
        set listchars=tab:▸\ ,eol:¬
    else
        set listchars=tab:»\ ,trail:·,eol:¶,extends:>,precedes:<,nbsp:_
    endif
endif
nmap <leader>h :set list!<CR>

" Save the current buffer
imap <F5> <esc>:w<CR>a
nmap <F5> :w<CR>

"switching between tabs
nnoremap <F1> :tabprevious<CR>
nnoremap <F2> :tabnext<CR>
"open new tab
nnoremap <C-w>t :tabedit<CR>

" highlight collumn end for python files only
function SetLimit()
	set colorcolumn=79
	highlight ColorColumn ctermbg=darkgray
endfunction
autocmd FileType python call SetLimit()

"fixing backspace behavior
set backspace=2

" Don't try to highlight lines longer than 200 characters.
set synmaxcol=200

" Search options
set hlsearch " Highlight search results
set ignorecase " Ignore case in search patterns
set smartcase " Override the 'ignorecase' option if the search pattern contains upper case characters
set incsearch " While typing a search command, show where the pattern

" Tab completion in command line mode
set wildmenu " Better commandline completion
set wildmode=longest:full,full " Expand match on first Tab complete
set wildcharm=<TAB>

"show diff from previously saved version
command DiffOrig vert new | set bt=nofile | r # | 0d_ | diffthis
	 	\ | wincmd p | diffthis
nmap <leader>p :DiffOrig<CR>
