source ~/.vim/vimrc
"set shiftwidth=2
"set softtabstop=2
set tabstop=2
colorscheme vibrantink
"autocmd VimEnter * NERDTree
"autocmd VimEnter * wincmd p

"Change current directory when changing root node
let NERDTreeChDirMode=2

"let mapleader=","
map <F2> :NERDTreeToggle<CR>

"Lignes de plus de 72 caractères
"en tant qu'erreur
"http://blog.jeffscudder.com/2008/11/vim-line-length.html
"match ErrorMsg '\%>80v.\+'
match ErrorMsg /.\%>72v/
