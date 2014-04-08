set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

" let Vundle manage Vundle, required
Plugin 'gmarik/vundle'

Plugin 'klen/python-mode'
" check code
nmap <leader>c :PymodeLint<CR>
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

Plugin 'scrooloose/nerdtree'
"open NerdTree with leader+t
nmap <leader>t :NERDTreeToggle<CR> 

Plugin 'terryma/vim-multiple-cursors'

Plugin 'vim-scripts/desert.vim', {'rtp': 'colors/'}

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
iab utf! # -*- coding: utf-8 -*-
syntax on
