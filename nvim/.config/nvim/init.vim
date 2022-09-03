" Use :options or :h option to find what each setting does
set exrc
set relativenumber
set nu
" This stops the hl after find an item in search
set nohlsearch
" this stops sounds coming for errors
" set noerrorbells
set hidden

set tabstop=2 softtabstop=2
set shiftwidth=2
set smartindent
set expandtab

set noswapfile
set nobackup
set undodir=~/.vim/undodir
set undofile

set incsearch
set termguicolors
" set guicursor=

set scrolloff=8
set colorcolumn=80
set signcolumn=yes

" More space for displaying messages
set cmdheight=2

set ignorecase
set smartcase
set cursorline
" set cursorcolumn

" Enables fuzzy search
set path+=**
set wildmenu

"set wildignore+=*.pyc
"set wildignore+=*_build/*
set wildignore+=**/coverage/*
set wildignore+=**/node_modules/*
set wildignore+=**/android/*
set wildignore+=**/ios/*
set wildignore+=**/.git/*

call plug#begin('~/.local/share/nvim')
Plug 'gruvbox-community/gruvbox'

" Status bar
" Plug 'feline-nvim/feline.nvim'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

" Neovim Tree shitter
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
" Plug 'nvim-treesitter/playground'
" Plug 'romgrk/nvim-treesitter-context'
Plug 'preservim/nerdtree'

" telescope requirements...
Plug 'nvim-lua/popup.nvim'
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
call plug#end()

colorscheme gruvbox
highlight Normal guibg=none

let mapleader = " "
nnoremap <leader>ps :lua require('telescope.builtin').grep_string({ search = vim.fn.input("Grep for > ") }) <cr> 
nnoremap <leader>ff <cmd>Telescope find_files<cr>
nnoremap <leader>fg <cmd>Telescope live_grep<cr>

"nnoremap <leader>n :NERDTreeFocus<CR>
"nnoremap <C-n> :NERDTree<CR>
nnoremap <C-f> :NERDTreeFind<CR>
nnoremap <leader>n :NERDTreeToggle<CR>

" :lua require('feline').setup()
