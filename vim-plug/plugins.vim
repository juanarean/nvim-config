
call plug#begin('~/.vim/plugged')
" Temas
Plug 'tomasiser/vim-code-dark'
Plug 'sonph/onehalf', { 'rtp': 'vim'  }
Plug 'dracula/vim', { 'as': 'dracula'  }
Plug 'arcticicestudio/nord-vim'
Plug 'gosukiwi/vim-atom-dark'
Plug 'morhetz/gruvbox'
Plug 'tomasr/molokai'

" Iconos
Plug 'ryanoasis/vim-devicons'
Plug 'kyazdani42/nvim-web-devicons'

"IDE
Plug 'easymotion/vim-easymotion'

" Start Screen
Plug 'mhinz/vim-startify'

" Better Comments
Plug 'tpope/vim-commentary'

" Navegar con C-h C-l C-j C-k
Plug 'christoomey/vim-tmux-navigator'

"Airline
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

" mejor barra de tabs
" Plug 'romgrk/barbar.nvim'

" galaxyline
" Plug 'glepnir/galaxyline.nvim' , {'branch': 'main'}

" Fugitive, es para manejar git
Plug 'tpope/vim-fugitive'

" Stable version of coc
Plug 'neoclide/coc.nvim', {'branch': 'release'}

"Cerrar los pares () [] {} '' 
Plug 'jiangmiao/auto-pairs'
Plug 'alvan/vim-closetag'

" Colorizer
Plug 'norcalli/nvim-colorizer.lua'

"FZF
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim',
Plug 'stsewd/fzf-checkout.vim'

" Typescript
Plug 'leafgarland/typescript-vim'

" Polyglot - maneja varios lenguajes y ayuda al coc-powershell
Plug 'sheerun/vim-polyglot'

call plug#end()

