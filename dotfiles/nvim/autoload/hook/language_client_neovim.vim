function! hook#language_client_neovim#load() abort
  set hidden
  let g:LanguageClient_autoStart         = 1 " NeoVim起動時にLSPを自動スタート
  let g:LanguageClient_diagnosticsEnable = 0 " シンタックスチェックをOFF

  let g:LanguageClient_serverCommands = {
        \ 'rust': ['rustup', 'run', 'nightly', 'rls'],
        \ 'ruby': ['solargraph', 'stdio'],
        \ 'haskell': ['hie', '--lsp'],
        \ 'dart': ['dart_language_server'],
        \ 'go': ['go-langserver'],
        \ 'typescript': ['typescript-language-server']
        \ }
  " キーマップ
  nnoremap <silent> <C-h> :call LanguageClient_textDocument_hover()<CR>
  nnoremap <silent> <C-j> :call LanguageClient_textDocument_definition()<CR>
  nnoremap <silent> <F2> :call LanguageClient_textDocument_rename()<CR>
  nnoremap <silent> <F3> :call LanguageClient_textDocument_references()<CR>
endfunction
