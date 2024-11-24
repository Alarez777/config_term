let mapleader=" "

"Reload
nnoremap <Leader>R :so $MYVIMRC<CR>

" split resize
nnoremap <Leader>> 10<C-w>>
nnoremap <Leader>< 10<C-w><

"Agregar : al final de la linea
nmap <Leader>; $a:<Esc>o

" Guardar y salir
nmap <Leader>w :w<CR>
nnoremap <leader>c :bd<CR>
nnoremap <leader>q :q<CR>

" Mover
"Permite buscar archivos y abrirlos
nmap <Tab><Tab> :Files<CR> 
nmap <Leader>e :NERDTreeToggle<CR>


"Movimiento en documento
nmap <Leader>m <Plug>(easymotion-overwin-f)
nmap <Leader>, <Plug>(easymotion-overwin-line)
map <Leader>j <Plug>(easymotion-j)
map <Leader>k <Plug>(easymotion-k)

" Cambio buffer
nmap <Tab>l :bnext<CR> 
nmap <Tab>h :bprevious<CR> 

" tmux navigator
nnoremap <silent> <C-h> :TmuxNavigateLeft<cr>
nnoremap <silent> <C-j> :TmuxNavigateDown<cr>
nnoremap <silent> <C-k> :TmuxNavigateUp<cr>
nnoremap <silent> <C-l> :TmuxNavigateRight<cr>
"tnoremap <Esc> <C-\><C-n> "Permite presionar esc en terminal

"tabulacion
vmap <Tab> >gv
vmap <S-Tab> <gv

" Acceso a portapapeles
vnoremap <leader>y "+y
nnoremap <leader>y "+y
vnoremap <leader>d "+d
nnoremap <leader>d "+d
nnoremap <leader>p "+p
vnoremap <leader>p "+p
nnoremap <leader>P "+P
vnoremap <leader>P "+P


" Abre la terminal
nnoremap <C-t> :call OpenTerminal()<CR>

" Iniciar documento
nmap <Leader>x :!python3 %<CR>


"split navigations
"nnoremap <C-J> <C-W><C-J>
"nnoremap <C-K> <C-W><C-K>
"nnoremap <C-L> <C-W><C-L>
"nnoremap <C-H> <C-W><C-H>
 
"tnoremap <C-h> <C-\><C-N><C-w>h"
"tnoremap <C-j> <C-\><C-N><C-w>j"
"tnoremap <C-k> <C-\><C-N><C-w>k"
"tnoremap <C-l> <C-\><C-N><C-w>l"
"inoremap <C-h> <C-\><C-N><C-w>h"
"inoremap <C-j> <C-\><C-N><C-w>j"
"inoremap <C-k> <C-\><C-N><C-w>k"
"inoremap <C-l> <C-\><C-N><C-w>l"
"nnoremap <C-h> <C-w>h"
"nnoremap <C-j> <C-w>j" 
"nnoremap <C-k> <C-w>k"
"nnoremap <C-l> <C-w>l"

