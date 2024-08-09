" Set stuff
set number

set cursorline

set wrap


" Better search
set ignorecase

set smartcase

set incsearch

set nohlsearch


" Scrolling
set scrolloff=8


" Set encoding
set encoding=utf-8

" Set spacing
set linespace=4
set tabstop=4
set shiftwidth=4

" Plugins
call plug#begin()
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'preservim/nerdtree'
Plug 'neovim/nvim-lspconfig'
Plug 'ms-jpq/coq_nvim', {'branch': 'coq'}
Plug 'ms-jpq/coq.artifacts', {'branch': 'artifacts'}
" Plug 'alpertuna/vim-header'
call plug#end()

" let g:header_field_author = 'Mr. Pascal'
" let g:header_auto_add_header = 1
" let g:header_field_modified_by = 0

" map <F4> :AddHeader<CR>
" map <F5> :AddAGPLicense<CR>


nnoremap <leader>n :NERDTreeFocus<CR>
nnoremap <C-n> :NERDTree<CR>
nnoremap <C-t> :NERDTreeToggle<CR>
nnoremap <C-f> :NERDTreeFind<CR>


" Enable COQ
let g:coq_settings = { 'auto_start': 'shut-up' }

" LSP settings
lua << EOF
local lspconfig = require('lspconfig')
local coq = require('coq')  -- Import COQ

-- LSP servers setup
lspconfig.clangd.setup(coq.lsp_ensure_capabilities{})
lspconfig.pylsp.setup(coq.lsp_ensure_capabilities{})
lspconfig.lua_ls.setup(coq.lsp_ensure_capabilities{})
EOF


" Syntax on
syntax on
