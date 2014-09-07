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

"自動コメント補完無効化
autocmd FileType * setlocal formatoptions-=ro

"バックアップディレクトリ指定
set backupdir=~/.vim/tmp

"neobundle settings
scriptencoding utf-8
set nocompatible

"evervim settings
let g:evervim_devtoken='S=s10:U=1254cd:E=14bbaab17db:C=14462f9ebde:P=1cd:A=en-devtoken:V=2:H=b6b0ed26e7267cab947c3d28c56aa8e9'

"Calender settings
let g:calendar_google_calendar = 1

python << EOF
import sys
sys.path.append('/usr/local/lib/python2.7/site-packages')
import markdown
EOF

if has('vim_starting')
          filetype plugin off
            filetype indent off
              execute 'set runtimepath+=' . expand('~/.vim/bundle/neobundle.vim')
      endif
      call neobundle#rc(expand('~/.vim/bundle'))

      NeoBundle 'git://github.com/kien/ctrlp.vim.git'
      NeoBundle 'git://github.com/Shougo/neobundle.vim.git'
      NeoBundle 'git://github.com/scrooloose/nerdtree.git'
      NeoBundle 'git://github.com/scrooloose/syntastic.git'
      NeoBundle 'git://github.com/Shougo/neocomplcache'
      NeoBundle 'git://github.com/Shougo/unite.vim'
      NeoBundle 'git://github.com/itchyny/lightline.vim'
      NeoBundle 'git://github.com/kakkyz81/evervim'
      NeoBundle 'git://github.com/itchyny/calendar.vim.git'

      syntax on
      filetype plugin on
      filetype indent on

      " SSH クライアントの設定によってはマウスが使える（putty だと最初からいけ
      " る）
      set mouse=n

