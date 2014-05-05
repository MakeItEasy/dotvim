Here is my vim settings.(vimrc)

当到一个新的环境时
---
1. 首先在github中取到自己的dotvim环境
`git clone url`
2. 如果是linux的话，那么确认vim中scriptnames中vimrc的路径(如果让所有用户共享的话，把autoload，bundle等目录那么放到/etc/vim/下面)
3. 在读取vimrc的路径中，建立一个link到clone下来的_vimrc文件
`ln -s ...`  
`ln -s dotvim/_vimrc ~/.vimrc`  
`ln -s dotvim/autoload vim/vimfiles/autoload`  
4. 如果时windows的话，那么直接拷贝clone下来的_vimrc文件到相应的目录（我的默认路径就是vim的根目录）
5. 拷贝autoload，bundle，c-support目录到vim/vimfiles目录中，其中autoload是已经存在的目录。
6. 生成帮助文档的话，用 `helptags /etc/vim/plugin/doc` 。(默认clone下来的已经生成过help文档)

我的vim环境中的插件
---
* snipMate  
	主要是定义一些语法，这样可以快速的书写一些常用的代码。比如可以定义for循环的语法，然后在写代码的时候，只需要输入for<tab>就可以完成for循环的代码。
* rails  
	这个是rails编程的插件。help rails可以查询帮助
* FuzzyFinder & l9  
	快捷查找文件，就像eclipse中的<ctrl+shift+R>
* NERD_tree  
	显示项目目录
* MarkdownPreview  
	预览markdown文件  
	注意事项：  
	  1. 该插件需要markdown命令，windows下可以安装python，并安装markdown_py。(自己看插件源码，很易懂)  
	  2. 这个插件是参照以下链接：<http://blog.natesilva.com/post/5256838248/how-to-preview-a-markdown-document-in-vim>
* vim-fugitive  
    在vim中使用git命令的插件。help fugitive可以查询帮助。  
	安装：在bundle目录执行  `git clone git://github.com/tpope/vim-fugitive.git`
* vim-powerline  
    在vim的状态栏插件。help powerline可以查询帮助。  
	安装：在bundle目录执行  `git clone git://github.com/Lokaltog/vim-powerline.git`
