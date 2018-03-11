let mapleader=","
"CtrlP
map <leader>m :CtrlP<CR>
map <leader>. :ClearCtrlPCache<CR>
"YCM
map <leader>y :YcmCompleter RestartServer<CR>
map <leader>g :YcmCompleter GoTo<cr>
map <leader>d :YcmCompleter GetDoc<cr>
"Buffers
map <leader><left> :bp<CR>
map <leader><right> :bn<CR>
map <leader><up> :b #<CR>
map <leader><down> :bd<CR>
"Width
map <leader>s2 :set softtabstop=2 <Bar> set shiftwidth=2<cr>
map <leader>s4 :set softtabstop=4 <Bar> set shiftwidth=4<cr>
map <leader>s6 :set softtabstop=6 <Bar> set shiftwidth=6<cr>
map <leader>s8 :set softtabstop=8 <Bar> set shiftwidth=8<cr>
"Ale
nnoremap <leader>an :ALENextWrap<cr>
nnoremap <leader>ap :ALEPreviousWrap<cr>
"Open applications
:nnoremap <leader>o :!open %<CR>
:nnoremap <leader>m :silent !open -a /Applications/Marked\ 2.app '%:p'<cr>
map <leader>t :TagbarToggle<CR>
map <leader>n :NERDTreeToggle<CR>
"Others
map <leader>cc :set cc=80<cr>
:nnoremap <leader>gpom :!git push origin master<cr>
map <leader>et :tabe <C-R>=expand('%:h').'/'<cr>
map <leader>v :vs ~/.config/nvim/init.vim<CR>
map å :w<CR>
"Switch modes in terminal
:tnoremap <Esc> <C-\><C-n>


call plug#begin('~/.vim/plugged')
Plug 'w0rp/ale'
Plug 'kien/ctrlp.vim'
Plug 'tpope/vim-fugitive'
Plug 'scrooloose/nerdtree'
Plug 'vim-airline/vim-airline'
Plug 'mhartington/oceanic-next'
Plug 'majutsushi/tagbar'
Plug 'vim-ctrlspace/vim-ctrlspace'
Plug 'Valloric/YouCompleteMe'
"Plug 'othree/yajs.vim'
call plug#end()

colorscheme OceanicNext
set shiftwidth=2
set tabstop=2 expandtab
set hidden

let g:ctrlp_show_hidden = 1
let g:python_host_prog='/usr/local/bin/python'
let g:python3_host_prog='/usr/local/bin/python3'
let g:ctrlp_custom_ignore = 'node_modules\|DS_Store\|git'
