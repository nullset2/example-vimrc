execute pathogen#infect()
syntax on

filetype plugin indent on
au FileType python setl sw=4 sts=4 et
au FileType groovy setl sw=4 sts=4 et
au FileType java setl sw=4 sts=4 et
au FileType ruby setl sw=2 sts=2 et
au FileType yml setl sw=4 sts=4 et
au FileType gradle setl sw=4 sts=4 et
au FileType gsp setl sw=4 sts=4 et

set number
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
set backspace=indent,eol,start
set wildignore+=*/tmp/*,*/build/*,*.so,*.swp,*.zip
set clipboard=unnamedplus
set showmatch
set cursorline

noremap <F3> :Autoformat<CR>
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

hi CursorLine term=bold cterm=bold guibg=Grey40
hi MatchParen cterm=none ctermbg=none ctermfg=cyan
hi Normal ctermbg=none
hi NonText ctermbg=none

" CtrlP auto cache clearing.
" ----------------------------------------------------------------------------
function! SetupCtrlP()
 if exists("g:loaded_ctrlp") && g:loaded_ctrlp
  augroup CtrlPExtension
   autocmd!
   autocmd FocusGained  * CtrlPClearCache
   autocmd BufWritePost * CtrlPClearCache
  augroup END
 endif
endfunction
if has("autocmd")
 autocmd VimEnter * :call SetupCtrlP()
endif
