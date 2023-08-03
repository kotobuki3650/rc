filetype plugin on

set autoindent
set expandtab
set hlsearch
set incsearch
set nocompatible
set nowrap
set nrformats=""
set number
set shiftwidth=2
set tabstop=2
"set tags+=~/tags
set clipboard+=unnamedplus

syntax enable

nnoremap <silent> [b :bprevious<CR>
nnoremap <silent> ]b :bnext<CR>
nnoremap <silent> [B :bfirst<CR>
nnoremap <silent> ]B :blast<CR>
nnoremap <silent> <C-l> :<C-u>nohlsearch<CR><C-l>

cnoremap <expr> %% getcmdtype() == ':' ? expand('%:h').'/' : '%%'

inoremap ( ()<LEFT>
inoremap (<ESC> ()
inoremap (<Enter> ()<LEFT><CR><ESC><S-o>
inoremap { {}<LEFT>
inoremap {<ESC> {}
inoremap {<Enter> {}<LEFT><CR><ESC><S-o>
inoremap [ []<LEFT>
inoremap [<ESC> []
inoremap [<Enter> []<LEFT><CR><ESC><S-o>
inoremap ' ''<LEFT>
inoremap '<ESC> ''
inoremap " ""<LEFT>
inoremap "<ESC> ""

autocmd FileType python nmap <buffer> \ :!python3 %<CR>
autocmd FileType javascript nmap <buffer> \ :!node %<CR>
autocmd FileType sql nmap <buffer> \ :SQLFmt <CR>

call plug#begin()
Plug 'mattn/vim-sqlfmt'
call plug#end()

let g:sqlfmt_program = "sqlformat --comma_first true -r -k upper -o %s -"

abbr _sh #!/bin/bash
