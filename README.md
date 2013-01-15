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
      ~/.vim$ git-submodule add https://github.com/gmarik/vundle.git bundle/vundle
      ```

3. 创建 链接文件:

      ```
      $ ln ~/.vim/vimrc ~/.vimrc
      ```
2. 将下载的zip文件解压，然后将里面的.vim目录放置于个人主目录下即可
2.再在个人主目录下创建链接文件：ln ~/.vim/vimrc .vimrc

打开vim，即可看到配置的效果
