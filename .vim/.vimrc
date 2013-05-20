"自動インデント
set autoindent
set smarttab

"vi互換OFF
set nocompatible

"タブの代わりにブランク
set expandtab

"インクリメンタルサーチ
set incsearch

"行番号表示
set number

"括弧強調
set showmatch

"grep検索
set grepformat=%f:%l:%m,%f:%l%m,%f\ \ %l%m,%f
set grepprg=grep\ -nh

"ハイライトクリア
nnoremap <ESC><ESC> :nohlsearch<CR>


