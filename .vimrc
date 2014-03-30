filetype off
call pathogen#runtime_append_all_bundles()
call pathogen#helptags()

"Windows navigation
map <c-j> <c-w>j
map <c-k> <c-w>k
map <c-l> <c-w>l
map <c-h> <c-w>h

"Code folding 
set foldmethod=indent
set foldlevel=99

"Task list
map <leader>td <Plug>TaskList

"Gundo 
map <leader>g :GundoToggle<CR>

"Syntax highlight
syntax on                           " syntax highlighing
filetype on                          " try to detect filetypes
filetype plugin indent on    " enable loading indent file for filetype

"PEP-8
let g:pep8_map='<leader>8' 

"Auto-complete
au FileType python set omnifunc=pythoncomplete#Complete
let g:SuperTabDefaultCompletionType = "context"

"Doc menu
set completeopt=menuone,longest,preview

"File browser
map <leader>n :NERDTreeToggle<CR>

"Refactoring
map <leader>j :RopeGotoDefinition<CR>
map <leader>r :RopeRename<CR>

"Searching
nmap <leader>a <Esc>:Ack!

"for more: http://sontek.net/blog/detail/turning-vim-into-a-modern-python-ide
