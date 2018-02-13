execute pathogen#infect()
set term=screen-256color
set t_ut=
syntax on
colorscheme onedark
let g:airline_theme='onedark'
filetype plugin indent on
nmap F <Plug>(easymotion-prefix)s
set background=dark

filetype plugin indent on
set tabstop=4
set shiftwidth=4
set expandtab
set number relativenumber

augroup numbertoggle
    autocmd!
    autocmd BufEnter,FocusGained,InsertLeave * set relativenumber
    autocmd BufLeave,FocusLost,InsertEnter * set norelativenumber
augroup END

let g:ctrlp_working_path_mode=0
" save using F2
nmap <F2> :update<CR>
vmap <F2> <Esc><F2>gv
imap <F2> <Esc><F2>
" add semicolon to the end of line
map ; A;<Esc>
let g:ctrlp_max_fields=0
let g:ctrlp_max_depth=40
"let g:ctrlp_custom_ignore = {
"            \ 'dir': '\.git$\|vendor\|node_modules\|log\|tmp$',
"            \ 'file': '\.so$\|\.dat$|\.DS_Store$'
"            \}
" use ag for ctrlp
if executable('ag')
    let g:ctrlp_user_command = 'ag %s -i --nocolor --nogroup --hidden --ignore .git --ignore .docker --ignore vendor --ignore node_modules -g ""'
    "let g:ctrlp_user_command = 'ag %s -i --nocolor --nogroup --hidden --ignore .git --ignore log -g ""'
endif
"set wildignore+=node_modules/**,vendor/**
set autoindent smartindent
" exit insert mode and save
inoremap jj <ESC>:update<CR>
" brackets
ino ( ()<left>
ino (<CR> (<CR>)<Esc>O
ino [ []<left>
ino [<CR> [<CR>]<Esc>O
ino { {}<left>
ino {<CR> {<CR>}<Esc>O
ino (; ();<left><left>

nnoremap <C-J> <C-W>j
nnoremap <C-K> <C-W>k
nnoremap <C-L> <C-W>l
nnoremap <C-H> <C-W>h

set showcmd
set visualbell

set ignorecase
set hlsearch

set noswapfile

set splitbelow
set splitright

set cursorline

set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
"let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

if executable('ag')
    let g:ackprg = 'ag --nogroup --nocolor --column'
endif

set tags=.git/tags,tags;

tnoremap <Esc> <C-W>N
tnoremap § <C-W>N:q!<CR>

nnoremap § :term<CR>
