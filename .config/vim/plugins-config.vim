"  nerdtree
let NERDTreeShowHidden=1
let NERDTreeQuitOnOpen=1
let NERDTreeAutoDeleteBuffer=1
let NERDTreeMinimalUI=1
let NERDTreeDirArrows=1
let NERDTreeShowLineNumbers=1
let NERDTreeMapOpenInTab='\t'
let g:indentLine_bufNameExclude = ['NERD_tree.*', 'term:.*']

" FZF
command! -bang -nargs=? -complete=dir GFiles
  \ call fzf#vim#gitfiles(<q-args>, fzf#vim#with_preview(), <bang>0)

command! -bang -nargs=* Ag
  \ call fzf#vim#ag(<q-args>, fzf#vim#with_preview(), <bang>0)

command! -bang -nargs=? -complete=dir Files
  \ call fzf#vim#files(<q-args>, fzf#vim#with_preview(), <bang>0)

let $FZF_DEFAULT_OPTS='--layout=reverse'


" EasyMotion
let g:EasyMotion_smartcase = 1
let g:EasyMotion_keys='hklyuiopnm,qwertzxcvbasdgjf'

" tmux navigator
let g:tmux_navigator_no_mappings = 1

"ALE
" Mostrar mejor mensajes de error
let g:ale_echo_msg_error_str = 'E'
let g:ale_echo_msg_warning_str = 'W'
let g:ale_echo_msg_format = '[%linter%] %s [%severity%]'
let g:ale_fix_on_save = 1
" Show 5 lines of errors (default: 10)
let g:ale_list_window_size = 5
let ale_disable_lsp = 0
let g:ale_linters_explicit = 1
let g:ale_linters = {
      \ 'python': [ 'pylint'],
			\ 'javascript': ['eslint'],
      \ }
let g:ale_fixers = {'python': ['black']}
let g:ale_python_executable='python3'
let g:ale_python_pylint_use_global=1

" Lightlane
let g:lightline = {
      \ 'active': {
      \   'left': [['mode', 'paste'], [], ['relativepath', 'modified']],
      \   'right': [['kitestatus'], ['filetype', 'percent', 'lineinfo'], ['gitbranch']]
      \ },
      \ 'inactive': {
      \   'left': [['inactive'], ['relativepath']],
      \   'right': [['bufnum']]
      \ },
      \ 'component': {
      \   'bufnum': '%n',
      \   'inactive': 'inactive'
      \ },
      \ 'component_function': {
      \   'gitbranch': 'fugitive#head',
      \   'kitestatus': 'kite#statusline'
      \ },
      \ 'colorscheme': 'one',
      \ 'subseparator': {
      \   'left': '',
      \   'right': ''
      \ }
      \}

