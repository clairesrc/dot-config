call plug#begin('~/.vim/plugged')

Plug 'junegunn/vim-easy-align'

Plug 'scrooloose/nerdtree'

Plug 'fatih/vim-go'

Plug 'nsf/gocode'

Plug 'vim-airline/vim-airline'

Plug 'dense-analysis/ale'

Plug 'https://github.com/airblade/vim-gitgutter.git'

Plug 'https://github.com/godlygeek/tabular'

Plug 'https://github.com/roxma/vim-tmux-clipboard'

Plug 'https://github.com/tpope/vim-vinegar'

Plug 'Valloric/YouCompleteMe'

Plug 'ctrlpvim/ctrlp.vim'

Plug 'kien/rainbow_parentheses.vim'

Plug 'jiangmiao/auto-pairs'

Plug 'vim-syntastic/syntastic'

Plug 'dracula/vim', { 'as': 'dracula' }

Plug 'nathanaelkane/vim-indent-guides'

Plug 'severin-lemaignan/vim-minimap'

Plug 'editorconfig/editorconfig-vim'

call plug#end()

if (has("termguicolors"))
 set termguicolors
endif

colorscheme dracula

let g:airline_theme = 'dracula'


filetype plugin indent on    " required
set nocursorcolumn
set cursorline
set nu
set mouse=nvirh
set mousemodel=popup_setpos
set background=dark
set nowrap
set lazyredraw    " reduced screen flicker
set breakindent
set breakindentopt=sbr,shift:4
set showbreak=↪>\  " ↪ space
set autoindent smartindent tabstop=2 shiftwidth=2 softtabstop=2 expandtab
set whichwrap+=<,>,h,l,[,]
set nobackup
set nowritebackup
set noswapfile
set clipboard+=unnamedplus

set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*
hi IndentGuidesOdd  ctermbg=black
hi IndentGuidesEven ctermbg=darkgrey

let g:indent_guides_enable_on_vim_startup = 1

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

au FileType go set noexpandtab
au FileType go set shiftwidth=4
au FileType go set softtabstop=4
au FileType go set tabstop=4
au VimEnter * RainbowParenthesesToggle
au Syntax * RainbowParenthesesLoadRound
au Syntax * RainbowParenthesesLoadSquare
au Syntax * RainbowParenthesesLoadBraces

let g:go_highlight_build_constraints = 1
let g:go_highlight_extra_types = 1
let g:go_highlight_fields = 1
let g:go_highlight_functions = 1
let g:go_highlight_methods = 1
let g:go_highlight_operators = 1
let g:go_highlight_structs = 1
let g:go_highlight_types = 1

let g:go_auto_sameids = 1

let g:go_fmt_command = "goimports"

" Error and warning signs.
let g:ale_sign_error = '⤫'
let g:ale_sign_warning = '⚠'

" Enable integration with airline.
let g:airline#extensions#ale#enabled = 1

autocmd vimenter * NERDTree

nnoremap <C-Left> :tabprevious<CR>
nnoremap <C-Right> :tabnext<CR>
nnoremap <C-t>     <Esc>:tabnew<CR>
nnoremap <C-w>  :q<CR>
nnoremap <C-q>  :qa!<CR>

map <C-n> :NERDTreeToggle<CR>

