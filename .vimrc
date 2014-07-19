""""""""""""""""""""""""""""""""""""""""
" plugin manager -- for vundle
""""""""""""""""""""""""""""""""""""""""
set nocompatible              " be iMproved
filetype off                  " required!

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

" let Vundle manage Vundle
" required! 
Bundle 'gmarik/vundle'

" My bundles here:
"
" original repos on GitHub
Bundle 'tpope/vim-fugitive'
Bundle 'Lokaltog/vim-easymotion'
Bundle 'rstacruz/sparkup', {'rtp': 'vim/'}
Bundle 'tpope/vim-rails.git'
Bundle 'mbbill/echofunc'
Bundle 'scrooloose/syntastic'
Bundle 'Valloric/YouCompleteMe'
Bundle 'yarko/vim-taglist'

" vim-scripts repos
Bundle 'L9'
Bundle 'FuzzyFinder'
Bundle 'winmanager'

" non-GitHub repos
Bundle 'git://git.wincent.com/command-t.git'

" Git repos on your local machine (i.e. when working on your own plugin)
" Bundle 'file:///Users/gmarik/path/to/plugin'
" ...

filetype plugin indent on     " required!

"
" Brief help
" :BundleList          - list configured bundles
" :BundleInstall(!)    - install (update) bundles
" :BundleSearch(!) foo - search (or refresh cache first) for foo
" :BundleClean(!)      - confirm (or auto-approve) removal of unused bundles
"
" see :h vundle for more details or wiki for FAQ
" NOTE: comments after Bundle commands are not allowed.


""""""""""""""""""""""""""""""""""""""""
" plugin manager -- for pathogen
""""""""""""""""""""""""""""""""""""""""
" execute pathogen#infect()


""""""""""""""""""""""""""""""""""""""""
" Basic Setting
""""""""""""""""""""""""""""""""""""""""
set nocompatible
set showcmd

set cursorline " 高亮光标所在的行
"hi cursorline guibg=#222222
"hi CursorColumn guibg=#333333

colorscheme desert

" ESC trick
imap jj <ESC>

" set default encoding
set fenc=utf-8
set fencs=utf-8,usc-bom,euc-jp,gb18030,gbk,gb2312,cp936

" how many lines should be recorded in 'history file'
set history=100

" prompt out 'confirmation' when dealing with unsaved file
set confirm

" share clipboard
set clipboard+=unnamed

" 侦测文件类型
filetype on

" 载入文件类型插件
filetype plugin on

" 为特定文件载入相关缩进
filetype indent on
autocmd FileType python setlocal et sta sw=4 sts=4

" 保存全局变量 
set viminfo+=! 

" 带有如下符号的单词不要被换行分割 
set iskeyword+=_,$,@,%,#,- 

" 语法高亮 
syntax enable
syntax on 

" 高亮字符，让其不受100列限制 
" :highlight OverLength ctermbg=red ctermfg=white guibg=red guifg=white 
" :match OverLength '\%101v.*' 

" 状态行颜色 
highlight StatusLine guifg=SlateBlue guibg=Yellow 
highlight StatusLineNC guifg=Gray guibg=White 


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""" 
" 文件设置 
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""" 
" 不要备份文件（根据自己需要取舍） 
set nobackup
set nowb

" 不要生成swap文件，当buffer被丢弃的时候隐藏它 
setlocal noswapfile 
set bufhidden=hide 

"设置当文件被外部改变的时侯自动读入文件
if exists("&autoread")
	set autoread
endif

" 显示行号
set number

" 增强模式中的命令行自动完成操作 
set wildmenu 

" 在状态行上显示光标所在位置的行号和列号 
set ruler 
set rulerformat=%20(%2*%<%f%=\ %m%r\ %3l\ %c\ %p%%%) 

" 命令行（在状态行下）的高度，默认为1，这里是2 
set cmdheight=2 

" 使回格键（backspace）正常处理indent, eol, start等 
set backspace=2 

