Here is my vim settings.(vimrc)

当到一个新的环境时
---
1. 首先在github中取到自己的dotvim环境
`git clone url
1. 如果时linux的话，那么确认vim中scriptnames中vimrc的路径
1. 在读取vimrc的路径中，建立一个link到clone下来的_vimrc文件
`ln -s ...
1. 如果时windows的话，那么直接拷贝clone下来的_vimrc文件到相应的目录（我的默认路径就是vim的根目录）
1. 拷贝autoload，bundle，c-support目录到vim/vimfiles目录中，其中autoload是已经存在的目录。

我的vim环境中的插件
---
* snipMate
>	主要是定义一些语法，这样可以快速的书写一些常用的代码。比如可以定义for循环的语法，然后在写代码的时候，只需要输入for<tab>就可以完成for循环的代码。
* rails
>	这个是rails编程的插件。help rails可以查询帮助
* FuzzyFinder & l9
>	快捷查找文件，就像eclipse中的<ctrl+shift+R>
