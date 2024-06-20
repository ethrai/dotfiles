syntax on
filetype plugin on
set nocompatible
set termguicolors

let mapleader=" "

" beam in normal mode
" let &t_SI = "\e[6 q"
" let &t_EI = "\e[2 q"

set nu
set relativenumber
set bg=dark
set mouse=a

set tabstop=4 softtabstop=4
set shiftwidth=4
set expandtab 
set smartindent 

set noswapfile
set nobackup

" history
set history=300


nnoremap <leader>n :noh <CR>
nnoremap <leader>w :w <CR>
nnoremap <leader>q :q <CR>
nnoremap <leader>Q :q! <CR>

call plug#begin()

Plug 'tpope/vim-surround'
Plug 'tpope/vim-commentary'
Plug 'morhetz/gruvbox'
Plug 'easymotion/vim-easymotion'
Plug 'airblade/vim-gitgutter'
Plug 'vim-airline/vim-airline'
Plug 'machakann/vim-highlightedyank'
Plug 'terryma/vim-multiple-cursors'
Plug 'tommcdo/vim-exchange'
Plug 'michaeljsmith/vim-indent-object'
Plug 'vim-scripts/argtextobj.vim'
Plug 'vim-scripts/ReplaceWithRegister'
Plug 'kana/vim-textobj-user'
Plug 'kana/vim-textobj-entire'
Plug 'dbakker/vim-paragraph-motion'
Plug 'adelarsq/vim-matchit'
Plug 'unblevable/quick-scope'
Plug 'catppuccin/vim', {'as' : 'catppuccin' }
Plug 'christoomey/vim-tmux-navigator'

call plug#end()

" Plugin settings
map , <Plug>(easymotion-prefix)

" Trigger a highlight in the appropriate direction when pressing these keys:
let g:qs_highlight_on_keys = ['f', 'F', 't', 'T']

" Trigger a highlight only when pressing f and F.
let g:qs_highlight_on_keys = ['f', 'F']


" Theming
" let g:gruvbox_(option) = '(value)'
" let g:gruvbox_contrast_dark='medium'

" colorscheme gruvbox
colorscheme catppuccin_mocha
let g:airline_theme = 'catppuccin_mocha'


set langmap=йq,цw,уe,кr,еt,нy,гu,шi,щo,зp,х[,ъ],фa,ыs,вd,аf,пg,рh,оj,лk,дl,ж\\;,э',ё\\,яz,чx,сc,мv,иb,тn,ьm,б\\,,ю.,ЙQ,ЦW,УE,КR,ЕT,НY,ГU,ШI,ЩO,ЗP,Х{,Ъ},ФA,ЫS,ВD,АF,ПG,РH,ОJ,ЛK,ДL,Ж:,Э\\",ЯZ,ЧX,СC,МV,ИB,ТN,ЬM,Б<,Ю>,Ё/|


