let mapleader=","
" Filetype indent
:set autoindent
:set number
" CtrlP
map <leader>m :CtrlP<CR>
map <leader>. :ClearCtrlPCache<CR>
" YCM
map <leader>y :YcmCompleter RestartServer<CR>
map <leader>g :YcmCompleter GoTo<cr>
map <leader>d :YcmCompleter GetDoc<cr>
" Buffers
map <leader><left> :bp<CR>
map <leader><right> :bn<CR>
map <leader><up> :b #<CR>
map <leader><down> :bd<CR>
" Width
map <leader>s2 :set softtabstop=2 <Bar> set shiftwidth=2<cr>
map <leader>s4 :set softtabstop=4 <Bar> set shiftwidth=4<cr>
map <leader>s6 :set softtabstop=6 <Bar> set shiftwidth=6<cr>
map <leader>s8 :set softtabstop=8 <Bar> set shiftwidth=8<cr>
" Ale
nnoremap <leader>an :ALENextWrap<cr>
nnoremap <leader>ap :ALEPreviousWrap<cr>
" Open applications
:nnoremap <leader>o :!open %<CR>
:nnoremap <leader>y :silent !open -a /Applications/Marked\ 2.app '%:p'<cr>
map <leader>t :TagbarToggle<CR>
map <leader>n :NERDTreeToggle<CR>
"Others
map <leader>cc :set cc=80<cr>
:nnoremap <leader>gpom :!git push origin master<cr>
map <leader>et :tabe <C-R>=expand('%:h').'/'<cr>
map <leader>v :vs ~/.config/nvim/init.vim<CR>
map <Esc><Esc> :w<CR>
" Switch modes in terminal
:tnoremap <Esc> <C-\><C-n>
autocmd BufReadPost quickfix nnoremap <buffer> <CR> <CR>
" Close bracket
inoremap {      {}<Left>
inoremap {<CR>  {<CR>}<Esc>O
inoremap {{     {
inoremap {}     {}
inoremap {      {}<Left>
inoremap {<CR>  {<CR>}<Esc>O
inoremap {{     {
inoremap {}     {}
inoremap (      ()<Left>
inoremap (<CR>  (<CR>)<Esc>O
inoremap ((     (
inoremap ()     ()
inoremap "      ""<Left>
inoremap "<CR>  "<CR>"<Esc>O
inoremap ""     "
inoremap ""     ""
inoremap '      ''<Left>
inoremap '<CR>  '<CR>'<Esc>O
inoremap ''     '
inoremap ''     ''

call plug#begin('~/.vim/plugged')
Plug 'mileszs/ack.vim'
Plug 'w0rp/ale'
Plug 'kien/ctrlp.vim'
Plug 'mattn/emmet-vim'
Plug 'tpope/vim-fugitive'
Plug 'scrooloose/nerdtree'
Plug 'chrisbra/NrrwRgn'
Plug 'vim-airline/vim-airline'
Plug 'mhartington/oceanic-next'
Plug 'majutsushi/tagbar'
Plug 'vim-ctrlspace/vim-ctrlspace'
Plug 'pangloss/vim-javascript'
Plug 'mxw/vim-jsx'
Plug 'posva/vim-vue'
Plug 'prettier/vim-prettier', {
  \ 'do': 'yarn install',
  \ 'for': ['javascript', 'typescript', 'css', 'less', 'scss', 'json', 'graphql', 'markdown', 'vue'] }
Plug 'Valloric/YouCompleteMe'
Plug 'heavenshell/vim-jsdoc'
Plug 'othree/yajs.vim', { 'for': 'javascript' }
call plug#end()
colorscheme OceanicNext
set shiftwidth=2
set tabstop=2 expandtab
set hidden

" Enable omni complete
autocmd FileType css setlocal omnifunc=csscomplete#CompleteCSS
autocmd FileType html,markdown setlocal omnifunc=htmlcomplete#CompleteTags
autocmd FileType javascript setlocal omnifunc=javascriptcomplete#CompleteJS

let g:ctrlp_show_hidden = 1
let g:javascript_plugin_jsdoc = 1
let g:javascript_plugin_flow = 1
let g:python_host_prog='/usr/bin/python2'
let g:python3_host_prog='/usr/bin/python3'
set wildignore+=*/dist/*,*/node_modules/*,*/_next/*
let g:ctrlp_custom_ignore = {
  \ 'dir':  '\v[\/]\.(git|c9|sass-cache)$'
  \ }

" Vim Prettier
let g:prettier#config#single_quote = 'true'
let g:prettier#config#trailing_comma = 'none'
let g:prettier#autoformat = 0
autocmd BufWritePre,TextChanged,InsertLeave *.js,*.jsx,*.mjs,*.ts,*.tsx,*.css,*.less,*.scss,*.json,*.graphql,*.md,*.vue PrettierAsync

" Prettier
let g:prettier#quickfix_auto_focus = 0

" Emmet-vim
let g:user_emmet_settings = {
\  'javascript' : {
\      'extends' : 'jsx',
\  },
\}

" CtrlP
set wildignore+=*/.next/*
