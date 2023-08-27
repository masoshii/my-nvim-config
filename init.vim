" SET COMMANDS
set number
set autoindent
set tabstop=4
set shiftwidth=4
set smarttab
set softtabstop=4
set mouse=a
set encoding=UTF-8

" PLUGINS
call plug#begin()

Plug 'https://github.com/tpope/vim-surround' " surround
Plug 'https://github.com/preservim/nerdtree' " nerdtree
Plug 'https://github.com/tpope/vim-commentary' " GCC comment
Plug 'https://github.com/vim-airline/vim-airline' " airline
Plug 'https://github.com/vim-airline/vim-airline-themes' " airline themes
Plug 'https://github.com/morhetz/gruvbox' " gruvbox theme
Plug 'https://github.com/lifepillar/pgsql.vim' " pgsql syntax
Plug 'https://github.com/ap/vim-css-color' " css color viewer
Plug 'https://github.com/neoclide/coc.nvim', {'branch': 'release'} " autocompletion
Plug 'https://github.com/ryanoasis/vim-devicons' " icons
Plug 'https://github.com/preservim/tagbar' " tagbar
Plug 'https://github.com/tc50cal/vim-terminal' " terminal
call plug#end()


" PLUGIN DEFAULTS
let g:airline_theme='minimalist'
nmap <F8> :TagbarToggle<CR>
nmap <F6> :NERDTreeToggle<CR>

" NVIM DEFAULTS
colorscheme gruvbox

" COC REMAPS
function! CheckBackspace() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

inoremap <silent><expr> <TAB> coc#pum#visible() ? coc#pum#confirm() : "\<TAB>"

" NVIM AUTOCMDS
autocmd FileType python map <buffer> <F9> :w<CR>:exec '!python3' shellescape(@%, 1)<CR>
autocmd FileType python imap <buffer> <F9> <esc>:w<CR>:exec '!python3' shellescape(@%, 1)<CR>
