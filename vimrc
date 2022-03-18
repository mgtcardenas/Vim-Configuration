let data_dir = has('nvim') ? stdpath('data') . '/site' : '~/.vim'
if empty(glob(data_dir . '/autoload/plug.vim'))
  silent execute '!curl -fLo '.data_dir.'/autoload/plug.vim --create-dirs  https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

call plug#begin()
Plug 'scrooloose/nerdtree'
call plug#end()

set nu rnu " enables a mix of relative & absolute line numbers
set nowrap " stop wraping the lines, it's annoying
set tabstop=2 shiftwidth=2 expandtab
retab " reapply your tab settings
syntax on " enables syntax highlighting
set clipboard=unnamed " all operations such as yy, D, and P work with the clipboard. No need to prefix them with "* or "+
