syntax on
filetype plugin indent on
au FileType ruby setl sw=2 sts=2 et
let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#enabled = 1
set laststatus=2
set ttimeoutlen=50
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
colorscheme brogrammer 
execute pathogen#infect()
call pathogen#helptags()
set clipboard=unnamed
noremap <F3> :Autoformat<CR>
nnoremap <C-Left> :tabprevious<CR>
nnoremap <C-Right> :tabnext<CR>
noremap  <buffer> <silent> k gk
noremap  <buffer> <silent> j gj
inoremap  <Up>     <NOP>
inoremap  <Down>   <NOP>
inoremap  <Left>   <NOP>
inoremap  <Right>  <NOP>
noremap   <Up>     <NOP>
noremap   <Down>   <NOP>
noremap   <Left>   <NOP>
noremap   <Right>  <NOP>
hi Normal ctermbg=none
highlight NonText ctermbg=none
