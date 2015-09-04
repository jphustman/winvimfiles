if has('vim_starting')
	if &compatible
		set nocompatible
	endif

	set runtimepath+=~/.vim/bundle/neobundle.vim
endif

call neobundle#begin(expand('~/.vim/bundle'))

NeoBundleFetch 'Shuogo/neobundle.vim'

" Bundles {

" }

call neobundle#end()

" Required
filetype plugin indent on

NeoBundleCheck
