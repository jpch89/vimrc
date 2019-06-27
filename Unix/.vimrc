" All system-wide defaults are set in $VIMRUNTIME/debian.vim and sourced by
" the call to :runtime you can find below.  If you wish to change any of those
" settings, you should do it in this file (/etc/vim/vimrc), since debian.vim
" will be overwritten everytime an upgrade of the vim packages is performed.
" It is recommended to make changes after sourcing debian.vim since it alters
" the value of the 'compatible' option.

" This line should not be removed as it ensures that various options are
" properly set to work with the Vim-related packages available in Debian.
runtime! debian.vim

" Vim will load $VIMRUNTIME/defaults.vim if the user does not have a vimrc.
" This happens after /etc/vim/vimrc(.local) are loaded, so it will override
" any settings in these files.
" If you don't want that to happen, uncomment the below line to prevent
" defaults.vim from being loaded.
" let g:skip_defaults_vim = 1

" Uncomment the next line to make Vim more Vi-compatible
" NOTE: debian.vim sets 'nocompatible'.  Setting 'compatible' changes numerous
" options, so any other options should be set AFTER setting 'compatible'.
"set compatible

" Vim5 and later versions support syntax highlighting. Uncommenting the next
" line enables syntax highlighting by default.
if has("syntax")
  syntax on
endif

" If using a dark background within the editing area and syntax highlighting
" turn on this option as well
"set background=dark

" Uncomment the following to have Vim jump to the last position when
" reopening a file
"if has("autocmd")
"  au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif
"endif

" Uncomment the following to have Vim load indentation rules and plugins
" according to the detected filetype.
"if has("autocmd")
"  filetype plugin indent on
"endif

" The following are commented out as they cause vim to behave a lot
" differently from regular Vi. They are highly recommended though.
"set showcmd		" Show (partial) command in status line.
"set showmatch		" Show matching brackets.
"set ignorecase		" Do case insensitive matching
"set smartcase		" Do smart case matching
"set incsearch		" Incremental search
"set autowrite		" Automatically save before commands like :next and :make
"set hidden		" Hide buffers when they are abandoned
"set mouse=a		" Enable mouse usage (all modes)

" Source a global configuration file if available
if filereadable("/etc/vim/vimrc.local")
  source /etc/vim/vimrc.local
endif

" 以下为个人配置
" 作者：jpch89

" 备忘
" :version 命令查看 vimrc 文件保存位置
" 一般放在家目录下面，命名为 .vimrc 即可

" ctrl-s 保存
" 还要改 .bashrc，否则会卡住，按 ctrl-q 恢复
" nmap <c-s> :w<CR>
" imap <c-s> <Esc>:w<CR>a

set nocompatible
filetype on
filetype indent on
filetype plugin on
filetype plugin indent on
set encoding=utf-8

" leader 键设置为空格键
let mapleader=" "

" 智能大小写
set smartcase
" 忽略大小写
set ignorecase

" 按照缩进折叠
set foldmethod=indent

" 普通模式中用空格打开 / 收起折叠
" nnoremap <space> za

" 移动标签页快捷键
" alt-j 向左移动标签页
" noremap <A-j> gT
" alt-k 向右移动标签页
" noremap <A-k> gt

" tab设置为 4 个空格
set tabstop=4
set expandtab
" 自动缩进
set autoindent
" 自动缩进 4 个空格
set shiftwidth=4
" 一次性删除整个 tab
set softtabstop=4

" 自动切换目录
set autochdir

" 显示行号
set number
" 显示相对行号
set relativenumber

" 状态行可见
set laststatus=2
" 状态行显示路径
set statusline+=%F

" 设置80列颜色为灰色
highlight ColorColumn ctermbg=7
" 设置80列颜色条
set colorcolumn=80

" 当前行添加下划线
set cursorline

" 右下角显示命令
set showcmd

" tab 弹出命令提示菜单
set wildmenu

" 高亮搜索
set hlsearch
" 增量搜索，动态高亮
set incsearch
" 取消高亮：空格加回车
noremap <LEADER><CR> :nohlsearch<CR>

" 显示非可见字符
set list
set listchars=tab:▸\ ,trail:▫

" 继续上次编辑
au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif

" 开启分屏
map <LEADER>sk :set nosplitbelow<CR>:split<CR>
map <LEADER>sj :set splitbelow<CR>:split<CR>
map <LEADER>sh :set nosplitright<CR>:vsplit<CR>
map <LEADER>sl :set splitright<CR>:vsplit<CR>

" 分屏间移动
map <LEADER>h <C-w>h
map <LEADER>j <C-w>j
map <LEADER>k <C-w>k
map <LEADER>l <C-w>l

" 分屏尺寸
map <c-up> :resize +1<CR>
map <c-down> :resize -1<CR>
map <c-left> :vertical resize -1<CR>
map <c-right> :vertical resize +1<CR>

