set nocompatible
filetype plugin on

set number

set tabstop=2
set shiftwidth=2
set expandtab

set incsearch
set hlsearch

set autoindent

colorscheme iceberg
syntax enable
autocmd BufNewFile,BufRead *.riot set filetype=html

set nowrap
set path+=/Library/Developer/CommandLineTools/SDKs/MacOSX11.0.sdk/usr/include

nnoremap <silent> [b :bprevious<CR>
nnoremap <silent> ]b :bnext<CR>
nnoremap <silent> [B :bfirst<CR>
nnoremap <silent> ]B :blast<CR>

cnoremap <expr> %% getcmdtype() == ':' ? expand('%:h').'/' : '%%'

inoremap { {}<LEFT>
inoremap {<Enter> {}<LEFT><CR><ESC><S-o><TAB>
inoremap ( ()<LEFT>
inoremap (<ESC> ()
inoremap (<Enter> ()<LEFT><CR><ESC><S-o><TAB>
inoremap [ []<LEFT>
inoremap [<Enter> []<LEFT><CR><ESC><S-o><TAB>
