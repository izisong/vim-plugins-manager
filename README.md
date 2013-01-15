vim-plugins-manager
===================
## 关于
[vim-plugins-manager] 是一个使用[bundle]管理vim插件和配置文件的工具。
manage the plugins of vim and the config file

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
