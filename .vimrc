set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle, required
Plugin 'gmarik/vundle'

Plugin 'klen/python-mode'
" check code
" let g:pymode_python = 'python3'
nmap <leader>c :PymodeLint<CR>
"Подсвечиваем все что можно подсвечивать
let python_highlight_all = 1
"Turn on pymode syntax
let g:pymode_syntax = 1
"Slower syntax synchronization
let g:pymode_syntax_slow_sync = 1
"Enable all python highlights
let g:pymode_syntax_all = 1
"Highlight "print" as a function
let g:pymode_syntax_print_as_function = 0
"Highlight '=' operator
let g:pymode_syntax_highlight_equal_operator = g:pymode_syntax_all
"Highlight '*' operator
let g:pymode_syntax_highlight_stars_operator = g:pymode_syntax_all
"Highlight 'self' keyword                      *'g:pymode_syntax_highlight_self'*
let g:pymode_syntax_highlight_self = g:pymode_syntax_all
"Highlight indent's errors                      *'g:pymode_syntax_indent_errors'*
let g:pymode_syntax_indent_errors = g:pymode_syntax_all
"Highlight space's errors                        *'g:pymode_syntax_space_errors'*
let g:pymode_syntax_space_errors = g:pymode_syntax_all
"Highlight string formatting                 *'g:pymode_syntax_string_formatting'*
"                                               *'g:pymode_syntax_string_format'*
"                                            *'g:pymode_syntax_string_templates'*
"                                                    *'g:pymode_syntax_doctests'*
let g:pymode_syntax_string_formatting = g:pymode_syntax_all
let g:pymode_syntax_string_format = g:pymode_syntax_all
let g:pymode_syntax_string_templates = g:pymode_syntax_all
let g:pymode_syntax_doctests = g:pymode_syntax_all
"Highlight builtin objects (True, False, ...)    *'g:pymode_syntax_builtin_objs'*
let g:pymode_syntax_builtin_objs = g:pymode_syntax_all
"Highlight builtin types (str, list, ...)       *'g:pymode_syntax_builtin_types'*
let g:pymode_syntax_builtin_types = g:pymode_syntax_all
"Highlight exceptions (TypeError, ValueError, ...) 
"                                        *'g:pymode_syntax_highlight_exceptions'*
let g:pymode_syntax_highlight_exceptions = g:pymode_syntax_all
"Highlight docstrings as pythonDocstring (otherwise as pythonString)
"                                                  *'g:pymode_syntax_docstrings'*
let g:pymode_syntax_docstrings = g:pymode_syntax_all

"turn off completion afer dot
let g:pymode_rope_complete_on_dot = 0

"turn off code checking on every save
let g:pymode_lint_on_write = 0
"turn off window with errors
let g:pymode_lint_cwindow = 0

Plugin 'scrooloose/nerdtree'
"open NerdTree with leader+t
nmap <leader>t :NERDTreeToggle<CR> 

Plugin 'terryma/vim-multiple-cursors'

Plugin 'Raimondi/delimitMate'

Plugin 'vim-scripts/desert.vim', {'rtp': 'colors/'}

"plugin for indentation line
Plugin 'Yggdroot/indentLine'

" scripts from http://vim-scripts.org/vim/scripts.html

call vundle#end()  
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
