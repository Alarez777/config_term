"Plugins de vim -----------------------------------
call plug#begin('~/.vim/plugged')
	"Temas
	"Plug 'skbolton/embark' " Theme embark
	Plug 'dracula/vim', { 'name': 'dracula' } " Theme dracula
	"Plug 'ayu-theme/ayu-vim' " Theme ayu
	"Plug 'morhetz/gruvbox' " Theme gruvbox
	"Plug 'sonph/onehalf', { 'rtp': 'vim' } "Theme onehalf
	"Plug 'ayu-theme/ayu-vim' " or other package manager
	"IDE
	"Autocompletado
	if has('nvim') || has('patch-8.0.902')
		" Indica si se agrego o quito una linea
		Plug 'mhinz/vim-signify'
	else
		Plug 'mhinz/vim-signify', { 'branch': 'legacy' }
	endif
	"Plug 'ervandew/supertab' "Permite usar tab en Autocompletado
	"Plug 'vim-test/vim-test' "Permite testear codigo
	"Plug 'dense-analysis/ale' "Analizador de errores
	"Plug 'ryanoasis/vim-devicons' "Proporciona iconos de distions lenguajes y archivos
	"Plug 'sheerun/vim-polyglot' "Resalta Sintaxis de muchos lenguajes
	"Tmux
	Plug 'christoomey/vim-tmux-navigator' "Permite moverse entre ventanas con ctrl h o l 
	Plug 'ap/vim-buftabline' "Muestra los buffer como tabs
	Plug 'jiangmiao/auto-pairs' "Permite usar autocompletado de parentesis
	Plug 'tpope/vim-surround' "Permite seleccionar un texto y ponerle un caracter
	Plug 'tpope/vim-repeat' "Sirve para repetir acciones
	Plug 'tpope/vim-commentary', {'for': ['sh', 'python', 'markdown', 'vim']} "Permite agregar comentarios
	"Plug 'tpope/vim-fugitive' "Control de git desde vim
	"---------------------------
	Plug 'easymotion/vim-easymotion' "Movimiento
	Plug 'scrooloose/nerdtree' "Folders
	Plug 'itchyny/lightline.vim' "Barra de estado
	Plug 'maximbaz/lightline-ale' "Indica errores en barra de estado
	"Plug 'vim-airline/vim-airline' "Barra de estado
	"	Plug 'vim-airline/vim-airline-themes' " Temas de barra de estado
	Plug 'Yggdroot/indentLine' "Resalta la identacion
	"Plug 'tpope/vim-eunuch' " Comandos de unix como rename, chmod etc
	"Plug 'neoclide/coc.nvim', {'branch': 'release'}
	"Explorador de archivos
	Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
	Plug 'junegunn/fzf.vim'
	"Plug 'lotabout/skim', { 'dir': '~/.skim', 'do': './install' }
	"Plug 'lotabout/skim.vim'
	Plug 'Vimjas/vim-python-pep8-indent'
call plug#end()
