 set nocompatible               " be iMproved
 filetype off                   " required!

 set rtp+=~/.vim/bundle/Vundle.vim
 call vundle#begin()

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
"Plugin 'ryanoasis/vim-devicons'
Plugin 'lsdr/monokai'

 Plugin 'ack.vim'

 " Clojure plugins
 Plugin 'vim-scripts/paredit.vim'
 Plugin 'eapache/rainbow_parentheses.vim'
 Plugin 'tpope/vim-fireplace'

 call vundle#end()

 syntax on

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

 let g:syntastic_javascript_checkers = ['jshint', 'jscs']

 " Limit length to 72 characters
 " http://blog.jeffscudder.com/2008/11/vim-line-length.html
 "match ErrorMsg /.\%>72v/

 set colorcolumn=72,80

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

" templates
au BufNewFile *.html 0r ~/.vim/templates/html5
au BufNewFile *.rb 0r ~/.vim/templates/ruby

" Highlight current line in insert mode
autocmd InsertEnter,InsertLeave * set cul!

" Clojure
au VimEnter * RainbowParenthesesToggle
au Syntax * RainbowParenthesesLoadRound
au Syntax * RainbowParenthesesLoadSquare
au Syntax * RainbowParenthesesLoadBraces
let g:paredit_electric_return = 0

if $TERM =~ 'rxvt'
  colorscheme Tomorrow-Night-Bright
endif
