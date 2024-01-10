set nocompatible
filetype off

call plug#begin()
" Shorthand notation; fetches https://github.com/junegunn/vim-easy-align
"VScode風テーマ
Plug 'tomasiser/vim-code-dark'

"ツリー
Plug 'scrooloose/nerdtree'

"ステータスバー
Plug 'vim-airline/vim-airline'

"ステータスバーのテーマパック
Plug 'vim-airline/vim-airline-themes'

"gitコマンド
Plug 'tpope/vim-fugitive'

"フォーマッタ
Plug 'sbdchd/neoformat'

"エラーチェック
Plug 'scrooloose/syntastic'

" Initialize plugin system
" - Automatically executes `filetype plugin indent on` and `syntax enable`.

call plug#end()
" You can revert the settings after the call like so:
"   filetype indent off   " Disable file-type-specific indentation
"   syntax off            " Disable syntax highlighting

"----------------------------------------
" Search
"----------------------------------------
" 検索するときに大文字小文字を区別しない
set ignorecase
" 小文字で検索すると大文字と小文字を無視して検索
set smartcase
" 検索がファイル末尾まで進んだら、ファイル先頭から再び検索
set wrapscan
" インクリメンタル検索 (検索ワードの最初の文字を入力した時点で検索が開始)
set incsearch
" 検索結果をハイライト表示
set hlsearch

"----------------------------------------
" Appearance
"----------------------------------------
"
set number

colorscheme codedark

"----------------------------------------
" AirLine
"----------------------------------------
"
let g:airline_theme = 'codedark'
let g:airline_deus_bg = 'dark'
let g:airline#extensions#tabline#enabled = 1
let g:airline_powerline_fonts = 1
let g:airline#extensions#branch#enabled = 0

""----------------------------------------
" Format
"----------------------------------------
"
" インデント幅
set shiftwidth=2
" タブキー押下時に挿入される文字幅を指定
set softtabstop=2
" ファイル内にあるタブ文字の表示幅
set tabstop=2

let g:neoformat_try_node_exe = 1
packloadall

""----------------------------------------
" ショートカット
"----------------------------------------
"
"short cut command is berrow"
nnoremap <silent><C-e> :NERDTreeToggle<CR>
let NERDTreeShowHidden = 1