" 允许backspace和光标键跨越行边界 
set whichwrap+=<,>,h,l 

" 可以在buffer的任何地方使用鼠标（类似office中在工作区双击鼠标定位） 
set mouse=a 
set selection=exclusive 
set selectmode=mouse,key 

" 启动的时候不显示那个援助索马里儿童的提示 
set shortmess=atI 

" 通过使用: commands命令，告诉我们文件的哪一行被改变过 
set report=0 

" 不让vim发出讨厌的滴滴声 
set noerrorbells 

" 在被分割的窗口间显示空白，便于阅读 
set fillchars=vert:\ ,stl:\ ,stlnc:\ 


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""" 
" 搜索和匹配 
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""" 
" 高亮显示匹配的括号 
set showmatch 

" 匹配括号高亮的时间（单位是十分之一秒） 
set matchtime=5 

" 在搜索的时候忽略大小写 
set ignorecase 

" 不要高亮被搜索的句子（phrases） 
set hlsearch 

" 在搜索时，输入的词句的逐字符高亮（类似firefox的搜索） 
set incsearch 

" 输入:set list命令是应该显示些啥？ 
set listchars=tab:\|\ ,trail:.,extends:>,precedes:<,eol:$ 

" 光标移动到buffer的顶部和底部时保持3行距离 
set scrolloff=3 

" 不要闪烁 
set novisualbell 

