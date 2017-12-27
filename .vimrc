"Set indent method
filetype plugin indent on
set autoindent
set expandtab
set softtabstop=2
set shiftwidth=2

" Enable syntax higlighting
syntax on
filetype on
au BufNewFile,BufRead *.md set filetype=markdown

" Color Scheme, Filefomats
set fileformats=unix,mac,dos

" Use pathogen
execute pathogen#infect()

" Assign leader key
let mapleader=","

" Fonts
set guifont=Menlo\ Regular:h16

" Show line numbers
set number

" Disable backup
:set nobackup

" Set colorscheme
let g:colors_name="morning"

" Leader key mappings
map <leader>n :NERDTreeToggle<CR>
map <D-e> :CtrlP<CR>
map <leader>. :ClearCtrlPCache<CR>
map <leader>+ :!npm publish<CR>
map <leader>l :JSHint<CR>
map <leader>s2 :set softtabstop=2 <Bar> set shiftwidth=2<cr>
map <leader>s4 :set softtabstop=4 <Bar> set shiftwidth=4<cr>
map <leader>s6 :set softtabstop=6 <Bar> set shiftwidth=6<cr>
map <leader>s8 :set softtabstop=8 <Bar> set shiftwidth=8<cr>
map <leader><left> :b#<cr>
map <leader><right> :bnext<cr>
map <leader>td :TernDoc<cr>
map <leader>tb :TernDocBrowse<cr>
map <leader>tt :TernType<cr>
map <leader>tr :TernRename<cr>
map <leader>cc :set cc=80<cr>
nmap <leader>ew :e <C-R>=expand('%:h').'/'<cr>
nmap <leader>es :sp <C-R>=expand('%:h').'/'<cr>
nmap <leader>ev :vsp <C-R>=expand('%:h').'/'<cr>
nmap <leader>et :tabe <C-R>=expand('%:h').'/'<cr>
:nnoremap <leader>gappg :!git commit --amend && git push origin gh-pages --force<cr>
:nnoremap <leader>gpom :!git push origin master<cr>
:nnoremap <leader>b :buffers<CR>:buffer<Space>

" Enable tern keyboard shortcuts
let g:tern_map_keys=1
let g:tern_show_signature_in_pum=1

" JsDoc configuration
let g:jsdoc_additional_descriptions=1
let g:jsdoc_input_description=1
let g:jsdoc_enable_es6=1
let tern_map_prefix=","

" Initialize CtrlP
set runtimepath^=~/.vim/bundle/ctrlp.vim
let g:ctrlp_working_path_mode = 'ra'
let g:ctrlp_custom_ignore = 'node_modules\|DS_Store\|git'

" Open Marked
:nnoremap <leader>m :silent !open -a /Applications/Marked\ 2.app '%:p'<cr>

" Show fugitive status line
set statusline=%<%f\ %h%m%r%{fugitive#statusline()}%=%-14.(%l,%c%V%)\ %P

" Enable syntastic
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

" Open web browser
:nnoremap <leader>o :!open %<CR>

" Enable vim-javascript features
let g:javascript_plugin_flow = 1
let g:javascript_plugin_jsdoc = 1
