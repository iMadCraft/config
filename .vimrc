" .vimrc

set encoding=utf-8
set tabstop=3
set shiftwidth=3
set expandtab
set hlsearch
syntax on

set redrawtime=5000

hi StatusLine ctermfg=0

" Change vertical splited line to a black 'solid' line
hi VertSplit ctermfg=0 ctermbg=0

" Change the current window status line background color to green
hi StatusLine ctermfg=2

" Change the non-current window status line
"    background color to black
"    fontground color to green
hi StatusLineNC ctermfg=0 ctermbg=2


hi LineNr ctermfg=7 ctermbg=0

colorscheme slate
