 set nocompatible               " be iMproved
 filetype off                   " required!

 set rtp+=~/.vim/bundle/vundle/
 call vundle#rc()

 " let Vundle manage Vundle
 " required!
 Plugin 'gmarik/vundle'

 Plugin 'scrooloose/nerdtree'
 Plugin 'vim-scripts/bufexplorer.zip'
 Plugin 'git://git.wincent.com/command-t.git'

"Plugin 'Lokaltog/vim-powerline'
 Plugin 'altercation/vim-colors-solarized'

 Plugin 'scrooloose/nerdcommenter'
 Plugin 'scrooloose/syntastic'
 Plugin 'tpope/vim-surround'
"Plugin 'ervandew/supertab'
 Plugin 'Valloric/YouCompleteMe'

 Plugin 'ack.vim'

 filetype plugin indent on     " required!

 let mapleader = ","
 set number
 set mouse=a
 set autoread

 set expandtab
 set shiftwidth=2
 set softtabstop=2
 set tabstop=2

 " https://github.com/karma-runner/karma/issues/199/
 set backupcopy=yes

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

if $TERM == 'rxvt-unicode-256color'
  colorscheme solarized
endif
