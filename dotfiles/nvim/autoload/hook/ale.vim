function! hook#ale#load() abort
  let g:ale_sign_info = '➟'
  let g:ale_sign_error      = '✖' " エラーシンボル
  let g:ale_sign_warning    = '⚠' " 警告シンボル

  let g:ale_lint_on_enter = 1
  let g:ale_completion_enabled = 1
  let g:ale_echo_cursor = 1
  let g:ale_virtualtext_cursor = 1
  let g:ale_virtualtext_prefix = '▬▶  '

  let g:ale_warn_about_trailing_blank_lines = 1
  let g:ale_warn_about_trailing_whitespace = 1

  highlight link ALEVirtualTextError ErrorMsg
  highlight link ALEVirtualTextStyleError ALEVirtualTextError
  highlight link ALEVirtualTextWarning WarningMsg
  highlight link ALEVirtualTextInfo ALEVirtualTextWarning
  highlight link ALEVirtualTextStyleWarning ALEVirtualTextWarning
endfunction
