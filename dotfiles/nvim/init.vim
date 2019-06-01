runtime init/core.vim
runtime init/keybaind.vim
runtime init/colortheme.vim

"  行数
set number

filetype on
set mouse=a
" for accelerated-jk
nmap j <Plug>(accelerated_jk_gj)
nmap k <Plug>(accelerated_jk_gk)

"タブをスペースに
set tabstop=2
set shiftwidth=2
set expandtab
"スワップファイルを作らない
set noswapfile
"他で書き換えられたらautoloadする
set autoread
"上16行を確保
set scrolloff=16
" クリップボード共有
set clipboard+=unnamedplus
" 行末1文字までカーソルを移動できるようにする
set virtualedit=onemore
" ウィンドウの幅より長い行は折り返され、次の行に続けて表示される
set wrap
"文字のないところにカーソル移動できるようにする"
set virtualedit=block
"横にdiffを出すやつ
set diffopt+=vertical
"余分な空白削除
autocmd BufWritePre * :FixWhitespace
autocmd BufNewFile,BufRead *.tsx,*.jsx set filetype=typescript.tsx
