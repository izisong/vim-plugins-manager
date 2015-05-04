"使vim可以正常打开各种中文编码的文件
let &termencoding=&encoding
set fileencodings=utf-8,gb18030,gbk,gb2312

"显示行号
set number
"设置不显示行号的快捷键
map <silent> <F4> :set nonumber<cr>
"开启语法高亮
syntax on
"在状态栏显示正在输入的命令
set showcmd
"默认缩进设置为4个字符大小
set shiftwidth=4
"设置自动缩进
set autoindent
"设置制表符宽度
set tabstop=4
"python tab->4spaces 
filetype indent on
autocmd FileType python setlocal et sta sw=4 sts=4
"设置命令行的高度
set cmdheight=3
"设置进入粘贴模式的快捷键，可以避免window下复制的内容在vim里粘贴自动换行的问题
set pastetoggle=<F3>

"设置代码可折叠,za为{}折叠和展开的切换键
set foldmethod=syntax
set foldlevelstart=99

" Indent Python in the Google way.

setlocal indentexpr=GetGooglePythonIndent(v:lnum)

let s:maxoff = 50 " maximum number of lines to look backwards.

function GetGooglePythonIndent(lnum)

  " Indent inside parens.
  " Align with the open paren unless it is at the end of the line.
  " E.g.
  "   open_paren_not_at_EOL(100,
  "                         (200,
  "                          300),
  "                         400)
  "   open_paren_at_EOL(
  "       100, 200, 300, 400)
  call cursor(a:lnum, 1)
  let [par_line, par_col] = searchpairpos('(\|{\|\[', '', ')\|}\|\]', 'bW',
        \ "line('.') < " . (a:lnum - s:maxoff) . " ? dummy :"
        \ . " synIDattr(synID(line('.'), col('.'), 1), 'name')"
        \ . " =~ '\\(Comment\\|String\\)$'")
  if par_line > 0
    call cursor(par_line, 1)
    if par_col != col("$") - 1
      return par_col
    endif
  endif

  " Delegate the rest to the original function.
  return GetPythonIndent(a:lnum)

endfunction

let pyindent_nested_paren="&sw*2"
let pyindent_open_paren="&sw*2"

"config NERDTREE
"autocmd vimenter * NERDTree
let NERDTreeWinPos = "left"
let NERDTreeWinSize=20
let NERDTreeShowBookmarks=1
map <silent> <F2> :NERDTreeToggle<cr>

"config taglist
"let Tlist_Auto_Open=1
let g:Tlist_Use_Right_Window=1
let g:Tlist_WinWidth=25
map <silent> <F12> :TlistToggle<cr>

"config ctags
"let tags=./tags

"config cscope
if has("cscope")
        set csprg=/usr/bin/cscope
        set csto=0
        set cst
        set nocsverb
        " add any database in current directory
        if filereadable("cscope.out")
            cs add cscope.out
        " else add database pointed to by environment
        elseif $CSCOPE_DB != ""
            cs add $CSCOPE_DB
        endif
        set csverb
endif

"config bundle
set nocompatible               " be iMproved
filetype off                   " required!

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

" let Vundle manage Vundle
" required! 
Bundle 'gmarik/vundle'

" My Bundles here:
"
" Syntax
"Bundle 'asciidoc.vim'
"Bundle 'confluencewiki.vim'
Bundle 'vim-scripts/cppcomplete'
Bundle 'vim-scripts/ctags.vim'
"Bundle 'othree/html5.vim'
"Bundle 'JavaScript-syntax'
"Bundle 'mako.vim'
"Bundle 'moin.vim'
"Bundle 'python.vim--Vasiliev'
"Bundle 'xml.vim'
"Bundle 'less'
"Bundle 'hallison/vim-markdown'
"Bundle 'tpope/vim-markdown'
"Bundle 'wikipedia.vim'
"Bundle 'derekwyatt/vim-scala'
"Bundle 'alswl/play2vim'
"Bundle 'tpope/vim-haml'
"Bundle 'kchmck/vim-coffee-script'
"Bundle 'vim-ruby/vim-ruby'
"
" Color
"
"Bundle 'desert256.vim'
"Bundle 'Impact'
"Bundle 'matrix.vim'
"Bundle 'vibrantink'
"Bundle 'vividchalk.vim'
"
" Ftplugin
"Bundle 'python_fold'
"
" Indent
"Bundle 'indent/html.vim'
"Bundle 'IndentAnything'
"Bundle 'Javascript-Indentation'
"Bundle 'mako.vim--Torborg'
"
" Plugin
Bundle 'The-NERD-tree'
"Bundle 'AutoClose--Alves'
"Bundle 'auto_mkdir'
"Bundle 'cecutil'
"Bundle 'fcitx.vim'
"Bundle 'FencView.vim'
"Bundle 'FuzzyFinder'
"Bundle 'jsbeautify'
"Bundle 'L9'
"Bundle 'Mark'
"Bundle 'matrix.vim'
"Bundle 'mru.vim'
"Bundle 'The-NERD-Commenter'
"Bundle 'restart.vim'
Bundle 'vim-scripts/taglist.vim'
"Bundle 'templates.vim'
"Bundle 'vimim.vim'
"Bundle 'css_color.vim'
"Bundle 'hallettj/jslint.vim'
"Bundle 'vcscommand.vim'
"Bundle 'snipMate'
"Bundle 'TaskList.vim'
"Bundle 'pep8'
"Bundle 'sontek/rope-vim'
"Bundle 'project.tar.gz'
"Bundle 'minibufexplorerpp'
"Bundle 'bufexplorer.zip'
"Bundle 'Align.vim'
"Bundle 'SQLUtilities'
"
" original repos on github
"Bundle 'tpope/vim-fugitive'
Bundle 'mattn/emmet-vim'
Bundle 'tomtom/tlib_vim'
Bundle 'vim-addon-mw-utils'
Bundle 'garbas/vim-snipmate'
"Bundle 'Lokaltog/vim-easymotion'
"Bundle 'rstacruz/sparkup', {'rtp': 'vim/'}
"Bundle 'tpope/vim-rails.git'
"
" non github repos
"Bundle 'git://git.wincent.com/command-t.git'
filetype plugin indent on     " required!
"
"Brief help
" :BundleList          - list configured bundles
" :BundleInstall(!)    - install(update) bundles
" :BundleSearch(!) foo - search(or refresh cache first) for foo
" :BundleClean(!)      - confirm(or auto-approve) removal of unused bundles
"
" see :h vundle for more details or wiki for FAQ
" NOTE: comments after Bundle command are not allowed..
