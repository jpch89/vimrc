" All system-wide defaults are set in $VIMRUNTIME/debian.vimand sourced by
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
"syntax on

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

" jpch89 个人配置
" <leader> 键为空格键
let mapleader=" "
let g:mapleader=" "

" 开启语法高亮
if has("syntax")
  syntax on
endif

" 开启 256 色
set t_Co=256

" 打开文件跳转到上次编辑位置
if has("autocmd")
  au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif
endif

" 开启文件类型检测，加载插件和缩进规则
if has("autocmd")
  filetype plugin indent on
endif

" 状态栏显示部分命令
set showcmd

" 忽略大小写
set ignorecase
" 智能大小写
set smartcase

" 增量搜索
set incsearch
" 高亮搜索
set hlsearch
" 取消高亮：<leader>加回车
nnoremap <leader><cr> :nohlsearch<cr>

" 鼠标操作
set mouse=a
" 文件编码
set encoding=utf-8
" G 键居中
nnoremap G Gzz
" 按照缩进折叠
" set foldmethod=indent

" tab 宽度为 4
set tabstop=4
" tab 展开为空格
set expandtab
" 自动缩进
set autoindent
" 自动缩进 4 个空格
set shiftwidth=4
" 一次性删除整个 tab
set softtabstop=4

" 自动切换目录
" set autochdir

" 显示行号
set number
" 显示相对行号
" set relativenumber

" 状态行可见
set laststatus=2
" 状态行显示路径
set statusline+=%F
" 设置 80 列颜色为灰色
" highlight ColorColumn ctermbg=7
" 设置 80 列颜色条
" set colorcolumn=80
" 当前行添加下划线
set cursorline
" 当前列添加高亮
" set cursorcolumn
" tab 弹出命令提示菜单
set wildmenu

" 显示非可见字符
set list
set listchars=tab:▸\ ,trail:▫

" 设置系统剪切板为默认剪切板
set clipboard^=unnamed,unnamedplus

" 编辑模式下 jj 返回普通模式
inoremap jj <esc>
" 编辑模式下 jc 进入命令模式
inoremap jc <esc>:

" 使用 leader-w 直接保存
nnoremap <leader>w :w<cr>
" 使用 leader-q 直接退出
nnoremap <leader>q :q<cr>
" 使用 leader-x 保存退出
nnoremap <leader>x :x<cr>

" 12<enter> 跳转到 12 行，代替 12G，并设置居中
nnoremap <cr> Gzz
" 退格键返回文件开头
nnoremap <bs> gg

" 补全不弹出预览窗口
set completeopt=longest,menuone

" 保证上下空行
set scrolloff=3

" 开启分屏
nnoremap <leader>sk :set nosplitbelow<cr>:split<cr>
nnoremap <leader>sj :set splitbelow<cr>:split<cr>
nnoremap <leader>sh :set nosplitright<cr>:vsplit<cr>
nnoremap <leader>sl :set splitright<cr>:vsplit<cr>
" 竖分屏变横分屏
nnoremap <leader>sp <c-w>t<c-w>K
" 横分屏变竖分屏
nnoremap <leader>sv <c-w>t<c-w>H
" 关闭分屏
nnoremap <leader>c <c-w>c
" 分屏间移动
nnoremap <leader>h <c-w>h
nnoremap <leader>j <c-w>j
nnoremap <leader>k <c-w>k
nnoremap <leader>l <c-w>l
" 分屏尺寸
nnoremap <c-up> :resize +1<cr>
nnoremap <c-down> :resize -1<cr>
nnoremap <c-left> :vertical resize -1<cr>
nnoremap <c-right> :vertical resize +1<cr>

" 开启标签页
nnoremap <leader>tn :tabnew<cr>
" 关闭标签页
nnoremap <leader>tc :tabclose<cr>

" 自动安装 vim-plug，依赖于 curl
if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

