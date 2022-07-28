let mapleader=" "

"Reload
nnoremap <Leader>R :so $MYVIMRC<CR>
" Testfile
nnoremap <Leader>T :TestFile<CR>
nnoremap <Leader>TT :TestSuite<CR>

" split resize
nnoremap <Leader>> 10<C-w>>
nnoremap <Leader>< 10<C-w><

"Agregar : al final de la linea
nmap <Leader>; $a:<Esc>o

" Guardar y salir
nmap <Leader>w :w<CR>
nnoremap <leader>q :bd<CR>
nnoremap <leader>Q :q!<CR>

" Mover
nmap <Tab><Tab> :Files<CR>
nmap <Leader>ag :Ag<CR>
nmap <Tab><Tab><Tab> :Lines<CR>
nmap <Leader>t :NERDTreeFind<CR>
nmap <Leader>ty :NERDTree<CR>

"Kite
nmap <Leader>g :KiteGotoDefinition<CR>
nmap <Leader>gd :KiteDocsAtCursor<CR>

"Movimiento en documento
nmap <Leader>s <Plug>(easymotion-overwin-f2)
nmap <Leader>k <Plug>(easymotion-overwin-line)
nmap <C-j> 10<C-e>
nmap <C-k> 10<C-y>

" Cambio buffer
nmap <Leader>l :bnext<CR> 
nmap <Leader>h :bprevious<CR> 

" tmux navigator
nnoremap <silent> <Leader><C-h> :TmuxNavigateLeft<cr>
nnoremap <silent> <Leader><C-j> :TmuxNavigateDown<cr>
nnoremap <silent> <Leader><C-k> :TmuxNavigateUp<cr>
nnoremap <silent> <Leader><C-l> :TmuxNavigateRight<cr>
"tnoremap <Esc> <C-\><C-n> "Permite presionar esc en terminal

" buffers
map <Leader>ob :Buffers<cr>

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

" Moving text
vnoremap J :m '>+1<CR>gv=gv
vnoremap K :m '<-2<CR>gv=gv
nnoremap <Leader>K :m .-2<CR>==
nnoremap <Leader>J :m .+1<CR>==


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

