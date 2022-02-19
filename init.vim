set nocompatible
filetype off

call plug#begin()

" Vim enhancements
Plug 'editorconfig/editorconfig-vim'
Plug 'justinmk/vim-sneak'
Plug 'tpope/vim-unimpaired'
Plug 'kyazdani42/nvim-web-devicons'
Plug 'folke/trouble.nvim'

" Gui enhancements
Plug 'itchyny/lightline.vim'
Plug 'machakann/vim-highlightedyank'
Plug 'andymass/vim-matchup'
Plug 'myusuf3/numbers.vim'

" Fuzzy finder
Plug 'airblade/vim-rooter'
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'

" Semantic language support
Plug 'neovim/nvim-lspconfig'
Plug 'nvim-lua/lsp_extensions.nvim'
Plug 'hrsh7th/cmp-nvim-lsp', {'branch': 'main'}
Plug 'hrsh7th/cmp-buffer', {'branch': 'main'}
Plug 'hrsh7th/cmp-path', {'branch': 'main'}
Plug 'hrsh7th/nvim-cmp', {'branch': 'main'}
Plug 'ray-x/lsp_signature.nvim'

" Only because nvim-cmp _requires_ snippets
Plug 'hrsh7th/cmp-vsnip', {'branch': 'main'}
Plug 'hrsh7th/vim-vsnip'

" Syntactic language support
Plug 'cespare/vim-toml'
Plug 'rust-lang/rust.vim'
Plug 'simrat39/rust-tools.nvim'
Plug 'plasticboy/vim-markdown'
Plug 'tikhomirov/vim-glsl'

" Debugging
Plug 'nvim-lua/plenary.nvim'
Plug 'mfussenegger/nvim-dap'

" Theme
Plug 'chriskempson/base16-vim'

call plug#end()

" deal with colors
let base16colorspace=256
set termguicolors
set background=dark
colorscheme base16-gruvbox-dark-hard
syntax on
hi Normal ctermbg=NONE
hi LineNr       guibg=dark

" Rust
lua << END
require('rust-tools').setup({})
require("trouble").setup({})
END

let g:rustfmt_autosave = 1
let g:rustfmt_emit_files = 1
let g:rustfmt_fail_silently = 0
let g:rust_clip_command = 'xclip -selection clipboard'

set splitright
set autochdir
set shell=/usr/bin/zsh
tnoremap <Esc> <C-\><C-n>
