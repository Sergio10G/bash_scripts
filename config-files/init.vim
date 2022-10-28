:set number
:set relativenumber
:set tabstop=4
:set shiftwidth=4
:set noexpandtab
:set mouse=a
:set list
:set listchars=tab:¬-

call plug#begin()

Plug 'https://github.com/vim-airline/vim-airline' " Barra inferior
Plug 'https://github.com/preservim/nerdtree' " Explorador de archivos
Plug 'https://github.com/neoclide/coc.nvim'  " Auto Completion
Plug 'https://github.com/tc50cal/vim-terminal' " Vim Terminal
Plug 'https://github.com/preservim/tagbar' " Tagbar for code navigation

set encoding=UTF-8

call plug#end()

nnoremap <C-e> :NERDTreeToggle<CR>
nnoremap <C-t> :TerminalSplit bash<CR>
inoremap <silent><expr> <CR> coc#pum#visible() ? coc#pum#confirm()
                              \: "\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"

nmap <F8> :TagbarToggle<CR>
