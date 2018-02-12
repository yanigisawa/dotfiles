" execute pathogen#infect()

set nocompatible
filetype off

" ### Setting Up Vundle
set rtp+=~/.vim/bundle/vundle/
" call vundle#rc()

" This is the Vundle package, which can be found on GitHub.
" For GitHub repos, you specify plugins using the
" 'user/repository' format
" Plugin 'gmarik/vundle'
" 
" " We could also add repositories with a ".git" extension
" Plugin 'scrooloose/nerdtree.git'
" 
" " To get plugins from Vim Scripts, you can reference the plugin
" " by name as it appears on the site
" Plugin 'Buffergator'
" 
" " Track the engine.
" Plugin 'SirVer/ultisnips'
" 
" " Snippets are separated from the engine. Add this if you want them:
" Plugin 'honza/vim-snippets'

" Trigger configuration. Do not use <tab> if you use https://github.com/Valloric/YouCompleteMe.
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<tab>"
let g:UltiSnipsJumpBackwardTrigger="<s-tab>"

let g:UltiSnipsEditSplit="horizontal"

" Now we can turn our filetype functionality back on
filetype plugin indent on

" ### End Vundle Setup





set shell=sh

set autoindent
set smartindent
" set tabstop=2
" set shiftwidth=2
autocmd Filetype html setlocal ts=2 sts=2 sw=2
autocmd Filetype ruby setlocal ts=2 sts=2 sw=2
autocmd Filetype javascript setlocal ts=2 sts=2 sw=2
autocmd Filetype python setlocal ts=4 sts=4 sw=4
au BufNewFile,BufRead *.go setlocal ts=4 sw=4 sts=4
set expandtab
set showmatch
set incsearch
set number
set vb t_vb=
set nowrap
set shiftround
set backspace=indent,eol,start

set pastetoggle=<F2>

syntax on

nnoremap <silent> <Space> @=(foldlevel('.')?'za':"\<Space>")<CR>
vnoremap <Space> zf

"nnoremap <space> zA
"" nnoremap <silent> <Space> @=(foldlevel('.')?'za':"\<Space>")<CR>
"vnoremap <space> zF
 
set foldmethod=indent
" set foldlevelstart=0

set spell


" Remap keys for easy navigation between window panes
map <C-J> <C-W>j
map <C-K> <C-W>k
map <C-H> <C-W>h
map <C-L> <C-W>l


map <F6> {V}k:!sort<CR>
