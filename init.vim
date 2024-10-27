syntax on           " enables syntax highlighting
set termguicolors   " better colors
set smartindent     " enable autoindents     
set number          " adds line numbers
" set relativenumber
set tabstop=4       " number of spaces in a <Tab>
set softtabstop=4   " number of spaces in a <Tab>
set expandtab       " number of spaces in a <Tab>
set shiftwidth=4    " number of spaces used for autoindents
set numberwidth=4   " columns used for the line number
set incsearch       " highlights the matched text pattern when searching
set nohlsearch
set splitbelow      " open splits intuitively
set splitright
set hidden          " navigate buffers without losing unsaved work
set scrolloff=8     " start scrolling when 8 lines from top or bottom
set undofile        " save undo history
set mouse=a         " enable mouse support
set ignorecase      " case insensitive search unless capital letters are used
set smartcase
set noshowmode
set signcolumn=number

call plug#begin('~/.config/nvim/plugged')

" color themes
Plug 'gruvbox-community/gruvbox'
Plug 'xiantang/darcula-dark.nvim'
Plug 'nightsense/carbonized'

" tools
Plug 'romgrk/barbar.nvim'                                           " barbar
Plug 'nvim-tree/nvim-web-devicons'                                  " optional: for file icons
Plug 'lewis6991/gitsigns.nvim'                                      " optional: for git status
Plug 'lewis6991/gitsigns.nvim'                                      " gitsigns
Plug 'lukas-reineke/indent-blankline.nvim'                          " indent-blankline
Plug 'itchyny/lightline.vim'                                        " lightline
Plug 'nvim-tree/nvim-tree.lua'                                      " nvim-tree
Plug 'nvim-treesitter/nvim-treesitter', { 'do': ':TSUpdate' }       " treesitter
Plug 'nvim-telescope/telescope.nvim'                                " telescope
Plug 'nvim-lua/plenary.nvim'                                        " telescope requires plenary
Plug 'nvim-telescope/telescope-fzf-native.nvim', {'do': 'make' }    " optional: recommended by telescope docs
Plug 'tpope/vim-fugitive'                                           " vim-fugitive
Plug 'preservim/nerdcommenter'                                      " nerdcommenter
Plug 'neovim/nvim-lspconfig'                                        " lsp

" rust
Plug 'rust-lang/rust.vim'
Plug 'racer-rust/vim-racer'

call plug#end()

colorscheme darcula-dark
" colorscheme carbonized-dark

" remaps
let mapleader = ' '

nnoremap <C-p> :Telescope find_files<Cr>
nnoremap <C-e> :NvimTreeOpen<Cr>
nnoremap <C-f> :RustFmt<Cr>
nnoremap <C-p> :RustPlay<Cr>
nnoremap <C-t> :RustTest<Cr>

lua require('plugins')

