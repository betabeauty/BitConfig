set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.
Plugin 'chrispoomey/vim-tmux-navigator'
Plugin 'tmhedberg/SimpylFold'
Plugin 'vim-scripts/indentpython.vim'

" c++/c
Plugin 'Valloric/YouCompleteMe'
Plugin 'Raimondi/delimitMate'

Plugin 'powerline/powerline', {'rtp': 'powerline/bindings/vim/'}
Plugin 'kien/ctrlp.vim'

" Plugin 'Lokaltog/powerline', {'rtp': 'powerline/bindings/vim/'}
" wget https://github.com/powerline/powerline/raw/develop/font/PowerlineSymbols.otf
" wget https://github.com/powerline/powerline/raw/develop/font/10-powerline-symbols.conf

" file tree list
Plugin 'scrooloose/nerdtree'
Plugin 'jistr/vim-nerdtree-tabs'
Plugin 'Xuyuanp/nerdtree-git-plugin'
Plugin 'scrooloose/nerdcommenter'

" git
Plugin 'tpope/vim-fugitive'

" python
Plugin 'scrooloose/syntastic'
Plugin 'nvie/vim-flake8'

" theme of vim
Plugin 'altercation/vim-colors-solarized'
Plugin 'tomasr/molokai'
Plugin 'jnurmine/Zenburn'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line


" Switch syntax highlighting on, when the terminal has colors
" Also switch on highlighting the last used search pattern.
if (&t_Co > 2 || has("gui_running"))
   syntax on
   color desert
   " color solarized
   " color molokai
   set hlsearch
   " set incsearch
endif

" call togglebg#map("<F5>")

" 设置字体
" set guifont=Liberation\Mono\ 20
set laststatus=2

" nerd commenter
" Add spaces after comment delimiters by default
let g:NERDSpaceDelims = 1
" Use compact syntax for prettified multi-line comments
let g:NERDCompactSexyComs = 1
" Set a language to use its alternate delimiters by default
let g:NERDAltDelims_java = 1
let g:NERDAltDelims_python = 1
let g:NERDAltDelims_c = 1
" Add your own custom formats or override the defaults
" let g:NERDCustomDelimiters = { 'c': { 'left': '/**','right': '*/' } }
" Enable trimming of trailing whitespace when uncommenting
let g:NERDTrimTrailingWhitespace = 1

" Powerline settings
set t_Co=256

" NerdTree settings
let NERDTreeIgnore=['\.pyc$', '\~$'] "ignore files in NERDTree
map <leader>t :NERDTreeToggle<CR>
let NERDTreeShowHidden=1
" 在终端启动vim时，共享NERDTree
let g:nerdtree_tabs_open_on_console_startup=1
" 显示书签列表
let NERDTreeShowBookmarks=1
let g:NERDTreeIndicatorMapCustom = {
    \ "Modified"  : "j",
    \ "Staged"    : "✚",
    \ "Untracked" : "✭",
    \ "Renamed"   : "➜",
    \ "Unmerged"  : "═",
    \ "Deleted"   : "✖",
    \ "Dirty"     : "✗",
    \ "Clean"     : "✔︎",
    \ "Unknown"   : "?"
    \ }

"在处理未保存或只读文件的时候,弹出确认
set confirm
"自动换行
set wrap
"整词换行
set linebreak
"Tab键的宽度
set tabstop=4
"统一缩进为4
set softtabstop=4
set shiftwidth=4
"不要用空格符代替字表符
"set expandtab
"在行和段开始处使用制表符
"set smarttab
"显示行号
set number
"显示行号列号,白色的哪行
set ruler
"突出显示当| wincmd p | diffthis前行
set cursorline
"ctermbg 代表背景色 cterfg 代表前景色 guibg 下划线的背景色 guifg
"下划线的前景色
"hi CursorLine cterm=NONE ctermbg=darkred ctermfg=white guibg=NONE guifg=NONE
"hi CursorLine cterm=NONE ctermbg=lightgray ctermfg=black guibg=NONE guifg=NONE
"hi CursorLine cterm=NONE ctermbg=lightblue ctermfg=black guibg=NONE guifg=NONE
"hi CursorLine cterm=NONE ctermbg=NONE ctermfg=NONE guibg=lightgray guifg=black
"set cursorcolumn
"用浅色高亮当前行
"autocmd InsertLeave * se nocul
"autocmd InsertLeave * se cul
"历史记录数
set history=1000
"禁止生成临时文件
set nobackup
set noswapfile
"行内替换
set gdefault
"编码设置
set enc=utf-8
set fencs=utf-8,ucs-bom,shiftjis,gbk
"语言设置
set helplang=cn
set encoding=utf-8
set langmenu=zh_CN.UTF-8
language message zh_CN.UTF-8
set imcmdline
source $VIMRUNTIME/delmenu.vim
source $VIMRUNTIME/menu.vim
"命令行高度,默认为1,这里是1
set cmdheight=1

" Only do this part when compiled with support for autocommands.
if has("autocmd")

  " Enable file type detection.
  " Use the default filetype settings, so that mail gets 'tw' set to 72,
  " 'cindent' is on in C files, etc.
  " Also load indent files, to automatically do language-dependent indenting.
  "filetype plugin indent on

  " Put these in an autocmd group, so that we can delete them easily.
  "augroup vimrcEx
  "au!

  " For all text files set 'textwidth' to 78 characters.
  "autocmd FileType text setlocal textwidth=78

  " When editing a file, always jump to the last known cursor position.
  " Don't do it when the position is invalid or when inside an event handler
  " (happens when dropping a file on gvim).
  " Also don't do it when the mark is in the first line, that is the default
  " position when opening a file.
  "autocmd BufReadPost *
  "  \ if line("'\"") > 1 && line("'\"") <= line("$") |
  "  \   exe 'normal! g`\'" |/// use " to normal
  "  \ endif
  "augroup END
