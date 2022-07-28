local g = vim.g
--ALE
--Mostrar mejor mensajes de error
g.ale_echo_msg_error_str = 'E'
g.ale_echo_msg_warning_str = 'W'
g.ale_echo_msg_format = '[%linter%] %s [%severity%]'
g.ale_fix_on_save = 1
g.ale_fixers = {
 ['python']= 'black',
 ['lua']={'stylua','stylua','luafmt'}
}
-- Show 5 lines of errors (default: 10)
g.ale_list_window_size = 5
g.ale_linters_explicit = 1
g.ale_linters = {
    ['python']={'pylint','flake8'},
    ['javascript']='eslint',
}
g.ale_python_executable='python3'
g.ale_python_pylint_use_global=1

--let ale_disable_lsp = 0
