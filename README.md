# vim-conf
`.vim/` and `.vimrc` in this repository

## contents
### colorscheme
vim: [onedark](https://github.com/joshdick/onedark.vim) by joshdick.

neovim: [nord](https://github.com/arcticicestudio/nord-vim) by Arctic Ice Studio

### Plugins

Plugins managed by [vim-plug](https://github.com/junegunn/vim-plug)

Please view `.vimrc` and `init.vim`


### .vimrc
vim: [read](.vimrc).

neovim: [read](init.vim).

## usage
Please Rename or Remove `~/.vimrc` and `~/.vim` in advance.

You can choose from `simple` or `manual` method.

### simple
```bash
$ git clone https://github.com/silmin/vim-conf
$ cd vim-conf
$ ./autoset.sh
```
done.

### manual
```bash
$ cd ~
$ git clone https://github.com/silmin/vim-conf .vimconf
$ ln -s .vimconf/.vimrc .vimrc
$ ln -s .vimconf/.vim .vim
$ ln -s .vimconf/init.vim .config/nvim/init.vim
```

next, open vim
```bash
$ vim
```
type `:PlugInstall`.
Plugin will be installed.

Neovim same.

done.