else

  "set autoindent		" always set autoindenting on

endif " has("autocmd")

" Always set autoindenting on
set autoindent
set cindent

"保存全局变量
set viminfo+=!
"带有如下字符的单词不要被换行符分割
set iskeyword+=_,$,@,%,#,-
set linespace=0
"增强命令行自动完成操作
set wildmenu
set backspace=2
set whichwrap+=<,>,h,l
" In many terminal emulators the mouse works just fine, thus enable it.
set mouse=a
set mousemodel=popup
set selection=inclusive
set selectmode=mouse,key
"通过使用:command命令,告诉那一行被改动过
"set report=0
"启动时不显示那个援助儿童的提示
set shortmess=atI
"在被分割的窗口显示空白,便于阅读
"set fillchars=vert:\ ,stl:\ ,stlnc:\
"高亮显示匹配的括号
set showmatch
set matchtime=1
"光标移动到buffer顶部和底部时保持3行距离
set scrolloff=3
"自动折叠功能
set foldmethod=indent
set foldlevel=99
map <space> za

" Convenient command to see the difference between the current buffer and the
" file it was loaded from, thus the changes you made.
" Only define it when not defined already.
"if !exists(":DiffOrig")
"  command DiffOrig vert new | set bt=nofile | r ++edit # | 0d_ | diffthis
"      \ | wincmd p | diffthis
"endif

" Python environment
let g:ycm_autoclose_preview_window_after_completion=1
map <leader>g  :YcmCompleter GoToDefinitionElseDeclaration<CR>
let python_highlight_all=1
" syntax on

" let g:ycm_python_binary_path = '/usr/bin/python3'
"set completeopt=longest,menu	"让Vim的补全菜单行为与一般IDE一致(参考VimTip1228)
"autocmd InsertLeave * if pumvisible() == 0|pclose|endif	"离开插入模式后自动关闭预览窗口
" inoremap <expr> <CR>       pumvisible() ? "\<C-y>" : "\<CR>"	"回车即选中当前项

"youcompleteme  默认tab  s-tab 和自动补全冲突
"let g:ycm_key_list_select_completion=['<c-n>']
"let g:ycm_key_list_select_completion = ['<Down>']
""let g:ycm_key_list_previous_completion=['<c-p>']
"let g:ycm_key_list_previous_completion = ['<Up>']
"let g:ycm_confirm_extra_conf=0 "关闭加载.ycm_extra_conf.py提示
"
"let g:ycm_collect_identifiers_from_tags_files=1	" 开启 YCM 基于标签引擎
"let g:ycm_min_num_of_chars_for_completion=2	" 从第2个键入字符就开始罗列匹配项
"let g:ycm_cache_omnifunc=0	" 禁止缓存匹配项,每次都重新生成匹配项
"let g:ycm_seed_identifiers_with_syntax=1	" 语法关键字补全
"nnoremap <F5> :YcmForceCompileAndDiagnostics<CR>	"force recomile with syntastic
""nnoremap <leader>lo :lopen<CR>	"open locationlist
""nnoremap <leader>lc :lclose<CR>	"close locationlist
"inoremap <leader><leader> <C-x><C-o>
""在注释输入中也能补全
"let g:ycm_complete_in_comments = 1
""在字符串输入中也能补全
"let g:ycm_complete_in_strings = 1
""注释和字符串中的文字也会被收入补全
"let g:ycm_collect_identifiers_from_comments_and_strings = 0
"
"nnoremap <leader>jd :YcmCompleter GoToDefinitionElseDeclaration<CR> " 跳转到定义处
"let g:ycm_autoclose_preview_window_after_completion=1
"map <leader>g  :YcmCompleter GoToDefinitionElseDeclaration<CR>

"set showcmd

"if has("autocmd")
"   au InsertEnter * silent execute "!gconftool-2 --type string --set /apps/gnome-terminal/profiles/Default/cursor_shape ibeam"
"   au InsertLeave * silent execute "!gconftool-2 --type string --set /apps/gnome-terminal/profiles/Default/cursor_shape block" 
"   au VimLeave * silent execute "!gconftool-2 --type string --set /apps/gnome-terminal/profiles/Default/cursor_shape ibeam"
"endif
"


" "configure tags - add additional tags here or comment out not-used ones
" set tags+=~/.vim/tags/cpp
" set tags+=~/.vim/tags/qtcore
" set tags+=~/.vim/tags/qtwidgets
" set tags+=~/.vim/tags/qtgui
" " build tags of your own project with CTRL+F12
" map <C-F12> :!ctags -R --c++-kinds=+p --fields=+iaS --extra=+q .<CR>
" " OmniCppComplete
" let OmniCpp_NamespaceSearch = 1
" let OmniCpp_GlobalScopeSearch = 1
" let OmniCpp_ShowAccess = 1
" let OmniCpp_ShowPrototypeInAbbr = 1 " show function parameters
" let OmniCpp_MayCompleteDot = 1 " autocomplete after .
" let OmniCpp_MayCompleteArrow = 1 " autocomplete after ->
" let OmniCpp_MayCompleteScope = 1 " autocomplete after ::
" let OmniCpp_DefaultNamespaces = ["std", "_GLIBCXX_STD"]
" " automatically open and close the popup menu / preview window
" au CursorMovedI,InsertLeave * if pumvisible() == 0|silent! pclose|endif
" set completeopt=menuone,menu,longest,preview