" 我的状态行显示的内容（包括文件类型和解码） 
set statusline=%F%m%r%h%w\[POS=%l,%v][%p%%]\%{strftime(\"%d/%m/%y\ -\ %H:%M\")}		" %{EchoFuncGetStatusLine()}

" 总是显示状态行 
set laststatus=2 

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""" 
" 文本格式和排版 
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""" 
" 自动格式化 
set formatoptions=tcrqn 

" 继承前一行的缩进方式，特别适用于多行注释 
set autoindent 

" 为C程序提供自动缩进 
set smartindent 

" 使用C样式的缩进 
set cindent 

" 制表符为4 
set tabstop=4 

" 统一缩进为2 
set softtabstop=2 
set shiftwidth=2 

" 不要用空格代替制表符 
set expandtab 

" 不要换行 
" set nowrap 

" 在行和段开始处使用制表符 
set smarttab 

" 用空格键来开关折叠 
set foldenable 
set foldmethod=syntax
set foldlevel=100
nnoremap <space> @=((foldclosed(line('.')) < 0) ? 'zc':'zo')<CR> 

" remove toolbar
:set guioptions-=T


""""""""""""""""""""""""""""""""""""""""
" For plugins
""""""""""""""""""""""""""""""""""""""""

" For plugin -- TagList
let Tlist_Show_One_File=1
let Tlist_Exit_OnlyWindow=1

"启动vim时如果存在tags则自动加载
if exists("tags")
	set tags=./tags
endif

" For plugin cscope and quickfix(open with :cw)
:set cscopequickfix=s-,c-,d-,i-,t-,e-

if has("cscope")
" use both cscope and ctag for 'ctrl-]', ':ta', and 'vim -t'
    set cscopetag

    " check cscope for definition of a symbol before checking ctags: set to 1
    " if you want the reverse search order.
    set csto=0

    " add any cscope database in current directory
    if filereadable("cscope.out")
        cs add cscope.out  
    " else add the database pointed to by environment variable 
    elseif $CSCOPE_DB != ""
        cs add $CSCOPE_DB
    endif

    " show msg when any other cscope db added
    set cscopeverbose  
endif

nmap <C-@>s :cs find s <C-R>=expand("<cword>")<CR><CR>
nmap <C-@>g :cs find g <C-R>=expand("<cword>")<CR><CR>
nmap <C-@>c :cs find c <C-R>=expand("<cword>")<CR><CR>
nmap <C-@>t :cs find t <C-R>=expand("<cword>")<CR><CR>
nmap <C-@>e :cs find e <C-R>=expand("<cword>")<CR><CR>
nmap <C-@>f :cs find f <C-R>=expand("<cfile>")<CR><CR>
nmap <C-@>i :cs find i ^<C-R>=expand("<cfile>")<CR>$<CR>
nmap <C-@>d :cs find d <C-R>=expand("<cword>")<CR><CR>
" :copen<CR>

"设置按F12就更新tags的方法
map <F12> :call Do_Tag_CsTag()<CR>
function Do_Tag_CsTag()
  :!ctags -R . 
  :!cscope -R -b -q 
  :cs kill -1
  execute "cs reset"
  execute "cs add cscope.out"
  "if (filereadable("cscope.out"))
  "  execute "cs add cscope.out"
  "elseif ($CSCOPE_DB != "")
  "  execute "cs add $CSCOPE_DB"
  "endif
endfunction  

function Do_CsTag()
	    let dir = getcwd()
	    if filereadable("tags")
		    if(g:iswindows==1)
	            let tagsdeleted=delete(dir."\\"."tags")
			else
				let tagsdeleted=delete("./"."tags")
			endif
		    if(tagsdeleted!=0)
	            echohl WarningMsg | echo "Fail to do tags! I cannot delete the tags" | echohl None
				return
			endif
		endif
		
		if has("cscope")
			silent! execute "cs kill -1"
		endif
		
	    if filereadable("cscope.files")
			if(g:iswindows==1)
	            let csfilesdeleted=delete(dir."\\"."cscope.files")
			else
				let csfilesdeleted=delete("./"."cscope.files")
			endif
			if(csfilesdeleted!=0)
	            echohl WarningMsg | echo "Fail to do cscope! I cannot delete the cscope.files" | echohl None
				return
			endif
		endif
										    
	    if filereadable("cscope.out")
			if(g:iswindows==1)
	            let csoutdeleted=delete(dir."\\"."cscope.out")
			else
				let csoutdeleted=delete("./"."cscope.out")
			endif
			if(csoutdeleted!=0)
	            echohl WarningMsg | echo "Fail to do cscope! I cannot delete the cscope.out" | echohl None
				return
			endif
		endif
										    
		if(executable('ctags'))
			"silent! execute "!ctags -R --c-types=+p --fields=+S *"
			silent! execute "!ctags -R --c++-kinds=+p --fields=+iaS --extra=+q ."
		endif
			
	    if(executable('cscope') && has("cscope") )
			if(g:iswindows!=1)
	            silent! execute "!find . -name '*.h' -o -name '*.c' -o -name '*.cpp' -o -name '*.java' -o -name '*.cs' > cscope.files"
			else
				silent! execute "!dir /s/b *.c,*.cpp,*.h,*.java,*.cs >> cscope.files"
		    endif
			silent! execute "!cscope -b"
			execute "normal :"
															        
			if filereadable("cscope.out")
				execute "cs add cscope.out"
			endif
		endif
endfunction


" For plugin -- WinManager
let g:winManagerWindowLayout='FileExplorer|TagList'
nmap :wm<cr> :WMToggle<cr>

" For plugin -- Omnicppcomplete
"filetype plugin on
"imap <F3> <C-X><C-O>
"autocmd CursorMovedI * if pumvisible() == 0|pclose|endif
 autocmd InsertLeave * if pumvisible() == 0|pclose|endif
"let OmniCpp_MayCompleteDot = 1
"let OmniCpp_MayCompleteArrow = 1
"let OmniCpp_MayCompleteScope = 1
"let OmniCpp_SelectFirstItem = 2
" let OmniCpp_GlobalScopeSearch = 1

" For plugin -- clang complete
" imap zz <C-X><C-U>

" For plugin -- YCM
let g:ycm_confirm_extra_conf = 0

highlight Pmenu guibg=darkgrey guifg=black
highlight PmenuSel guibg=blue guifg=black

" For plugin -- echofunc
let g:EchoFuncKeyNext='<A-=>'
let g:EchoFuncKeyPrev='<A-->'
" let g:EchoFuncShowOnStatus=1
