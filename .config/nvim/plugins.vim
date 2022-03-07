"Plugins de vim -----------------------------------
call plug#begin('~/.vim/plugged')
	"Temas
	Plug 'skbolton/embark'
	Plug 'dracula/vim', { 'name': 'dracula' }
	Plug 'morhetz/gruvbox'
	Plug 'sonph/onehalf', { 'rtp': 'vim' }
	Plug 'arcticicestudio/nord-vim'
	Plug 'rakr/vim-one'
	Plug 'ayu-theme/ayu-vim' " or other package manager
	Plug 'altercation/vim-colors-solarized'
	"IDE
	"Autocompletado
	if has('nvim')
		Plug 'numirias/semshi', {'do': ':UpdateRemotePlugins'}
		Plug 'skywind3000/vim-terminal-help' "PErmite crear terminal en la parte inferior
	endif
	Plug 'sheerun/vim-polyglot' "Resalta Sintaxis de muchos lenguajes

	if has('nvim') || has('patch-8.0.902')
		Plug 'mhinz/vim-signify'
	else
		Plug 'mhinz/vim-signify', { 'branch': 'legacy' }
	endif
	"Plug 'ervandew/supertab' "Permite usar tab en Autocompletado
	Plug 'vim-test/vim-test' "Permite testear codigo"
	Plug 'dense-analysis/ale' "Analizador de errores
	"Tmux
	Plug 'christoomey/vim-tmux-navigator' "Permite moverse entre ventanas con ctrl h o l 
	Plug 'preservim/vimux'
	Plug 'ryanoasis/vim-devicons'
	Plug 'ap/vim-buftabline'
	Plug 'jiangmiao/auto-pairs' "Permite usar autocompletado de parentesis
	Plug 'tpope/vim-surround' "Permite seleccionar un texto y ponerle un caracter"
	Plug 'tpope/vim-repeat' "Sirve para repetir acciones"
	Plug 'tpope/vim-commentary', {'for': ['sh', 'python', 'markdown']}
	Plug 'tpope/vim-fugitive'
	"---------------------------
	Plug 'editorconfig/editorconfig-vim'
	Plug 'easymotion/vim-easymotion' "Movimiento
	Plug 'scrooloose/nerdtree' "Folders
	Plug 'itchyny/lightline.vim' "Barra de estado"
	Plug 'maximbaz/lightline-ale' "Indica errores en barra de estado"
	"Plug 'vim-airline/vim-airline' "Barra de estado
	"	Plug 'vim-airline/vim-airline-themes' " Temas de barra de estado
	Plug 'Yggdroot/indentLine' "Resalta la identacion
	"Plug 'tpope/vim-eunuch' " Comandos de unix como rename, chmod etc
	"Plug 'neoclide/coc.nvim', {'branch': 'release'}
	"Explorador de archivos
	Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
	Plug 'junegunn/fzf.vim'
	Plug 'https://github.com/rakr/vim-one.git'
	Plug 'Vimjas/vim-python-pep8-indent'
call plug#end()
