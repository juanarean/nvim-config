"██╗███╗░░██╗██╗████████╗░░░██╗░░░██╗██╗███╗░░░███╗
"█║████╗░██║██║╚══██╔══╝░░░██║░░░██║██║████╗░████║
"██║██╔██╗██║██║░░░██║░░░░░░╚██╗░██╔╝██║██╔████╔██║
"██║██║╚████║██║░░░██║░░░░░░░╚████╔╝░██║██║╚██╔╝██║
"██║██║░╚███║██║░░░██║░░░██╗░░╚██╔╝░░██║██║░╚═╝░██║
"╚═╝╚═╝░░╚══╝╚═╝░░░╚═╝░░░╚═╝░░░╚═╝░░░╚═╝╚═╝░░░░░╚═╝
"𝕓𝕪 𝕁𝕠𝕒𝕢𝕦𝕚𝕟 𝕍𝕒𝕣𝕖𝕝𝕒 𝕐𝕋               
"https://www.youtube.com/channel/UCw1Ipy5_P1OL0zUJMfYC7-A					    

"---------------------------------vim config----------------------------

syntax on
set number
set mouse=a
set clipboard=unnamed
set showcmd
set ruler
set encoding=utf-8
set showmatch
set sw=2
set relativenumber
let mapleader = " "
set laststatus=2
set backspace=2
set guioptions-=T
set guioptions-=L
set pyxversion=3
"Get out of insert mode 
"Salir de modo insertar
imap jk <Esc>
imap <C-c> <Esc>l
"mueve bloques de codigo en modo visual o V-Line
"Moves Blocks of code in visual mode or V-Line
xnoremap K :move '<-2<CR>gv-gv
xnoremap J :move '>+1<CR>gv-gv 

" Better indenting
" Mejor Indentación
vnoremap < <gv
vnoremap > >gv

"-------------------------------Plugins-------------------------------
"Plugins
call plug#begin('~/.vim/plugged')
" Temas
" Themes
Plug 'tomasiser/vim-code-dark'
Plug 'sonph/onehalf', { 'rtp': 'vim'  }
Plug 'dracula/vim', { 'as': 'dracula'  }
Plug 'arcticicestudio/nord-vim'
" Iconos
Plug 'ryanoasis/vim-devicons'
"IDE
Plug 'easymotion/vim-easymotion'
 "Nerdtree
Plug 'preservim/nerdtree'
"Navigate with C-h C-l C-j C-k
"Navegar con C-h C-l C-j C-k
Plug 'christoomey/vim-tmux-navigator'
"Airline
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
" Fugitive, es para manejar git
Plug 'tpope/vim-fugitive'
" Stable version of coc
Plug 'neoclide/coc.nvim', {'branch': 'release'}
"Close pairs () [] {} ''
"Cerrar los pares () [] {} '' 
Plug 'jiangmiao/auto-pairs'
Plug 'alvan/vim-closetag'
"FZF
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim',
Plug 'sbdchd/neoformat'
" Typescript
Plug 'leafgarland/typescript-vim'
" Polyglot - maneja varios lenguajes y ayuda al coc-powershell
Plug 'sheerun/vim-polyglot'

call plug#end()

source $HOME/AppData/Local/nvim/plugins/plug-config.vim
"--------------------------------Plugins Config--------------------------------------------
"save file
"guardar archivo
nmap <leader>w :w <CR>
"cerrar ventana
"close current  window
nmap <C-w> :q! <CR>
nmap <leader>q :q <CR>
nmap <leader>so :so%<CR>
"search commands 
"comandos de busqueda
nmap <leader>gs  :CocSearch
nmap <leader>fs :FZF<CR>
nmap <leader>rg :Rg<CR>
"abrir Nerdtree
"open nerdtree
nmap <Leader>nt :NERDTreeFind<CR>
"Buscar dos carácteres con easymotion
"Search for two chars with easymotion
nmap <Leader>s <Plug>(easymotion-s2)
" Airline theme 
let g:airline_theme='papercolor'
let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#enabled = 1
set ttimeoutlen=50
let g:airline#extensions#hunks#enabled=0
let g:airline#extensions#branch#enabled=1

if !exists('g:airline_symbols')
    let g:airline_symbols = {}
  endif
  let g:airline_symbols.space = "\ua0"
" TAB in general mode will move to text buffer
" TAB en modo normal se moverá al siguiente buffer
nnoremap <silent> <TAB> :bnext<CR>
" SHIFT-TAB will go back
" SHIFT-TAB va para atras 
nnoremap <silent> <S-TAB> :bprevious<CR>
"close buffer
"cerrar buffer
nmap <leader>bd :bdelete<CR>
" Coc extensiones
let g:coc_global_extensions = ['coc-json', 'coc-tsserver', 'coc-emmet', 'coc-tslint', 'coc-prettier', 'coc-angular', 'coc-powershell', 'coc-snippets', 'coc-git']
" --Seleccion de Tema--
syntax on
set t_Co=256
set cursorline
colorscheme dracula
set laststatus=2
set noshowmode

if exists('+termguicolors')
  let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
  let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"
    set termguicolors
  endif

"Close tags automatically
"Cerrar tags automaticamente
let g:closetag_filenames = '*.html,*.xhtml,*.phtml, *.jsx, *.js'

