"guardar archivo
nmap <leader>w :w <CR>
"cerrar ventana
nmap <C-w> :q! <CR>
nmap <leader>q :q <CR>
nmap <leader>so :so%<CR>

"Salir de modo insertar
imap <C-i> <Esc>
"mueve bloques de codigo en modo visual o V-Line
xnoremap K :move '<-2<CR>gv-gv
xnoremap J :move '>+1<CR>gv-gv 

" Mejor Indentación
vnoremap < <gv
vnoremap > >gv

" Coipar, cortar y pegar como dios manda
vmap <C-x> "*d
vmap <C-c> "*y
nmap <C-p> "*p <Esc>
