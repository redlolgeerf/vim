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

" highlight collumn end
set colorcolumn=79
highlight ColorColumn ctermbg=darkgray

"fixing backspace behavior
set backspace=2

"show diff from previously saved version
command DiffOrig vert new | set bt=nofile | r # | 0d_ | diffthis
	 	\ | wincmd p | diffthis
nmap <leader>d :DiffOrig<CR>
