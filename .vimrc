set nocompatible              " be iMproved, required
filetype off                  " required


" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()
" alternatively, pass a path where Vundle should install plugins
let path = '~/.vim/plugin'
call vundle#rc(path)

" let Vundle manage Vundle, required
Plugin 'gmarik/vundle'

Plugin 'klen/python-mode'

Plugin 'vim-scripts/desert256', {'rtp': 'colors/'}

" scripts from http://vim-scripts.org/vim/scripts.html

"Переносим на другую строчку, разрываем строки
set wrap
set linebreak

"Вырубаем .swp и ~ (резервные) файлы
set nobackup
set noswapfile
set encoding=utf-8 " Кодировка файлов по умолчанию
set fileencodings=utf8,cp1251 " Возможные кодировки файлов, если файл не в unicode кодировке,
" то будет использоваться cp1251

"set mapleader="\"

syntax on
set background=dark

set tabstop=8
set expandtab
set shiftwidth=4
set softtabstop=4
