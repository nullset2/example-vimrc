syntax on
filetype plugin indent on
au FileType ruby setl sw=2 sts=2 et
set hidden
set ignorecase
set smartcase
set incsearch
set hlsearch
set expandtab
set tabstop=4
set softtabstop=4
set shiftwidth=4
set autoindent
set smartindent
set number
set backspace=indent,eol,start
colorscheme brighton
execute pathogen#infect()
call pathogen#helptags()
autocmd VimEnter * NERDTree
autocmd VimEnter * wincmd p
autocmd BufWinEnter * NERDTreeMirror
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
set clipboard=unnamed
noremap <F3> :Autoformat<CR>
noremap <C-t> :tabe<CR>
noremap <C-w> :tabclose<CR>
noremap <C-S-tab> :tabp<CR>
noremap <C-tab> :tabn<CR>
noremap <silent> <F8> :execute 'silent! tabmove ' . (tabpagenr()-2)<CR>
noremap <silent> <F9> :execute 'silent! tabmove ' . (tabpagenr()+1)<CR>
hi Normal ctermbg=none
highlight NonText ctermbg=none

