**Abstract:** 本项目对笔者的vim配置进行备份，方便查看和恢复。

---

# 引言
vim是终端中强大的文本编辑器，有着丰富的文档[^1]。vim由vi发展而来，后来又催生了许多优秀的编辑器，如gvim、nvim等。

# Vim 配置路径
+ 系统配置文件位于 Vim 的安装目录（默认路径为 `/etc/.vimrc`）
+ 用户配置: `~/.vimrc`或者`~/.vim/vimrc`

# Vim配置参数
vimrc中的参数对应ex命令，可以用过source来调用外部文件。
在 Vim 中输入`:set all`指令来查询配置参数(要在终端中而不是VS Code中查看)。
也可以通过`:help vimrc`查看vimrc文件的说明。

# ESC和CAPS的互换
Vim中常用到ESC键，为了方便起见，本人在全局将ESC与不常用的CAPSLOCK键进行互换。在使用fcitx安装中文输入法后，修改`/etc/default/keyboard`文件后就不起作用了，但setxkbmap命令仍然有效。由于setxkbmap每次都要开机后重启，因此我们在`~/.bashrc`最后添加如下内容：

``` bash
setxkbmap -option caps:escape
```

# VSCode使用vim
vscode和vim各有优缺点，笔者常在各种不同场景中配合使用。vscode中也有vim插件，使用时在vscode中简单配置，但要想达到vim中的效果，可能还要差一些。同时，vscode中可以同步用户配置，这里我取消了vim插件的同步。

# vim剪切板
vim剪切板和系统剪切板是分开的，若要将vim打开的这个文件复制到别处，需要确保vim的剪切板支持复制到系统剪切板，具体方法可以参考[^2]。

# vim插件
vim中有很多优秀的插件，本项目中`plugin.vimrc`文件就是配置插件的。这里我们用一个轻量的vim-plug来管理插件。下载插件时，可能会用到raw.githubusercontent.com，这个网址可能开着代理时也访问不了，文章[^3]描述了修改hosts的方案。

[^1]:https://www.vim.org/docs.php
[^2]:https://zhuanlan.zhihu.com/p/73984381
[^3]:https://blog.csdn.net/yihui8/article/details/109188924
