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
colors peaksea

execute pathogen#infect()

set laststatus=2
au BufRead,BufNewFile *.ts   setfiletype typescript

