 set nocompatible               " be iMproved
 filetype off                   " required!

 set rtp+=~/.vim/bundle/vundle/
 call vundle#rc()

 " let Vundle manage Vundle
 " required!
 Bundle 'gmarik/vundle'

 Bundle 'scrooloose/nerdtree'
 Bundle 'vim-scripts/bufexplorer.zip'
 Bundle 'git://git.wincent.com/command-t.git'

"Bundle 'Lokaltog/vim-powerline'
 Bundle 'altercation/vim-colors-solarized'

 Bundle 'scrooloose/nerdcommenter'
 Bundle 'scrooloose/syntastic'
 Bundle 'tpope/vim-surround'
 Bundle 'ervandew/supertab'

 Bundle 'ack.vim'

 filetype plugin indent on     " required!

 let mapleader = ","
 set number
 set mouse=a
 set autoread

 set expandtab
 set shiftwidth=2
 set softtabstop=2
 set tabstop=2

 map <F2> :NERDTreeToggle<CR>
 "Change current directory when changing root node
 let NERDTreeChDirMode=2

 " Limit length to 72 characters
 " http://blog.jeffscudder.com/2008/11/vim-line-length.html
 match ErrorMsg /.\%>72v/

" Strip trailing whitespace
function! <SID>StripTrailingWhitespaces()
" Preparation: save last search, and cursor position.
    let _s=@/
    let l = line(".")
    let c = col(".")
" Do the business:
    %s/\s\+$//e
" Clean up: restore previous search history, and cursor position
    let @/=_s
    call cursor(l, c)
endfunction
autocmd BufWritePre * :call <SID>StripTrailingWhitespaces()
