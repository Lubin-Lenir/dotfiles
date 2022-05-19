set statusline=%F%m%r%h%w\ [FORMAT=%{&ff}]\ [TYPE=%Y]\ [POS=%l,%v][%p%%]\ [BUFFER=%n]\ %{strftime('%c')}


syntax on
set number
set encoding=utf-8
set scrolloff=10
filetype plugin indent on
syntax enable




call plug#begin()
Plug 'preservim/nerdtree'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'jiangmiao/auto-pairs'
Plug 'vim-syntastic/syntastic'
Plug 'tpope/vim-fugitive'
Plug 'mattn/emmet-vim'    
Plug 'https://github.com/vim-python/python-syntax'
Plug 'alvan/vim-closetag'
Plug 'folke/tokyonight.nvim', { 'branch': 'main' }
Plug 'ryanoasis/vim-devicons'
Plug 'lukelbd/vim-statusline'
call plug#end()

highlight LineNr guifg=grey



"coc
" use <tab> for trigger completion and navigate to the next complete item
function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~ '\s'
endfunction

inoremap <silent><expr> <Tab>
       \ pumvisible() ? "\<C-n>" :
       \ <SID>check_back_space() ? "\<Tab>" :
       \ coc#refresh()
inoremap <expr> <Tab> pumvisible() ? "\<C-n>" : "\<Tab>"
inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"

se mouse+=a
