set nocompatible " Don't be afraid of change

let data_dir = has('nvim') ? stdpath('data') . '/site' : '~/.vim'
if empty(glob(data_dir . '/autoload/plug.vim'))
  silent execute '!curl -fLo '.data_dir.'/autoload/plug.vim --create-dirs  https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

call plug#begin()
Plug 'scrooloose/nerdtree'
Plug 'morhetz/gruvbox'
call plug#end()

set ruler " show the cursor position
set nu rnu " enables a mix of relative & absolute line numbers
set nowrap " stop wraping the lines, it's annoying
set tabstop=2 shiftwidth=2 expandtab
retab " reapply your tab settings
syntax on " enables syntax highlighting
set clipboard=unnamed " all operations such as yy, D, and P work with the clipboard. No need to prefix them with "* or "+
set nobackup   " do not keep backup files, it's 70's style cluttering
set noswapfile " do not write annoying intermediate swap files,

set background=dark
colorscheme gruvbox

" NERDTree
autocmd StdinReadPre * let s:std_in=1 " Start NERDTree when Vim is started without file arguments.
autocmd VimEnter * if argc() == 0 && !exists('s:std_in') | NERDTree | endif

nnoremap <C-n> :NERDTree<CR>
nnoremap <C-t> :NERDTreeToggle<CR>

autocmd BufWinEnter * if getcmdwintype() == '' | silent NERDTreeMirror | endif " Open the existing NERDTree on each new tab.
