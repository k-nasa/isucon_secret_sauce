" ===========================================================
" keyband 
" キーバインド系の設定 
" ===========================================================

" 矢印キーでの移動を禁ずる！
noremap <Up> <Nop>
noremap <Down> <Nop>
noremap <Left> <Nop>
noremap <Right> <Nop>

" insertモードから抜ける
inoremap <silent> jj <ESC>

"画面分割--------------------
nnoremap ss :sp<CR>
nnoremap sv :vs<CR>
nnoremap sj <C-w>j
nnoremap sk <C-w>k
nnoremap sl <C-w>l
nnoremap sh <C-w>h
nnoremap tt :tabe<CR>
"---------------------------

"alias色々 -------------------
" <Space>i でコードをインデント整形
nnoremap <Space>i gg=<S-g><C-o><C-o>zzk
"NERDTreeをctrl+tで開く
nnoremap <silent><C-t> :NERDTreeToggle<CR>

:command Ga Gwrite
:command Gs Gstatus
"------------------------------

" vim.fzfのショートカット追加
nnoremap ff :Files<CR>
nnoremap fg :GFiles<CR>
nnoremap fr :History<CR>
"------------------------------

"C-wで行末の空白を削除
nnoremap <C-w> :FixWhitespace<CR>
