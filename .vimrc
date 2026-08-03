" 1. System Settings
set encoding=utf-8
scriptencoding utf-8
filetype plugin indent on

" 2. Indentation
set tabstop=4
set shiftwidth=4
set expandtab

" 3. Visuals & Highlights
syntax on
highlight clear " Clear defaults first

highlight Comment    ctermfg=8
highlight String     ctermfg=2
highlight Constant   ctermfg=5
highlight LineNr     ctermfg=8

" Shell Variables (Bright Cyan)
highlight shVariable       ctermfg=6
highlight shDerefSimple    ctermfg=6
highlight shDerefVar       ctermfg=6
highlight shDeref          ctermfg=6

" Silencing the noise
highlight Statement  ctermfg=NONE
highlight Type       ctermfg=NONE
highlight Identifier ctermfg=NONE
highlight PreProc    ctermfg=NONE

" 4. Search Behavior
set ignorecase
set smartcase
set hlsearch
highlight Search     ctermfg=NONE ctermbg=3

" 5. UI & Mappings
set number

" Use ñ to clear search highlight
nnoremap ñ :noh<CR>
