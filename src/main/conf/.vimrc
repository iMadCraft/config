let mapleader=" "

set incsearch
set tabstop=3
set softtabstop=3
set shiftwidth=3
set expandtab

set smartindent

set nowrap

set number
set ruler

set noswapfile
set nobackup
set undodir=os.getenv("HOME") .. "/.local/cache/nvim/undodir"
set undofile

set hlsearch
set incsearch

set termguicolors

set scrolloff=8
set signcolumn="yes"
-- set isfname:append("@-@

set updatetime=50

set colorcolumn="80"
set cursorline

vnoremap J :m '>+1<CR>gv=gv'
vnoremap K :m '<-2<CR>gv=gv'

nnoremap <C-d> <C-d>zz
nnoremap <C-u> <C-u>zz

nnoremap n nzzzv
nnoremap N Nzzzv

xnoremap <leader>p \"_dP

nnoremap <leader>yy \"+y
vnoremap <leader>yy \"+y
nnoremap <leader>Y \"+Y

nnoremap <leader>d \"+d
vnoremap <leader>d \"+d

nnoremap Q <nop>

" quikfix shortcuts
nnoremap <C-k> <cmd>cnext<CR>zz
nnoremap <C-j> <cmd>cnext<CR>zz
nnoremap <leader>k <cmd>lnext<CR>zz
nnoremap <leader>j <cmd>lnext<CR>zz

nnoremap <leader>rW :%s/\\<<C-r><C-w>\\>/<C-r><C-w>/gI<Left><Left><Left>
nnoremap <leader>rw :%s/<C-r><C-w>/<C-r><C-w>/gI<Left><Left><Left>
nnoremap <leader>rs :%s/<C-r><C-w>//g<Left><Left>
vnoremap <leader>rs :s/@//g<Left><Left>
nnoremap <leader>re :%s/$//<Left>
vnoremap <leader>re :s/$//<Left>

nnoremap <leader>on", vim.cmd.Ex)
nnoremap <leader>sa gg+V+G

"
" Custom
"
"
nnoremap <leader>sW :let @/='\\<<C-R>=expand(\"<cword>\")<CR>\\>'<CR>:set hls<CR>
nnoremap <leader>sw :let @/='<C-R>=expand(\"<cword>\")<CR>'<CR>:set hls<CR>
nnoremap <leader>ss :let @/=''<Left>

" Keep selection after indentation
vnoremap < <gv
vnoremap > >gv

nnoremap <M-Left> <C-w>h
nnoremap <M-Down> <C-w>j
nnoremap <M-Up> <C-w>k
nnoremap <M-Right> <C-w>l

" Keep position when pasting
nnoremap p p`[

" Switch between tabs
nnoremap <M-Tab> :tabnext<CR>
nnoremap <S-Tab> :tabprev<CR>

vim.keymap.set("t <ESC> <C-\\><C-n>
vim.keymap.set("t <M-Tab> <C-\\><C-n>:tabnext<CR>

" Enter insert mode then swithcing to Termnal
vim.cmd( [[ autocmd BufWinEnter,WinEnter term://* startinsert ]] )

" Disable number for terminal
vim.cmd( [[ autocmd TermOpen * setlocal nonumber norelativenumber ]] )

nnoremap <S-Up> <Up><Up><Up><Up>
inoremap <S-Up> <Up><Up><Up><Up>
vnoremap <S-Up> <Up><Up><Up><Up>
nnoremap <S-Down> <Down><Down><Down><Down>
inoremap <S-Down> <Down><Down><Down><Down>
vnoremap <S-Down> <Down><Down><Down><Down>