" 安装插件
call plug#begin('~/.vim/plugged')
Plug 'vim-airline/vim-airline'
Plug 'mhinz/vim-startify'
Plug 'yggdroot/indentline'
Plug 'easymotion/vim-easymotion'
Plug 'jpch89/vim-interestingwords'
Plug 'tpope/vim-surround'
Plug 'scrooloose/nerdtree'
" 与 python-mode 插件冲突
" Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'mhinz/vim-signify'
Plug 'tpope/vim-commentary'
Plug 'kana/vim-textobj-user'
Plug 'kana/vim-textobj-entire'
Plug 'kana/vim-textobj-indent'
Plug 'jpch89/python-mode', { 'for': 'python', 'branch': 'develop' }
Plug 'Yggdroot/LeaderF'
Plug 'sonph/onehalf', {'rtp': 'vim/'}
" clevertab（coc.vim可以直接通过配置项达到此效果）
Plug 'neitanod/vim-clevertab'
" 在 Vim 里运行终端的插件，待观察
Plug 'kassio/neoterm'
Plug 'tpope/vim-fugitive'
Plug 'majutsushi/tagbar'
Plug 'tiagofumo/vim-nerdtree-syntax-highlight'
Plug 'ryanoasis/vim-devicons'
" Plug 'neoclide/coc.nvim', {'branch': 'release'}
call plug#end()

" 主题颜色
colorscheme onehalflight
let g:airline_theme='onehalfdark'

" clevertab 配置
inoremap <silent><tab> <c-r>=CleverTab#Complete('start')<cr>
                      \<c-r>=CleverTab#Complete('tab')<cr>
                      \<c-r>=CleverTab#Complete('keyword')<cr>
                      \<c-r>=CleverTab#Complete('omni')<cr>
                      \<c-r>=CleverTab#Complete('stop')<cr>
inoremap <silent><s-tab> <c-r>=CleverTab#Complete('prev')<cr>

" indentline 相关配置
let g:indentLine_setConceal = 2
let g:indentLine_concealcursor = "nv"

" easymotion 相关配置：m for motion
nmap <leader>m <Plug>(easymotion-s2)

" " python-mode 配置
" Python 3
let g:pymode_python = 'python3'
" 不显示错误信息窗口
let g:pymode_lint_cwindow = 0
" 保存和保存退出时自动格式化代码
if has("autocmd")
  " 给当前缓存绑定快捷键 local mapping just for the active buffer
  autocmd filetype python nnoremap <buffer> <leader>w :PymodeLintAuto<cr>:w<cr>:PymodeLint<cr>
  autocmd filetype python nnoremap <buffer> <leader>x :PymodeLintAuto<cr>:x<cr>
endif
" 设置预览窗口大小
let g:pymode_preview_height = 8
" 运行代码快捷键
let g:pymode_run_bind = '<leader>e'
" 自动检测文件类型
" au BufNewFile,BufRead *.py set filetype=python

" nerdtree
map <leader>n :NERDTreeToggle<CR>
let NERDTreeIgnore = ['^__pycache__$']
let g:NERDTreeWinSize=25

" startify
autocmd VimEnter *
            \   if !argc()
            \ |   Startify
            \ |   NERDTree
            \ |   wincmd w
            \ | endif

" leaderf
" 最优选放在最下面
let g:Lf_ReverseOrder = 1

" tagbar
noremap tb :TagbarToggle<cr>
let g:tagbar_width=25
" 激活 tagbar 后自动跳转到 tagbar 窗口
let g:tagbar_autofocus = 1
" 禁止自动排序，用原顺序即可
let g:tagbar_sort = 0
let g:tagbar_iconchars = ['▸', '▾']
" 修复热键冲突，d 显示原型，d for definition，默认为空格
let g:tagbar_map_showproto = 'd'

" 图标相关
let g:airline_powerline_fonts = 1

" vista.vim
" noremap <leader>v :Vista!!<cr>
" 显示最近的函数或类
" function! NearestMethodOrFunction() abort
  " return get(b:, 'vista_nearest_method_or_function', '')
" endfunction

" set statusline+=%{NearestMethodOrFunction()}

" By default vista.vim never run if you don't call it explicitly.
"
" If you want to show the nearest function in your statusline automatically,
" you can add the following line to your vimrc 
" autocmd VimEnter * call vista#RunForNearestMethodOrFunction()

" coc.vim
" inoremap <expr> <Tab> pumvisible() ? "\<C-n>" : "\<Tab>"
