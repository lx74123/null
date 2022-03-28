filetype indent plugin on
syntax enable
let mapleader = " "

set nu
set cursorline
set list
set listchars=tab:>>
set mouse=a

noremap j a
noremap k s
noremap l d
noremap h w
noremap a h
noremap s j
noremap d l
noremap w k

map q <nop>
map H :nohlsearch<cr>
map R :source $MYVIMRC<cr>
map S :w<cr>
map Q :q<cr>
map <leader>Q :q!<cr>

nmap <tab> V>
nmap <s-tab> V<
vmap <tab> >gv
vmap <s-tab> <gv

map <up> :res -5<cr>
map <down> :res +5<cr>
map <left> :vertical resize -5<cr>
map <right> :vertical resize +5<cr>

map sv <c-w>t<c-w>H
map sh <c-w>t<c-w>K

map <leader>a <c-w>h
map <leader>d <c-w>l
map <leader>s <c-w>j
map <leader>w <c-w>k

map <leader>f ifor(int i=1;i<n;i++){<esc>o}<esc>
map <leader>p ipublic void (){<esc>o}<esc>w<end>aa

set so=7

"" Turn on the Wild menu
set wildmenu

"" Always show current position
set ruler
"
"" Height of the command bar
set cmdheight=1
"
"" A buffer becomes hidden when it is abandoned
set hid
"
"" Configure backspace so it acts as it should act
set backspace=eol,start,indent
set whichwrap+=<,>,h,l
"
"" Ignore case when searching
set ignorecase
"
"" When searching try to be smart about cases
set smartcase
"
"" Highlight search results
set hlsearch
exec "nohlsearch"
"
"" Makes search act like search in modern browsers
set incsearch
"
"" Don't redraw while executing macros (good performance config)
"set lazyredraw
"
"" For regular expressions turn magic on
"set magic
"
"" Show matching brackets when text indicator is over them
set showmatch
"
"" How many tenths of a second to blink when matching brackets
"set mat=2
"
"" No annoying sound on errors
set noerrorbells
set novisualbell
"set t_vb=
"set tm=500
"
"" => Files, backups and undo
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"" Turn backup off, since most stuff is in SVN, git etc. anyway...
"set nobackup
"set nowb
"set noswapfile
"
"
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"" => Text, tab and indent related
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"" Use spaces instead of tabs
set expandtab
"
"" Be smart when using tabs ;)
set smarttab
"
"" 1 tab == 2 spaces
set shiftwidth=2
set tabstop=2
"
"" Linebreak on 500 characters
"set lbr
"set tw=500
"
set ai "Auto indent
set si "Smart indent
set wrap "Wrap lines
"
" Return to last edit position when opening files (You want this!)
au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif


"""""""""""""""""""""""""""""""
"" => Status line
"""""""""""""""""""""""""""""""
"" Always show the status line
set laststatus=2
"
"" Format the status line
set statusline=\ %{HasPaste()}%F%m%r%h\ %w\ \ CWD:\ %r%{getcwd()}%h\ \ \ Line:\ %l\ \ Column:\ %c
"

"" Returns true if paste mode is enabled
function! HasPaste()
    if &paste
        return 'PASTE MODE  '
    endif
    return ''
endfunction
"
call plug#begin()
Plug 'vim-airline/vim-airline'
Plug 'luochen1990/rainbow'
Plug 'connorholyday/vim-snazzy'
Plug 'preservim/nerdtree'
Plug 'neoclide/coc.nvim', {'branch': 'release'}

Plug 'skywind3000/vim-dict'
Plug 'skywind3000/vim-auto-popmenu'
"Plug 'OmniSharp/omnisharp-vim'

Plug 'dense-analysis/ale'
call plug#end()
let g:rainbow_active = 1 "set to 0 if you want to enable it later via :RainbowToggle
" let g:OmniSharp_server_stdio = 0
"
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"" => skywind3000设置
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" 设定需要生效的文件类型，如果是 "*" 的话，代表所有类型
let g:apc_enable_ft = {'text':1, 'markdown':1, 'cs':1}

" 设定从字典文件以及当前打开的文件里收集补全单词，详情看 ':help cpt'
set cpt=.,k,w,b

" 不要自动选中第一个选项。
set completeopt=menu,menuone,noselect

" 禁止在下方显示一些啰嗦的提示
set shortmess+=c

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"" => Colors and Fonts
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"" Enable syntax highlighting
syntax enable
try
  "colorscheme desert
  colorscheme snazzy
catch
endtry
"
set background=dark
"
"" Set utf8 as standard encoding and en_US as the standard language
set encoding=utf8
"
"" Use Unix as the standard file type
set ffs=unix,dos,mac
"
"
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"jdjdjjdjf
