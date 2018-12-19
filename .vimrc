set sessionoptions-=options
set laststatus=2

" Enable mouse functionality
set mouse=a
if has("mouse_sgr")
    set ttymouse=sgr
else
    set ttymouse=xterm2
end

" Set some default tab/indent shiz
set smartindent
set tabstop=4
set shiftwidth=4
set expandtab

" 256 colors and no-compat
set t_Co=256
set nocp

" Syntax highlighting
syntax on

" Enable ruler and line numbers
set ruler
set number

" Highlight search pattern
set hlsearch

" Set colorscheme
colorscheme lucius
"colorscheme codeschool

" Allow saving of files as sudo when I forgot to start vim using sudo.
cmap w!! w !sudo tee > /dev/null %

" This is a special plugin for json formatting
au FileType json setlocal equalprg=python\ -m\ json.tool

" Jenkinsfile groovy formatting
au BufReadPost Jenkinsfile set syntax=groovy
au BufReadPost Jenkinsfile set filetype=groovy

" Uncomment the following to have Vim jump to the last position when
" reopening a file
if has("autocmd")
  au BufReadPost * if line("'\"") > 0 && line("'\"") <= line("$")
    \| exe "normal! g'\"" | endif
endif

" enable syntax folding
setlocal foldmethod=syntax

" folding remoap of spacebar to za
nnoremap <Space> za
vnoremap <Space> za

" Golang autocompletion stuffs
inoremap <expr><TAB>  pumvisible() ? "\<C-n>" : "\<TAB>"
let g:go_highlight_functions = 1
let g:go_highlight_methods = 1
let g:go_highlight_fields = 1
let g:go_highlight_types = 1
let g:go_highlight_operators = 1
let g:go_highlight_build_constraints = 1
let g:neocomplete#enable_at_startup = 1

" Terraform folding
let g:terraform_fold_sections=1

" Load pathogen if exists
"execute pathogen#infect()
filetype plugin indent on
runtime! autoload/pathogen.vim
if exists("g:loaded_pathogen")
  call pathogen#infect()
endif
