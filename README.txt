In home directory

git clone git@github.com:Shougo/dein.vim.git ~/.cache/dein/repos/github.com/Shougo/dein.vim

mklink "_vimrc" "winvimfiles\_vimrc"

vim

:call dein#install()
