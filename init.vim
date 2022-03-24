call plug#begin('C:/Users/Zuhaib/AppData/Local/nvim/plugged') 
	Plug 'neoclide/coc.nvim', {'branch': 'release'}
	Plug 'kyazdani42/nvim-web-devicons'
	Plug 'romgrk/barbar.nvim'
	Plug 'vim-airline/vim-airline'
	Plug 'vim-airline/vim-airline-themes'
	Plug 'sainnhe/gruvbox-material'
	Plug 'glepnir/dashboard-nvim'
	Plug 'nvim-lua/plenary.nvim'
	Plug 'nvim-telescope/telescope.nvim'
	Plug 'preservim/nerdtree'
	Plug 'preservim/nerdcommenter'
	Plug 'jiangmiao/auto-pairs'
	Plug 'tpope/vim-surround'
	Plug 'mg979/vim-visual-multi', {'branch': 'master'}
call plug#end()

set termguicolors
set encoding=utf-8
:set number
:set autoindent
:set tabstop=3
:set shiftwidth=3
:set smarttab
:set softtabstop=3
:set mouse=a


let mapleader = ','

"				 Theme
let g:gruvbox_material_enable_italic = 1
let g:gruvbox_material_transparent_background = 1
colorscheme gruvbox-material


"				Coc-Config

" coc configuration
let g:coc_global_extensions = [
  \ 'coc-snippets',
  \ 'coc-pairs',
  \ 'coc-tsserver',
  \ 'coc-eslint', 
  \ 'coc-prettier',
  \ 'coc-json',
  \ 'coc-pyright',
  \ 'coc-emmet',
  \ 'coc-html'
  \ ]


" 				Air-Line
let g:airline_powerline_fonts = 1
let g:airline_section_c = '%t'

if !exists('g:airline_symbols')
    let g:airline_symbols = {}
endif

" 			 Airline Symbols
let g:airline_left_sep = ''
let g:airline_left_alt_sep = ''
let g:airline_right_sep = ''
let g:airline_right_alt_sep = ''
let g:airline_symbols.branch = ''
let g:airline_symbols.readonly = ''
let g:airline_symbols.linenr = ''


" 				 Telescope
nnoremap <leader>ff <cmd>Telescope find_files<cr>
nnoremap <leader>fg <cmd>Telescope live_grep<cr>
nnoremap <leader>fb <cmd>Telescope buffers<cr>
nnoremap <leader>fh <cmd>Telescope help_tags<cr>


" Toggle NerdTree
nmap \\ :NERDTreeToggle<CR>

" Open terminal
nmap <leader>$v <C-w>v<C-w>l:terminal pwsh<CR>

" Copy word and repace another with the copied one
nmap <Leader>,w yiw
nmap <Leader>,p viwp

" Move betweeen buffers
nmap <Tab> :bnext<CR>
nmap <S-Tab> :bprevious<CR>

" Turn the word under cursor to upper case
inoremap <silent> <c-u> <Esc>viwUea

" Turn the current word into title case
inoremap <silent> <c-t> <Esc>b~lea

" Change text without putting the text into register
nnoremap c "_c
nnoremap C "_C
nnoremap cc "_cc

" Toggle search highlight
nnoremap <silent><expr> <Leader>hl (&hls && v:hlsearch ? ':nohls' : ':set hls')."\n"

" Yank from current cursor position to the end of the line (make it
" consistent with the behavior of D, C)
nnoremap Y y$

" Move the cursor based on physical lines, not the actual lines.
nnoremap <silent> <expr> j (v:count == 0 ? 'gj' : 'j')
nnoremap <silent> <expr> k (v:count == 0 ? 'gk' : 'k')
nnoremap <silent> ^ g^
nnoremap <silent> 0 g0

" Jump to matching pairs easily in normal mode
nnoremap ,<Tab> %

" Go to start or end of line easier
nnoremap H ^
xnoremap H ^
nnoremap L g_
xnoremap L g_

" Use <tab> to navigate down the completion menu.
inoremap <expr> <tab>  pumvisible()?"\<C-n>":"\<tab>"

" Reselect the text that has just been pasted
nnoremap <leader>v `[V`]

" Find and replace (like Sublime Text 3)
nnoremap <C-H> :%s/
xnoremap <C-H> :s/

" Edit and Reload init.vim quickly
nnoremap <silent> <leader>ev :edit $MYVIMRC<cr>
nnoremap <silent> <leader>sv :silent update $MYVIMRC <bar> source $MYVIMRC <bar>
    \ echomsg "Reloaded init.vim."<cr>

let g:python3_host_prog = '~/AppData/Local/Programs/Python/Python310/python'
