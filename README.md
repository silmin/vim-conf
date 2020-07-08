# vim-conf
`.vim/` and `.vimrc` in this repository

## contents
### colorscheme
[onedark](https://github.com/joshdick/onedark.vim) by joshdick.

### Plugins

Plugins managed by [vim-plug](https://github.com/junegunn/vim-plug)

[lightline.vim](https://github.com/itchyny/lightline.vim) by itchyny.  
[vim-surround](https://github.com/tpope/vim-surround) by tpope.  
[vim-multiple-cursors](https://github.com/terryma/vim-multiple-cursors) by terryma.  
[emmet-vim](https://github.com/mattn/emmet-vim) by mattn.  
[vim-javascript](https://github.com/pangloss/vim-javascript) by pangloss.  
[vim-markdown](https://github.com/gabrielelana/vim-markdown) by gabrielelana.  
[previm](https://github.com/previm/previm) by Previm Developers.  
[vim-go](https://github.com/fatih/vim-go) by faith.

### .vimrc
please [read](.vimrc).

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
$ git clone https://github.com/silmin/vim-conf
$ mv vim-conf .vimconf
$ ln -s .vimconf/.vimrc .vimrc
$ ln -s .vimconf/.vim .vim
```

next, open vim
```bash
$ vim
```
type `:PlugInstall`.
Plugin will be installed.

done.
