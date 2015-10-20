" vim: set sw=4 ts=4 sts=4 et tw=78 foldmarker={,} foldlevel=0 foldmethod=marker spell:
if has('vim_starting')
    if &compatible
        set nocompatible
    endif

    set runtimepath+=~/.vim/bundle/neobundle.vim
endif

" NeoBundle {
    call neobundle#begin(expand('~/.vim/bundle'))
    NeoBundleFetch 'Shuogo/neobundle.vim'

    " Bundles {
    NeoBundle 'scrooloose/syntastic'
    NeoBundle 'kaihendry/vim-html5'
    NeoBundle 'jphustman/cf-utils.vim'
    NeoBundle 'cflint/cflint-syntastic'
    NeoBundle 'altercation/vim-colors-solarized'
    " }
    
    call neobundle#end()

    " Required
    filetype plugin indent on

    NeoBundleCheck
" }

" Settings {
set shiftwidth=4
set autoindent
set tabstop=4
set softtabstop=4

set laststatus=2
set encoding=utf-8
set backspace=indent,eol,start
set history=1000
set number

set virtualedit=onemore

syntax enable
colorscheme solarized
set background=dark
function! ToggleBG()
    let s:tbg = &background
    " Inversion
    if s:tbg == "dark"
        set background=light
    else
        set background=dark
    endif
endfunction
noremap <leader>bg :call ToggleBG()<CR>

" }

let g:mapleader=','
let g:maplocalleader=',,'

" Mappings {
nnoremap <leader>ev :vsplit $MYVIMRC<cr>
nnoremap <leader>sv :source $MYVIMRC<cr>

nmap <leader>f0 :set foldlevel=0<CR>
nmap <leader>f1 :set foldlevel=1<CR>
nmap <leader>f2 :set foldlevel=2<CR>
nmap <leader>f3 :set foldlevel=3<CR>
nmap <leader>f4 :set foldlevel=4<CR>
nmap <leader>f5 :set foldlevel=5<CR>
nmap <leader>f6 :set foldlevel=6<CR>
nmap <leader>f7 :set foldlevel=7<CR>
nmap <leader>f8 :set foldlevel=8<CR>
nmap <leader>f9 :set foldlevel=9<CR>
nmap <silent> <leader>/ :nohlsearch<CR>



" Easier horizontal scrolling
map zl zL
map zh zH



" adjust windows to same size
map <Leader>= <C-w>=

" Move between windows
map <C-J> <C-W>j<C-W>_
map <C-K> <C-W>k<C-W>_
map <C-L> <C-W>l<C-W>_
map <C-H> <C-W>h<C-W>_






" Ctrl-C and V for copypasta
set pastetoggle=<F10>
inoremap <C-v> <F10><C-r>+<F10>
vnoremap <C-c> "+y
" }

" statusline {

" }

" Syntastic {
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

let g:syntastic_javascript_checkers = ['eslint']
" }

" GUI Settings {
if has('gui-running')
    set lines=40
    set guifont=Consolas:h10:cANSI
else
    if &term == 'xterm' || &term == 'screen'
        set t_Co=256
    endif
endif
" }

" Initialize directories {
function! InitializeDirectories()
    let parent = $HOME
    let prefix = 'vim'
    let dir_list = {
                \ 'backup': 'backupdir',
                \ 'views': 'viewdir',
                \ 'swap': 'directory' }

    if has('persistent_undo')
        let dir_list['undo'] = 'undodir'
    endif

    " To specify a different directory in which to place the vimbackup,
    " vimviews, vimundo, and vimswap files/directories, add the following to
    " your .vimrc.before.local file:
    "   let g:spf13_consolidated_directory = <full path to desired directory>
    "   eg: let g:spf13_consolidated_directory = $HOME . '/.vim/'
    if exists('g:spf13_consolidated_directory')
        let common_dir = g:spf13_consolidated_directory . prefix
    else
        let common_dir = parent . '/.' . prefix
    endif

    for [dirname, settingname] in items(dir_list)
        let directory = common_dir . dirname . '/'
        if exists("*mkdir")
            if !isdirectory(directory)
                call mkdir(directory)
            endif
        endif
        if !isdirectory(directory)
            echo "Warning: Unable to create backup directory: " . directory
            echo "Try: mkdir -p " . directory
        else
            let directory = substitute(directory, " ", "\\\\ ", "g")
            exec "set " . settingname . "=" . directory
        endif
    endfor
endfunction
call InitializeDirectories()
" }

" Strip whitespace {
function! StripTrailingWhitespace()
    " Preparation: save last search, and cursor position.
    let _s=@/
    let l = line(".")
    let c = col(".")
    " do the business:
    %s/\s\+$//e
    " clean up: restore previous search history, and cursor position
    let @/=_s
    call cursor(l, c)
endfunction
" }
