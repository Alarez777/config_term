" ln -s ~/.config/config_term/.config/vim ~/.config/vim
" ln -s ~/.config/vim/init.vim ~/.vimrc
" curl -fLo ~/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

so ~/.config/vim/plugins.vim
so ~/.config/vim/maps.vim
so ~/.config/vim/plugins-config.vim

"TEMA
"set background=light     " Usa modo obscuro
"colorscheme solarized
set background=dark     " Usa modo obscuro
colorscheme dracula
"colorscheme ayu"
let ayucolor="mirage"   " for dark version of theme dark, light, mirage
"Funcionamiento general
set nocompatible        " Activar modo de no compatibilidad con vi
set helplang=es         " Idioma para la ayuda de mendajes

"Visualizacion
syntax on               " Coloreado de sintaxis
set showcmd             " Activa la indicación de comandos
set showmatch           " Cuendo se cierran parentesis, llaves o corchetes muestra hace visible su otro par
set ruler               " Activa la regla inferior
set number              " Muestra numeracion de lineas
set relativenumber      " Activa numeros relativos
set noshowmode          " No mostrar el modo actual (ya lo muestra la barra de estado)
set cursorline          " Ilumina la linea activa por el cursor
set relativenumber      " Usa numeros relativos
set nowrap              " Evita que se creen nuevas filas si la linea es larga"
set termguicolors
set shortmess+=c
set undofile
set encoding=utf-8
set numberwidth=1
set title
set laststatus=2        " always display the status line
set mouse=a             " Habilita el uso de mouse
set tabstop=4           " Cantidad de espacios cuando se inserta tab
set softtabstop=4       " Espacios que se sutituiran al tab
set shiftwidth=2        " Tamaño del sangrado al presionar las teclas < >
set encoding=utf-8      " El cocumento se encodea en utf-8
set hidden              " Permitir cambiar de buffers sin tener que guardarlos
set signcolumn=yes      " always show signcolumns
" set foldmethod=indent   " Metodo de plegado ajustado a identacion
set shiftround
set sw=2
set guifont=DejaVu\ Sans\ Mono\ Nerd\ Font\ Complete\ Mono:h12.6  
set foldcolumn=1
"
" Busqueda
set hlsearch            " Ilimina todas las apariciones de la cadena buscada
set incsearch           " Busqueda incremental
set ignorecase          " Ignora si lo buscado esta escrito en mayusculas
set smartcase           " Se busca con mayusculas si se usa en la cadena a buscar
set cmdheight=1         " Better display for messages
set updatetime=300      " You will have bad experience for diagnostic messages when it's default 4000.


au BufNewFile,BufRead *.py
    \ set expandtab       |" No se insertan tabulador si no espacios es blanco
    \ set autoindent      |" Mantiene el sangrado de la linea precedente
    \ set tabstop=4       |" El tab es equivalente a 4 espacios
    \ set softtabstop=4   |" Los espacios que se ingresaran al presionar tab
    \ set shiftwidth=4    |" Tamaño para el sangrado al presionar > <

