" This is a file for vim plugin 
" 允许插件  
filetype plugin on

" 插件管理软件vim-plug
if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif
call plug#begin('~/.vim/plugged')

""""""""""
" vim状态栏
""""""""""
Plug 'vim-airline/vim-airline' 


""""""""""
" Markdown
""""""""""
Plug 'iamcco/mathjax-support-for-mkdp'
Plug 'iamcco/markdown-preview.vim'
noremap vv :MarkdownPreview<CR>
noremap s :MarkdownPreviewStop<CR>



call plug#end()


