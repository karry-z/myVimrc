" -----------------------------------------------
" normal 普通模式
" -----------------------------------------------
" normal map 普通模式映射
noremap S :w<CR>
noremap Q :q<CR>
noremap R :w<CR>:source $MYVIMRC<CR>
noremap J 5j
noremap K 5k
noremap H 5h
noremap L 5l
" -----------------------------------------------
" insert 插入（输入）模式配置
" -----------------------------------------------
" backspace删除到上一行
set backspace=2
" 语法高亮 " 
set syntax=on "这是8.0以前的，下面是8.0的
syntax on
" 标出当前行
set cursorline
" 自动缩进
set autoindent
set cindent
" Tab键的宽度
set tabstop=4
" 统一缩进为4
set softtabstop=4
set shiftwidth=4
" 不要用空格代替制表符
set noexpandtab
" 在行和段开始处使用制表符
set smarttab
" 显示行号
set rnu



" -----------------------------------------------
" cmd :命令行模式配置
" -----------------------------------------------
" 显示命令选项
set showcmd
"
set wildmenu
"
set nocompatible              " be iMproved, required
""""""""""""""""""""""""
" 搜索
""""""""""""""""""""""""
"搜索忽略大小写
set ignorecase
" 智能大小写（大写狭义匹配，小写都匹配）
set smartcase
"搜索高亮
set hlsearch
" 刷新（R）取消高亮
exec "nohlsearch"
" 逐字高亮
set incsearch

" todo



"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" 设置当文件被改动时自动载入
set autoread
" quickfix模式
autocmd FileType c,cpp map <buffer> <leader><space> :w<cr>:make<cr>
"代码补全 
set completeopt=preview,menu 
"共享剪贴板  
set clipboard=unnamed 
"从不备份  
set nobackup
"make 运行
:set makeprg=g++\ -Wall\ \ %
"自动保存
set autowrite
set ruler                   " 打开状态栏标尺
set magic                   " 设置魔术
set guioptions-=T           " 隐藏工具栏
set guioptions-=m           " 隐藏菜单栏
" 设置在状态行显示的信息
set foldcolumn=0
set foldmethod=indent 
set foldlevel=3 
set foldenable              " 开始折叠
" 去掉输入错误的提示声音
set noeb
" 在处理未保存或只读文件的时候，弹出确认
set confirm

" 历史记录数
set history=1000
"禁止生成临时文件
set nobackup
set noswapfile
"行内替换
set gdefault


""""""

filetype off                  " required




source ~/.vim/plugin.vimrc

