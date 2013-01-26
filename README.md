vim-plugins-manager
===================
## 关于
[vim-plugins-manager] 是一个使用[vundle]管理vim插件和定义一个常用配置文件的工具。

## 快速使用

1. 安装 [vim-plugins-manager]:

      ```
      $ git clone https://github.com/tracl01/vim-plugins-manager.git ~/.vim
      ```
    
2. 安装 [vim-plugins-manager]的子模块[vundle]：

      ```
      $ cd .vim
      ~/.vim$ git submodule update
      ```

3. 创建 链接文件:

      ```
      $ ln ~/.vim/vimrc ~/.vimrc
      ```

4. 用vim打开 .vimrc 文件，使用vundle管理插件，将你需要安装的vim插件的bundle前注释去掉，比如：

      ```
      "Bundle 'asciidoc.vim'
      Bundle 'vim-scripts/taglist.vim'
      "Bundle 'vim-scripts/cppcomplete'
      "Bundle 'vim-scripts/ctags.vim'
      Bundle 'othree/html5.vim'
      "Bundle 'JavaScript-syntax'
      "Bundle 'mako.vim'
      ```
   再在vim命令行输入一下命令，即可安装taglist,ctags两个插件，重启vim，即可生效。vundle的详细使用见:https://github.com/gmarik/vundle
      ```
      :BundleInstall
      ```

5. 此vim配置文件.vimrc设置对插件taglist,ctags,cscope的配置，需要系统安装ctags,cscope，否则无法使用，如果是ubuntu用户，只需执行命令：

      ```
      $ sudo apt-get install ctags
      $ sudo apt-get install cscope
      ```

   如果不需要使用ctags,cscope,taglist插件，请将.vimrc中与其相关的配置行注释掉，或者删除，否则会影响vim的正常打开。


## 此vim配置文件下，vim的使用简介

1. 在vim普通模式下，按F2，在vim窗口左侧打开文件目录树。再次按F2，隐藏左侧窗口。
2. 在vim普通模式下，按F12，在vim窗口右侧打开当前编辑文件的函数列表。再次按F12，隐藏右侧窗口。
3. 在vim普通模式下，按F3，进入粘贴模式，此时对编辑文件粘贴文本，可以以复制时的格式粘贴，不会出现自动换行，以致排版出错。再次按F3，退出粘贴模式。
4. 按ctrl+ww，实现从当前窗口跳转到下一窗口；按ctrl+wh，实现从当前窗口，跳转到其左侧窗口。
5. ctags，cscope可以实现函数调转等强大功能。其使用见XX。
