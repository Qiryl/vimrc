call plug#begin('~/.vim/plugged')

Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }

Plug 'joshdick/onedark.vim'
Plug 'rakr/vim-one'
Plug 'ChristianChiarulli/nvcode-color-schemes.vim'
Plug 'wadackel/vim-dogrun'
Plug 'dtinth/vim-colors-dtinth256'
Plug 'rhysd/vim-color-shiny-white'
Plug 'lucasprag/simpleblack'
Plug 'arcticicestudio/nord-vim'

Plug 'vim-airline/vim-airline'
Plug 'powerman/vim-plugin-ruscmd'
Plug 'neoclide/coc.nvim', {'branch': 'release'}           
Plug 'dense-analysis/ale'

" cpp
Plug 'octol/vim-cpp-enhanced-highlight', { 'for': 'cpp' }

" Haskell
Plug 'neovimhaskell/haskell-vim', { 'for': 'haskell' }
Plug 'alx741/vim-stylishask' 
Plug 'mpickering/hlint-refactor-vim'

" Python
Plug 'vim-python/python-syntax', { 'for': 'python' }

" Java
Plug 'artur-shaik/vim-javacomplete2'
Plug 'uiiaoo/java-syntax.vim'

call plug#end()

" make a config for:
" aiarline +
" mapping for autocomplete +

" python +
" cpp +
" haskell +
" java +
" rust

syntax on
filetype plugin indent on
colorscheme onedark
set background=dark
set number
set expandtab
set tabstop=4 softtabstop=4
set shiftwidth=4
set nowrap
set smartindent
set smartcase
set incsearch
set hidden
set noswapfile
set nobackup
set nowritebackup
set cmdheight=2
set updatetime=300
set showmatch
set signcolumn=yes
set cursorline
set mouse=a
set clipboard=unnamedplus

noremap <Leader>Y "+y
noremap <Leader>P "+p

if (has("termguicolors"))
    set termguicolors
endif

" use <tab> for trigger completion and navigate to the next complete item
function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~ '\s'
endfunction

inoremap <silent><expr> <Tab>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<Tab>" :
      \ coc#refresh()

inoremap <silent><expr> <c-space> coc#refresh()
inoremap <silent><expr> <NUL> coc#refresh()
inoremap <expr> <Tab> pumvisible() ? "\<C-n>" : "\<Tab>"
inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"

" ale
let g:ale_disable_lsp = 1
" let g:ale_sign_column_always = 1
let g:ale_sign_error = '>'
let g:ale_sign_warning = '-'
let g:ale_set_highlights = 0

" airline 
if !exists('g:airline_symbols')
  let g:airline_symbols = {}
endif
let g:airline_symbols_ascii = 1
let g:airline#parts#ffenc#skip_expected_string='utf-8[unix]'
let g:airline_section_z = '%3l/%L:%2v'

" cpp
let g:cpp_class_scope_highlight = 1
let g:cpp_class_decl_highlight = 1
let g:cpp_member_variable_highlight = 1
let g:cpp_posix_standard = 1
let g:cpp_experimental_simple_template_highlight = 1
let g:cpp_concepts_highlight = 1

" Python 
let g:python_highlight_all = 1

" Haskell
let g:haskell_classic_highlighting = 1

