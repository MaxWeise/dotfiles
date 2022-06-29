" === Stand 23.06.2022 ===
" ========================

"""""""""""
" Plugins "
"""""""""""
call plug#begin('~/.vim/plugged')
Plug 'morhetz/gruvbox'
Plug 'Badacadabra/vim-archery'
Plug 'https://github.com/ayu-theme/ayu-vim'
call plug#end()



""""""""""""""""""""
" General Settings "
""""""""""""""""""""
set termguicolors
set background=dark
colorscheme gruvbox

" Indentation Options
set tabstop=4 softtabstop=4
set shiftwidth=4
set expandtab
set smartindent

" Search Options
set hlsearch
set smartcase
set incsearch

" Interface Options
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
let python_highlight_all = 1



""""""""""""
" Skeleton "
""""""""""""
" Latex Skeleton
if has("autocmd")
    augroup Tex
        au BufNewFile *.tex 0r ~/.vim/templates/skeleton.tex
    augroup end
endif



"""""""""""""""
" Status line "
"""""""""""""""
set statusline=
set statusline+=\ %M
set statusline+=\ %F
set statusline+=%= " Right side of statusline
set statusline+=\ %y
set statusline+=\ %{&fileencoding?&fileencoding:&encoding}
set statusline+=\ %c:%l/%L
set statusline+=\ [%n]
set statusline+=\ 


""""""""""
" Remaps "
""""""""""
" Leader Key
let mapleader = " "


" === General Remaps ===
" Make all windows equal height and width
nnoremap <leader>g <C>w=
" Split Navigation
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

" Move text | Identation will get updated
vnoremap J :m '>+1<Cr>gv=gv
vnoremap K :m '<-2<Cr>gv=gv

" Spellckecking using F Keys
map <F7> :set nospell <return>
map <F8> :setlocal spell spelllang=de <return>
map <F9> :setlocal spell spelllang=en <return>

" Open terminal on the right | below
nnoremap <leader>vt :vert term<Cr>
nnoremap <leader>tt :term<Cr>

" Disable search highlighting
nnoremap <leader>n :noh<Cr>

" Open file explorer in the current root
nnoremap <leader>e :!explorer .<CR><CR>

" map :W to :w
cnoreabbrev <expr> W ((getcmdtype() is# ':' && getcmdline() is# 'W')?('w'):('W'))


" === LaTeX specific remaps ===
" Compiling
nnoremap <C-Cr> :w \| !pdflatex *.tex<Cr><Cr>
nnoremap <C-b>  :!biber *.bcf<Cr>

" Navigation
nnoremap <leader><Space> /<++><Cr>v3lx:noh<Cr>i

" Open pdf-file
nnoremap <leader><F1> :!start *.pdf<Cr>

" Quotation marks
nnoremap <leader>" i{\glqq \grqq}<Esc>5hi

" Section headings
inoremap <F2> <ESC>0i\chapter{<++>}<CR><++><ESC>k0
inoremap <F3> <ESC>0i\section{<++>}<CR><++><ESC>k0
inoremap <F4> <ESC>0i\subsection{<++>}<CR><++><ESC>k0


