"Set indent method
set softtabstop=2
set shiftwidth=2

"Set language
:language en_GB.ISO8859-15

" Use pathogen
execute pathogen#infect()

" Assign leader key
let mapleader=","

" Fonts & colorscheme
colorscheme summerfruit256

" Show line numbers
set number

" Disable backup
:set nobackup

" Leader key mappings
map <leader>n :NERDTreeToggle<CR>
map € :CtrlP<CR>
map <leader>. :ClearCtrlPCache<CR>
map <leader>+ :!npm publish<CR>
map <leader>s2 :set softtabstop=2 <Bar> set shiftwidth=2<cr>
map <leader>s4 :set softtabstop=4 <Bar> set shiftwidth=4<cr>
map <leader>s6 :set softtabstop=6 <Bar> set shiftwidth=6<cr>
map <leader>s8 :set softtabstop=8 <Bar> set shiftwidth=8<cr>
map <leader><left> :b#<cr>
map <leader><right> :lnext<cr>
map <leader>te :terminal<cr>
:tnoremap <Esc> <C-\><C-n>
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
" Switch to visual mode in :terminal
:tnoremap <Esc> <C-\><C-n>

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
let g:ctrlp_show_hidden = 1

" Open Marked
:nnoremap <leader>m :silent !open -a /Applications/Marked\ 2.app '%:p'<cr>

" Show fugitive status line
set statusline=%<%f\ %h%m%r%{fugitive#statusline()}%=%-14.(%l,%c%V%)\ %P
set diffopt+=vertical

" Asynchronous Lint Engine (ALE)
" Limit linters used for JavaScript.
let g:ale_linters = { 'javascript': ['eslint', 'flow'] }
highlight clear ALEErrorSign " otherwise uses error bg color (typically red)
highlight clear ALEWarningSign " otherwise uses error bg color (typically red)
let g:ale_sign_error = 'X' " could use emoji
let g:ale_sign_warning = '?' " could use emoji
let g:ale_statusline_format = ['X %d', '? %d', '']
let g:ale_echo_msg_format = '%linter% says %s'
" Map keys to navigate between lines with errors and warnings.
nnoremap <leader>an :ALENextWrap<cr>
nnoremap <leader>ap :ALEPreviousWrap<cr>

" Open web browser
:nnoremap <leader>o :!open %<CR>

" Enable vim-javascript features
let g:javascript_plugin_flow = 1
let g:javascript_plugin_jsdoc = 1

" Enable Python nvim support
let g:python_host_prog  = '/usr/bin/python'
let g:python3_host_prog = '/Library/Frameworks/Python.framework/Versions/3.4/bin/python3'
