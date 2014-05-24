set nocompatible

colorscheme molokai

if has('vim_starting')
  set runtimepath+=~/.vim/bundle/neobundle.vim
  call neobundle#rc(expand('~/.vim/bundle/'))
endif

" originalrepos on github
NeoBundle 'Shougo/neobundle.vim'
NeoBundle 'Shougo/vimproc'
NeoBundle 'Shougo/vimshell'
NeoBundle 'Shougo/unite.vim'
NeoBundle 'Shougo/neocomplcache'
" NeoBundle 'Shougo/neosnippet.vim'
NeoBundle 'scrooloose/syntastic'
NeoBundle 'LeafCage/yankround.vim'
NeoBundle 'kien/ctrlp.vim'
NeoBundle 'othree/html5.vim'
NeoBundle 'hail2u/vim-css3-syntax'
NeoBundle 'kchmck/vim-coffee-script'
NeoBundle 'nathanaelkane/vim-indent-guides'
NeoBundle 'thinca/vim-quickrun'

au BufRead,BufNewFile,BufReadPre *.coffee   set filetype=coffee
autocmd BufWritePost *.coffee silent make! -cb

filetype plugin indent on
filetype indent on
syntax on

set number
set autoindent
set title
set showcmd
set tabstop=4 shiftwidth=2 softtabstop=2
set expandtab

"---
" indent_guides
"---
let g:indent_guides_start_level=2
let g:indent_guides_auto_colors=0
let g:indent_guides_enable_on_vim_startup=0
let g:indent_guides_color_change_percent=20
let g:indent_guides_guide_size=1
let g:indent_guides_space_guides=1

hi IndentGuidesOdd  ctermbg=235
hi IndentGuidesEven ctermbg=237
au FileType coffee,ruby,javascript,python IndentGuidesEnable
nmap <silent><Leader>ig <Plug>IndentGuidesToggle

"---
" template setting
"---
autocmd BufNewFile *.html 0r $HOME/.vim/template/template.html
autocmd BufNewFile *.cpp 0r $HOME/.vim/template/template.cpp

let g:syntastic_cpp_compiler = 'g++-4.8'
let g:syntastic_cpp_compiler_options = ' -std=c++11 '

