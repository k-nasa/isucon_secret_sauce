" ===========================================================
" colorscheme
" カラースキーム系の設定
" ===========================================================

"カラースキーム
syntax on
" use 24-bit color
set termguicolors

if !exists('g:colors_name')
  let g:lightline.colorscheme = 'onedark'
  set background=dark
  colorscheme onedark
endif

