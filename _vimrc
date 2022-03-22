" === Stand 11.03.2022 ===
" ========================

call plug#begin('~/.vim/plugged')
Plug 'morhetz/gruvbox'
Plug 'Badacadabra/vim-archery'
Plug 'https://github.com/ayu-theme/ayu-vim'
call plug#end()

" Colorscheme | ayu-vim
set termguicolors
set background=dark
colorscheme ayu

" === Indentation Options ===
set tabstop=4 softtabstop=4
set shiftwidth=4
set expandtab
set smartindent

" === Search Options ===
set hlsearch
set smartcase
set incsearch

" === Interface Options ===
set nowrap
set noswapfile
set encoding=utf-8
set fileencodings=ucs-bom,utf-8,latin1
set noerrorbells
set nu relativenumber
set confirm
set splitbelow splitright
syntax on
set signcolumn=auto
set colorcolumn=80
set textwidth=0 wrapmargin=0
let mapleader = " "
let python_highlight_all = 1


" === Status line ===
" ===================

set statusline=
set statusline+=\ %M
set statusline+=\ %F
set statusline+=%= " Right side of statusline
set statusline+=\ %y
set statusline+=\ %{&fileencoding?&fileencoding:&encoding}
set statusline+=\ %c:%l/%L
set statusline+=\ [%n]
set statusline+=\ 

" === Flake8 linter for Python (pip install flake8) ===
" =====================================================

" Flake8 linter for Python  Run linter on save
" autocmd BufWritePost *.py call Flake8()

" Show quickfixwindow display signs in signcolumn position of quickfix
" let g:flake8_show_quickfix=1
" let g:flake8_show_in_gutter=1
" let g:flake8_show_in_file=1
" let g:flake8_quickfix_location="topleft"

" to use colors defined in the colorscheme
" highlight link Flake8_Error      Error
" highlight link Flake8_Warning    WarningMsg
" highlight link Flake8_Complexity WarningMsg
" highlight link Flake8_Naming     WarningMsg
" highlight link Flake8_PyFlake    WarningMsg


" === LaTeX ===
" =============
" Navigation and Compiling
nnoremap <leader><Space> /<++><Cr>v3lx:noh<Cr>i
nnoremap <C-Cr> :w \| !pdflatex *.tex<Cr><Cr>
nnoremap <C-b>  :!biber *.bcf<Cr>

" Quotation marks
nnoremap <leader>" i{\glqq \grqq}<Esc>5hi


" === Spellckecking using F Keys ===
" ==================================
map <F7> :set nospell <return>
map <F8> :setlocal spell spelllang=de <return>
map <F9> :setlocal spell spelllang=en <return>


" === Quality of Life Keymaps ===
" ===============================

" map :W to :w
cnoreabbrev <expr> W ((getcmdtype() is# ':' && getcmdline() is# 'W')?('w'):('W'))

" Split Navigation
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

" Move text | Identation will get updated
vnoremap J :m '>+1<Cr>gv=gv
vnoremap K :m '<-2<Cr>gv=gv

" Open terminal on the right | below
nnoremap <leader>vt :vert term<Cr>
nnoremap <leader>tt :term<Cr>

" Disable search highlighting
nnoremap <leader>n :noh<Cr>

" Open file explorer in the current root
nnoremap <leader>e :!explorer .<CR><CR>

