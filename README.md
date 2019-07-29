# vim-conf
`.vim/` and `.vimrc` in this repository

## contents
### colorscheme
[onedark](https://github.com/joshdick/onedark.vim) by joshdick.

### Plugins
[lightline.vim](https://github.com/itchyny/lightline.vim) by itchyny.  
[emmet-vim](https://github.com/mattn/emmet-vim) by mattn.  
[vim-javascript](https://github.com/pangloss/vim-javascript) by pangloss.  
[gabrielelana/vim-markdown](https://github.com/gabrielelana/vim-markdown) by gabrielelana.  
[previm/previm](https://github.com/previm/previm) by Previm Developers.  

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
$ ln -s vim-conf/.vimrc .vimrc
$ ln -s vim-conf/.vim .vim
```

next, open vim
```bash
$ vim
```
type `:PlugInstall`.
Plugin will be installed.

done.
