let mapleader=","
"CtrlP
map <leader>m :CtrlP<CR>
map <leader>. :ClearCtrlPCache<CR>
"YCM
map <leader>y :YcmCompleter RestartServer<CR>
map <leader>g :YcmCompleter GoTo<cr>
map <leader>d :YcmCompleter GetDoc<cr>
"Other
map <leader><left> :bp<CR>
map <leader><right> :bn<CR>
map <leader><up> :b #<CR>
map <leader><down> :bd<CR>
map <leader>n :NERDTreeToggle<CR>
map <leader>t :TagbarToggle<CR>
map <leader>v :vs ~/.config/nvim/init.vim<CR>
map å :w<CR>

call plug#begin('~/.vim/plugged')
Plug 'w0rp/ale'
Plug 'kien/ctrlp.vim'
"Deoplete
"Plug 'roxma/vim-hug-neovim-rpc'
"Plug 'Shougo/deoplete.nvim'
"Plug 'roxma/nvim-yarp'

Plug 'tpope/vim-fugitive'
"Plug 'othree/html5.vim'
Plug 'scrooloose/nerdtree'
Plug 'vim-airline/vim-airline'
Plug 'mhartington/oceanic-next'
Plug 'majutsushi/tagbar'
Plug 'vim-ctrlspace/vim-ctrlspace'
Plug 'Valloric/YouCompleteMe'
"Plug 'othree/yajs.vim'
"Plug 'edkolev/promptline.vim'
call plug#end()

colorscheme OceanicNext
set shiftwidth=2
set nocompatible
set hidden
set showtabline=0

let g:ctrlp_show_hidden = 1
let g:python_host_prog='/usr/local/bin/python'
let g:python3_host_prog='/usr/local/bin/python3'
let g:ctrlp_custom_ignore = 'node_modules\|DS_Store\|git'
"let g:deoplete#enable_at_startup = 1
