""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => 20111115 added by dairg
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" 判断操作系统，使用不同的目录
if has("win32")
	let $HOME = ""
	" set shell =c:\\Windows\\system32\\cmd.exe
	" set shell=c:\Windows\system32\cmd.exe
	set shell=cmd.exe
else
endif


set nocompatible
set magic
set ru
set ai
set sw=4
set ts=4
set dy=lastline
set backspace=indent,eol,start
colo evening
sy on
set go=
set nobackup
set hlsearch
set showmatch

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => 20110628 added by dairg start
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" 按照c的风格缩进
set cindent

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => 20110804 added by dairg start
" 对编码和字体的设置
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set encoding=utf-8
set fileencoding=utf-8
set guifont=NSimSun:h12:cGB2312
if has("win32")
	set langmenu=ja.UTF-8
	language message ja.UTF-8
else
endif

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => tab mappings
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
map <M-1> 1gt
map <M-2> 2gt
map <M-3> 3gt
map <M-4> 4gt
map <M-5> 5gt
map <M-6> 6gt
map <M-7> 7gt
map <M-8> 8gt
map <M-9> 9gt
map <M-t> :tabnew<CR>
map <M-w> :tabclose<CR>
map! <M-1> <esc>1gt
map! <M-2> <esc>2gt
map! <M-3> <esc>3gt
map! <M-4> <esc>4gt
map! <M-5> <esc>5gt
map! <M-6> <esc>6gt
map! <M-7> <esc>7gt
map! <M-8> <esc>8gt
map! <M-9> <esc>9gt
map! <M-t> <esc>:tabnew<CR>
map! <M-w> <esc>:tabclose<CR>
 
" Use CTRL-S for saving, also in Insert mode
noremap <C-S> :update<CR>
vnoremap <C-S> <C-C>:update<CR>
inoremap <C-S> <C-O>:update<CR>
       au BufWinLeave *.ztx mkview
       au BufWinEnter *.ztx silent loadview
au BufNewFile,BufRead *.tx1 setf tx1

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => 20110805 added by dairg start
" 对复制和粘贴的映射
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
vmap <C-C> "*y
map <C-P> "*p

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => 20110607 added by dairg start
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" set default show the line number
set nu

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => 20110607 added by dairg start
" 对vimrc文件的快速编辑映射
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"Set mapleader
"let mapleader = ","
if has("win32")
	" Windows系统的情况下
	"Fast reloading of the .vimrc
	map <silent> ,ss :source $VIM/_vimrc<cr>
	"Fast editing of .vimrc
	map <silent> ,ee :e $VIM/_vimrc<cr>
	"map <silent> <leader>ee :e $VIM/_vimrc<cr>
	"When .vimrc is edited, reload it
	autocmd! bufwritepost .vimrc source $VIM/_vimrc
else
	" Linux系统的情况下
	map <silent> ,ss :source $HOME/.vimrc<cr>
	"Fast editing of .vimrc
	map <silent> ,ee :e $HOME/.vimrc<cr>
	"map <silent> <leader>ee :e $VIM/_vimrc<cr>
	"When .vimrc is edited, reload it
	"autocmd! bufwritepost .vimrc source $HOME/.vimrc
endif


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => 20110607 added by dairg start
" 设置初始窗体的大小
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" 设置高度
set lines=1000
" 设置宽度
set columns=10000

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => 20110801 dairugang start
" 插件VimWiki的相关设置
" => 20111011 dairugang modified
" 插件VimWiki的相关设置
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:vimwiki_use_mouse = 1
let g:vimwiki_folding = 0

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => 20111011 dairugang modified
" 注释掉
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" let g:vimwiki_list = [{
" \ 'path': 'E:/01_moyan/00_moyan_SugarSync/13_myVimWiki/VimWiki_moyan/wikiFile/',
" \ 'path_html': 'E:/01_moyan/00_moyan_SugarSync/13_myVimWiki/VimWiki_moyan/html/',
" \ 'css_name': 'css/style.css',
" \ 'html_header': 'E:/01_moyan/00_moyan_SugarSync/13_myVimWiki/VimWiki_moyan/template/default.tpl'}
" \ ,
" \ {'path': 'E:/01_moyan/11_myVimWiki/VimWiki_temp/wikiFile/',
" \ 'path_html': 'E:/01_moyan/11_myVimWiki/VimWiki_temp/html/',
" \ 'css_name': 'css/style.css',
" \ 'html_header': 'E:/01_moyan/11_myVimWiki/VimWiki_temp/template/default.tpl'}
" \ ,
" \ {'path': 'E:/01_moyan/11_myVimWiki/VimWiki_JTE/wikiFile/',
" \ 'path_html': 'E:/01_moyan/11_myVimWiki/VimWiki_JTE/html/',
" \ 'css_name': 'css/style.css',
" \ 'html_header': 'E:/01_moyan/11_myVimWiki/VimWiki_JTE/template/default.tpl'}]

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => 20111011 dairugang added
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let wiki_1 = {}
let wiki_1.path = 'E:/01_moyan/00_moyan_SugarSync/13_myVimWiki/VimWiki_moyan/_wikiFile/'
let wiki_1.path_html = 'E:/01_moyan/00_moyan_SugarSync/13_myVimWiki/VimWiki_moyan/'
let wiki_1.css_name = 'css/style.css'
let wiki_1.template_path ='E:/01_moyan/00_moyan_SugarSync/13_myVimWiki/VimWiki_moyan/_template/'
let wiki_1.template_default = 'default'
let wiki_1.template_ext = '.tpl'

let wiki_2 = {}
let wiki_2.path = 'E:/01_moyan/00_moyan_SugarSync/13_myVimWiki/VimWiki_temp/wikiFile/'
let wiki_2.path_html = 'E:/01_moyan/00_moyan_SugarSync/13_myVimWiki/VimWiki_temp/html/'
let wiki_2.css_name = 'css/style.css'
let wiki_2.template_path = 'E:/01_moyan/00_moyan_SugarSync/13_myVimWiki/VimWiki_temp/template/'
let wiki_2.template_default = 'default'
let wiki_2.template_ext = '.html'
" let wiki_2.nested_syntaxes = {'python': 'python', 'c++': 'cpp'}

let g:vimwiki_list = [wiki_1, wiki_2]

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => 20111018 dairugang added
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:vimwiki_camel_case = 0

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => 20111025 dairugang added
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" default: 'pdf,txt,doc,rtf,xls,php,zip,rar,7z,html,gz'
let g:vimwiki_file_exts = 'pdf,txt,doc,rtf,xls,php,zip,rar,7z,html,gz,mm,chm'


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => 20110802 dairugang start
" 让外部插件可用的设置
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
filetype plugin indent on
filetype plugin on


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => 20111017 dairugang start
" 解决quickfix窗口中的乱码问题的函数
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
function! QfMakeConv()
   let qflist = getqflist()
   for i in qflist
	  "以下可能是针对中文系统
      "let i.text = iconv(i.text, "cp936", "utf-8")
	  "以下可能是针对日文系统，utf-8是encoding的值
      let i.text = iconv(i.text, "cp932", "utf-8")
   endfor
   call setqflist(qflist)
endfunction

au QuickfixCmdPost make call QfMakeConv()

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => 20120814 dairugang
" 安装pathogen插件
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
call pathogen#infect()
syntax on


