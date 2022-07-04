" === Stand 23.06.2022 ===
" ========================

"""""""""""
" Plugins "
"""""""""""
call plug#begin('~/.vim/plugged')
Plug 'morhetz/gruvbox'
Plug 'Badacadabra/vim-archery'
Plug 'https://github.com/ayu-theme/ayu-vim'
Plug 'https://github.com/preservim/nerdtree'
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


"""""""""""""""""""""
" NERDTree Settings "
"""""""""""""""""""""
" Start NERDTree. If a file is specified, move the cursor to its window.
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * NERDTree | if argc() > 0 || exists("s:std_in") | wincmd p | endif

" Exit Vim if NERDTree is the only window remaining in the only tab.
autocmd BufEnter * if tabpagenr('$') == 1 && winnr('$') == 1 && exists('b:NERDTree') && b:NERDTree.isTabTree() | quit | endif
" Close the tab if NERDTree is the only window remaining in it.
autocmd BufEnter * if winnr('$') == 1 && exists('b:NERDTree') && b:NERDTree.isTabTree() | quit | endif


""""""""""
" Remaps "
""""""""""
" Leader Key
let mapleader = " "

" NERDTree utils
nnoremap <leader>n :NERDTreeFocus<CR>


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
map <F10> :set nospell <return>
map <F11> :setlocal spell spelllang=de <return>
map <F12> :setlocal spell spelllang=en <return>

" Open terminal on the right | below
nnoremap <leader>vt :vert term<Cr>
nnoremap <leader>tt :term<Cr>

" Disable search highlighting
" nnoremap <leader>n :noh<Cr>

" Open file explorer in the current root
nnoremap <leader>e :!explorer .<CR><CR>

" map :W to :w
cnoreabbrev <expr> W ((getcmdtype() is# ':' && getcmdline() is# 'W')?('w'):('W'))


