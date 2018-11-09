:set number
:set autoindent

map <C-t><up> :tabr<cr>
map <C-t><down> :tabl<cr>
map <C-t><left> :tabp<cr>
map <C-t><right> :tabn<cr>
map <C-n> :NERDTreeToggle<CR>


if ! has("gui_running")
    set t_Co=256
endif
set background=dark

set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.
" plugin on GitHub repo
Plugin 'tpope/vim-fugitive'
" plugin from http://vim-scripts.org/vim/scripts.html

Plugin 'crucerucalin/peaksea.vim'

Plugin 'leafgarland/typescript-vim'

Plugin 'scrooloose/nerdtree'

Plugin 'Xuyuanp/nerdtree-git-plugin'

Plugin 'nathanaelkane/vim-indent-guides'

Plugin 'severin-lemaignan/vim-minimap'

call vundle#end()            " required
filetype plugin indent on    " required

colorscheme peaksea
autocmd vimenter * NERDTree

" autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
hi IndentGuidesOdd  ctermbg=black
hi IndentGuidesEven ctermbg=darkgrey

let g:indent_guides_enable_on_vim_startup = 1

syntax on

set laststatus=2
au BufRead,BufNewFile *.ts   setfiletype typescript
