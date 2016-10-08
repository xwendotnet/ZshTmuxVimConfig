set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

Plugin 'https://github.com/scrooloose/nerdtree.git'
" Plugin 'othree/yajs.vim'
" Plugin 'othree/javascript-libraries-syntax.vim'
Plugin 'mattn/emmet-vim'
Plugin 'othree/html5.vim'
Plugin 'othree/csscomplete.vim'
Plugin 'tpope/vim-surround'
Plugin 'groenewege/vim-less'
Plugin 'hail2u/vim-css3-syntax'
" Plugin 'Valloric/YouCompleteMe'
" Plugin 'user/L9', {'name': 'newL9'}
Plugin 'jonathanfilip/vim-lucius'
" Plugin 'jaredpar/VsVim'
Plugin 'ybian/smartim'
" Plugin 'mileszs/ack.vim'
Plugin 'https://github.com/rking/ag.vim'
Plugin 'pangloss/vim-javascript' , { 'for': ['javascript', 'javascript.jsx'] }
Plugin 'mxw/vim-jsx'
Plugin 'digitaltoad/vim-jade'
" Track the engine.
" Plugin 'SirVer/ultisnips'
" Snippets are separated from the engine. Add this if you want them:
Plugin 'honza/vim-snippets'
Plugin 'https://github.com/ctrlpvim/ctrlp.vim.git'
Plugin 'https://github.com/gabesoft/vim-ags.git'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
" TypeScript
Plugin 'leafgarland/typescript-vim'
" autopair
Plugin 'jiangmiao/auto-pairs'
" ng2
Plugin 'mhartington/vim-angular2-snippets'
" tern_for_vim
Plugin 'ternjs/tern_for_vim'



" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line

" 开启语法高亮功能
syntax enable
" 允许用指定语法高亮配色方案替换默认方案
syntax on

" 总是显示状态栏
set laststatus=2
" 显示光标当前位置
" set ruler
" 开启行号显示
set number
" 高亮显示当前行/列
" set cursorline
" set cursorcolumn
" 高亮显示搜索结果
set hlsearch
"搜索时逐字符高亮
set incsearch  

set history=200

set fileencodings=ucs-bom,utf-8,cp936,gb18030,big5,euc-jp,euc-kr,latin1
set encoding=utf-8

set tabstop=2
set expandtab

set shiftwidth=2

set softtabstop=2
set foldmethod=indent
" set autoindent
set fdl=2

cnoremap <C-p> <Up>
cnoremap <C-n> <Down>
"设置切换Buffer快捷键"
nnoremap <C-N> :bn<CR>
nnoremap <C-P> :bp<CR>
" shortcut for tab
noremap <C-t> :tabnew<CR>

colorscheme lucius 
LuciusDark
set t_Co=256

"NERDTree-Tabs{
"设置打开vim的时候默认打开目录树
"let g:nerdtree_tabs_open_on_console_startup=1       

"设置打开目录树的快捷键
map <F3> :NERDTreeToggle <CR>         

" NERDTree ignore
let NERDTreeIgnore=['\.vim$', '\~$', 'node_modules']

"}

" Webpack watch issue
set backupcopy=yes

let g:jsx_ext_required = 0

autocmd FileType html set omnifunc=htmlcomplete#CompleteTags
autocmd FileType css setlocal omnifunc=csscomplete#CompleteCSS noci

" " Trigger configuration. Do not use <tab> if you use
let g:UltiSnipsSnippetDirectories=["UltiSnips"]
let g:UltiSnipsUsePythonVersion = 2
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<c-b>"
let g:UltiSnipsJumpBackwardTrigger="<c-z>"
" " If you want :UltiSnipsEdit to split your window.
let g:UltiSnipsEditSplit="vertical"

set wildignore+=*/tmp/*,*.so,*.swp,*.zip,*/node_modules/*

let g:ag_prg='ag -S --nocolor --column --ignore node_modules' 

" AirLine {
"
let g:airline_theme="solarized" 
let g:airline_powerline_fonts = 1   
" 打开tabline功能,方便查看Buffer和切换，这个功能比较不错"
" 我还省去了minibufexpl插件，因为我习惯在1个Tab下用多个buffer"
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#buffer_nr_show = 1
"}
"
set clipboard^=unnamed
