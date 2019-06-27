# vimrc

**更新说明**
- 去掉了 `Windows` 版本
- 目前经过测试的版本是：`Ubuntu 18.04.2 LTS'

**使用方法**

> 下面以 `wsl ubuntu` 为例。

- `vim` 回车：进入 `vim`
- 输入 `:version` 回车，查看配置文件路径
```
   system vimrc file: "$VIM/vimrc"
     user vimrc file: "$HOME/.vimrc"
 2nd user vimrc file: "~/.vim/vimrc"
      user exrc file: "$HOME/.exrc"
       defaults file: "$VIMRUNTIME/defaults.vim"
  fall-back for $VIM: "/usr/share/vim"
```

> `$VIM` 和 `$HOME` 可以通过在 `vim` 中 `:echo $变量名` 查看。

- 克隆仓库到本机路径 `/mnt/code/vimrc`

  `git clone git@github.com:jpch89/vimrc.git`

- 拷贝下载的 `.vimrc` 文件到 `/home/jpch89/` 中
  `cp /mnt/code/vimrc/Unix/.vimrc ~/`



> `Windows` 版的配置文件可以使用 `:set fileformat=unix` 来转换成 `Unix` 版配置文件。
>
> 简写形式是 `:set ff=unix` 回车。

