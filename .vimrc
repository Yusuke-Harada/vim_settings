set nocompatible
filetype off

call plug#begin()
" Shorthand notation; fetches https://github.com/junegunn/vim-easy-align
Plug 'junegunn/vim-easy-align'

" Any valid git URL is allowed
Plug 'https://github.com/junegunn/vim-github-dashboard.git'

" Multiple Plug commands can be written in a single line using | separators
Plug 'SirVer/ultisnips' | Plug 'honza/vim-snippets'

" On-demand loading
Plug 'preservim/nerdtree', { 'on': 'NERDTreeToggle' }
Plug 'tpope/vim-fireplace', { 'for': 'clojure' }

" Using a non-default branch
Plug 'rdnetto/YCM-Generator', { 'branch': 'stable' }

" Using a tagged release; wildcard allowed (requires git 1.9.2 or above)
Plug 'fatih/vim-go', { 'tag': '*' }

" Plugin options
Plug 'nsf/gocode', { 'tag': 'v.20150303', 'rtp': 'vim' }

" Plugin outside ~/.vim/plugged with post-update hook
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }

" Unmanaged plugin (manually installed and updated)
Plug '~/my-prototype-plugin'

"Prettier
Plug 'prettier/vim-prettier', {
  \ 'do': 'yarn install --frozen-lockfile --production',
  \ 'for': ['javascript', 'typescript', 'css', 'less', 'scss', 'json', 'graphql', 'markdown', 'vue', 'svelte', 'yaml', 'html'] }

"TS highlight
Plug 'leafgarland/typescript-vim'

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

"Prettier
Plug 'prettier/vim-prettier'

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
" Prettier
"----------------------------------------
"
augroup fmt
autocmd!
autocmd BufWritePre,TextChanged,InsertLeave *.js,*.jsx,*.mjs,*.ts,*.tsx,*.css,*.less,*.scss,*.json,*.graphql,*.md,*.vue,*.svelte,*.yaml,*.html PrettierAsync
augroup END

"eslint
let g:syntastic_javascript_checkers=['eslint']

" エラー行に sign を表示
let g:syntastic_enable_signs = 1
" location list を常に更新
let g:syntastic_always_populate_loc_list = 0
" location list を常に表示
let g:syntastic_auto_loc_list = 0
" ファイルを開いた時にチェックを実行する
let g:syntastic_check_on_open = 1
" :wq で終了する時もチェックする
let g:syntastic_check_on_wq = 0

""----------------------------------------
" ショートカット
"----------------------------------------
"
"short cut command is berrow"
nnoremap <silent><C-e> :NERDTreeToggle<CR>
