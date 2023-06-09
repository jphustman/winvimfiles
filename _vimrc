" vim: set sw=4 ts=4 sts=4 et tw=78 foldmarker={,} foldlevel=0 foldmethod=marker spell:

if &compatible
 set nocompatible
endif

" Add the dein installation directory into runtimepath
set runtimepath+=~/.cache/dein/repos/github.com/Shougo/dein.vim

call dein#begin('~/.cache/dein/repos')

call dein#add('Shougo/dein.vim')

if !has('nvim')
    call dein#add('roxma/nvim-yarp')
    call dein#add('roxma/vim-hug-neovim-rpc')
endif

call dein#add('Shougo/deoplete.nvim')

" Add or remove your plugins here:
call dein#add('Shougo/neosnippet')
call dein#add('Shougo/neosnippet-snippets')
call dein#add('Shougo/neocomplete.vim')
call dein#add('honza/vim-snippets')
call dein#add('vim-scripts/matchit.zip')

call dein#add('scrooloose/syntastic')
call dein#add('git@github.com:jphustman/cf-utils.vim')
call dein#add('cflint/cflint-syntastic')
call dein#add('altercation/vim-colors-solarized')
call dein#add('vim-scripts/apachelogs.vim')
call dein#add('terryma/vim-multiple-cursors')
call dein#add('scrooloose/nerdcommenter')
call dein#add('sukima/xmledit')
call dein#add('tpope/vim-fugitive')

"call dein#add('mv/Align')
call dein#add('git@github.com:jphustman/SQLUtilities.git')
call dein#add('git@github.com:jphustman/dbext.vim.git')

call dein#add('editorconfig/editorconfig-vim')
call dein#add('bling/vim-airline')
call dein#add('vim-airline/vim-airline-themes')

call dein#add('Shougo/neocomplcache')

" javascript
"call dein#add('elzr/vim-json')
"call dein#add('groenewege/vim-less')
"call dein#add('pangloss/vim-javascript')
"call dein#add('kchmck/vim-coffee-script')
"call dein#add('othree/javascript-libraries-syntax.vim')
"call dein#add('matthewsimo/angular-vim-snippets')
"call dein#add('claco/jasmine.vim')
"call dein#add('burnettk/vim-angular')
"call dein#add('ternjs/tern_for_vim')
" React
call dein#add('yuezk/vim-js')
call dein#add('maxmellon/vim-jsx-pretty')

" typescript
call dein#add('leafgarland/typescript-vim')
call dein#add('clausreinke/typescript-tools')
call dein#add('Quramy/tsuquyomi')

" HTML
call dein#add('vim-scripts/HTML-AutoCloseTag')
call dein#add('hail2u/vim-css3-syntax')
call dein#add('gorodinskiy/vim-coloresque')
call dein#add('tpope/vim-haml')
call dein#add('kaihendry/vim-html5')

" PHP
call dein#add('spf13/PIV') " PHP Integration for Vim
call dein#add('blueyed/smarty.vim') " Smarty plugin for Vim
call dein#add('beyondwords/vim-twig') " Twig plugin for Vim
call dein#add('arnaud-lb/vim-php-namespace')
call dein#add('2072/PHP-Indenting-for-VIm')
call dein#add('stefanich/php.vim-html-enhanced')

call dein#end()
call dein#save_state()

filetype plugin indent on
syntax enable

if dein#check_install()
    call dein#install()
endif





"let g:javascript_enable_domhtmlcss = 1

" Settings {
let g:mapleader=','

set shiftwidth=2
set autoindent
set tabstop=2
set softtabstop=2

set laststatus=2
set encoding=utf-8
set backspace=indent,eol,start
set history=1000
set number

set virtualedit=onemore

let g:solarized_termcolors=256
let g:solarized_termtrans=1
let g:solarized_contrast='normal'
let g:solarized_visibility='normal'
colorscheme solarized

highlight clear SignColumn
highlight clear LineNr

"set background=dark
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

set complete+=kspell

set ttyfast					" Smoother terminal connection
set hidden					" Change buffer without saving
set magic					" Better searching
set lazyredraw

set viewoptions=folds,options,cursor,unix,slash



set autoread				" Autoread a file when it's changed from outside

set showmatch
set matchtime=3

set incsearch
set hlsearch

set backspace=indent,eol,start
set linespace=0

set winminheight=0
set ignorecase
set smartcase
set whichwrap=b,s,h,l,<,>,[,]
set scrolljump=5
set scrolloff=3


set foldlevelstart=0
set foldenable
"set foldmethod=indent
"set foldclose=all

" List chars (from Janus)
" set list
" set listchars=""            " Reset listchars
" set listchars=nbsp:¬,eol:¶,tab:>-,extends:»,precedes:«,trail:.
exec "set listchars=tab:\uBB\uBB,trail:\uB7,nbsp:~"
set list


" stop autocommenting
autocmd FileType * setlocal formatoptions-=c formatoptions-=r formatoptions-=o

" json folding
autocmd FileType json setlocal foldmethod=syntax foldlevel=1

syntax enable
set nospell
set mouse=a
set mousehide

" set fileencoding=""
" set fileencodings=""

set columns=120
set lines=40
set modeline
set modelines=5

set showcmd
set cmdheight=2
set shortmess+=filmnrxoOtT              " Short messaging in commandline
set laststatus=2                        " Windows always will have a status line
set showtabline=2
set noshowmode


set ruler
set rulerformat=%30(%=\:b%n%y%m%r%w\ %l,%c%V\ %P%)
set comments=sl:/*,mb:*,elx:*/


highlight ColorColumn ctermbg=blue
call matchadd('ColorColumn', '\%81v', 100)

"set colorcolumn=80
"set textwidth=72
"set wrapmargin=80



set shiftround
set shiftwidth=2
set expandtab
set tabstop=2
set softtabstop=2
set smarttab


set tw=500
set formatoptions=qrn1

set noerrorbells
set visualbell
set t_vb=

set title


" set cindent
set wrap
set autoindent
set smartindent




set number
set sidescroll=5



set nojoinspaces
set splitright
set splitbelow

set virtualedit=onemore

set cursorline
set tabpagemax=15

" }

" autocommands {
"autocmd FileType javascript setlocal tabstop=2 shiftwidth=2 expandtab
"autocmd FileType typescript setlocal tabstop=2 shiftwidth=2 expandtab
autocmd FileType scss setlocal ts=2 sw=2 expandtab
autocmd FileType css setlocal ts=2 sw=2 expandtab
autocmd FileType html setlocal ts=2 sw=2 expandtab

au BufRead, BufNewFile *.ts setlocal filetype=typescript

" }

if has('persistent_undo')
    set undofile
    set undolevels=1000
    set undoreload=10000
endif

set history=1000

let g:mapleader=','
let g:maplocalleader=',,'

" Wild settings (from Pascal Precht)
set wildmenu                                      " Enable wild menu
set wildmode=list:longest,full
set wildignore+=.git,.svn                         " Version control
set wildignore+=*.jpg,*.bmp,*.gif,*.png,*.jpeg    " binary images
set wildignore+=*.o,*.obj,*.exe,*.dll,*.manifest  " compiled object files
set wildignore+=*.sw?                             " Vim swap files
set wildignore+=*.DS_Store                        " OSX bullshit
set wildignore+=*.zip

" Mappings {
noremap <leader>- ddp
noremap <leader>_ ddkP
inoremap <leader><c-u> <esc>bveU$a
nnoremap <leader><c-u> bveU

nnoremap <leader>ev :vsplit $MYVIMRC<cr>
nnoremap <leader>sv :source $MYVIMRC<cr>


nnoremap <leader><space> :Goyo<cr>


" Fast Saving
nnoremap <leader>w :w!<cr>
" e2e matching
nnoremap <tab> %
vnoremap <tab> %

" better and faster movement
nnoremap j gj
nnoremap k gk
nmap J 5j
nmap K 5k
xmap J 5j
xmap K 5k


" Keep search pattern at the center of the screen
nnoremap <silent> n nzz
nnoremap <silent> N Nzz
nnoremap <silent> * *zz
nnoremap <silent> # #zz
nnoremap <silent> g* g*zz
nnoremap <silent> g# g#zz


" Folding
nnoremap <Space> za
vnoremap <Space> za

" Easy expansion
cnoremap <expr> %% getcmdtype() == ':' ? expand('%:h') . '/' : '%%'

nmap <leader>/ :nohlsearch<CR>

"map <c-J> <c-W>j<c-w>_
"map <c-K> <c-W>k<c-w>_
"map <c-L> <c-W>l<c-w>_
"map <c-H> <c-W>h<c-w>_
map <c-J> <c-W>j
map <c-K> <c-W>k
map <c-L> <c-W>l
map <c-H> <c-W>h



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
nmap <leader>fman :set foldmethod=manual<CR>
nmap <leader>fsyn :set foldmethod=syntax<CR>
nmap <leader>find :set foldmethod=indent<CR>
nmap <leader>fmark :set foldmethod=marker<CR>

nnoremap H O
nnoremap L $

" highlight line so you can find it quickly after scrolling away
nnoremap <silent> <Leader>l ml:execute 'match Search /\%'.line('.').'l/'<CR>

nmap <F2> :SyntasticCheck<CR>
nmap <S-F2> :SyntasticToggleMode<CR>

nmap <F3> :set list!<CR>

nmap <F4> vii:sort i<cr>
vnoremap <F4> :sort i<cr>

nmap <F6> :lprev<cr>
nmap <F7> :lnext<cr>

nmap <F8> :TagbarToggle<CR>

map <F9> :call ToggleBG()<CR>

nnoremap <leader>8 :lprev<CR>
nnoremap <leader>9 :<CR>



" insert equals sign for faster assignments
inoremap <c-l> <space>=<space>


" }

" function
inoremap <c-f> function () {<cr>});<esc>O

" Automatically place cursor after open bracket
inoremap {<CR> {<CR>}<C-o>==<C-o>O
inoremap [<CR> [<CR>]<C-o>==<C-o>O
" This is here just to fix the folding issue of having open brackets in the above mapping }

" Find merge conflict markers
map <leader>fc /\v^[<\|=>]{7}( .*\|$)<CR> " }}}}}}

" NeoComplCache {
        let g:acp_enableAtStartup = 0
        let g:neocomplcache_enable_at_startup = 1
        let g:neocomplcache_enable_camel_case_completion = 1
        let g:neocomplcache_enable_smart_case = 1
        let g:neocomplcache_enable_underbar_completion = 1
        let g:neocomplcache_enable_auto_delimiter = 1
        let g:neocomplcache_max_list = 15
        let g:neocomplcache_force_overwrite_completefunc = 1

        " Define dictionary.
        let g:neocomplcache_dictionary_filetype_lists = {
                    \ 'default' : '',
                    \ 'vimshell' : $HOME.'/.vimshell_hist',
                    \ 'scheme' : $HOME.'/.gosh_completions'
                    \ }

        " Define keyword.
        let g:neocomplcache_keyword_patterns = {}
        let g:neocomplcache_keyword_patterns._ = '\h\w*'

        " Plugin key-mappings {
        " These two lines conflict with the default digraph mapping of <C-K>
        imap <C-k> <Plug>(neosnippet_expand_or_jump)
        smap <C-k> <Plug>(neosnippet_expand_or_jump)
        imap <silent><expr><C-k> neosnippet#expandable() ?
                    \ "\<Plug>(neosnippet_expand_or_jump)" : (pumvisible() ?
                    \ "\<C-e>" : "\<Plug>(neosnippet_expand_or_jump)")
        smap <TAB> <Right><Plug>(neosnippet_jump_or_expand)

        inoremap <expr><C-g> neocomplcache#undo_completion()
        inoremap <expr><C-l> neocomplcache#complete_common_string()
        "inoremap <expr><CR> neocomplcache#complete_common_string()

        function! CleverCr()
            if pumvisible()
                if neosnippet#expandable()
                    let exp = "\<Plug>(neosnippet_expand)"
                    return exp . neocomplcache#close_popup()
                else
                    return neocomplcache#close_popup()
                endif
            else
                return "\<CR>"
            endif
        endfunction

        " <CR> close popup and save indent or expand snippet
        imap <expr> <CR> CleverCr()

        " <CR>: close popup
        " <s-CR>: close popup and save indent.
        inoremap <expr><s-CR> pumvisible() ? neocomplcache#close_popup()"\<CR>" : "\<CR>"
        "inoremap <expr><CR> pumvisible() ? neocomplcache#close_popup() : "\<CR>"

        " <C-h>, <BS>: close popup and delete backword char.
        inoremap <expr><BS> neocomplcache#smart_close_popup()."\<C-h>"
        inoremap <expr><C-y> neocomplcache#close_popup()
        " <TAB>: completion.
        inoremap <expr><TAB> pumvisible() ? "\<C-n>" : "\<TAB>"
        inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<TAB>"
        " }

        " Enable omni completion.
        autocmd FileType css setlocal omnifunc=csscomplete#CompleteCSS
        autocmd FileType html,markdown setlocal omnifunc=htmlcomplete#CompleteTags
"        autocmd FileType javascript setlocal omnifunc=javascriptcomplete#CompleteJS
        autocmd FileType python setlocal omnifunc=pythoncomplete#Complete
        autocmd FileType xml setlocal omnifunc=xmlcomplete#CompleteTags
        autocmd FileType ruby setlocal omnifunc=rubycomplete#Complete
        autocmd FileType haskell setlocal omnifunc=necoghc#omnifunc

        " Enable heavy omni completion.
        let g:neocomplcache_omni_patterns = {}
        let g:neocomplcache_omni_patterns.php = '[^. \t]->\h\w*\|\h\w*::'
        let g:neocomplcache_omni_patterns.perl = '\h\w*->\h\w*\|\h\w*::'
        let g:neocomplcache_omni_patterns.c = '[^.[:digit:] *\t]\%(\.\|->\)'
        let g:neocomplcache_omni_patterns.cpp = '[^.[:digit:] *\t]\%(\.\|->\)\|\h\w*::'
        let g:neocomplcache_omni_patterns.ruby = '[^. *\t]\.\h\w*\|\h\w*::'
        let g:neocomplcache_omni_patterns.go = '\h\w*\.\?'

" }

" vim-airline {

    if isdirectory(expand('~/.cache/dein/repos/github.com/vim-airline/'))
        if !exists('g:airline_theme')
            let g:airline_theme = 'solarized'
        endif
        if !exists('g:airline_powerline_fonts')
            " Use the default set of separators with a few customizations
            let g:airline_left_sep='?'  " Slightly fancier than '>'
            let g:airline_right_sep='?' " Slightly fancier than '<'
        endif
    endif

" }

autocmd FileType * autocmd BufWritePre <buffer> call StripTrailingWhitespace()

" Auto untar gz file {
augroup gzip
    autocmd!
    autocmd BufReadPre,FileReadPre     *.gz set bin
    autocmd BufReadPost,FileReadPost   *.gz '[,']!gzip
    autocmd BufReadPost,FileReadPost   *.gz set nobin
    autocmd BufReadPost,FileReadPost   *.gz execute ":doautocmd BufReadPost " . expand("%:r")
    autocmd BufWritePost,FileWritePost *.gz !mv <afile> <afile>:r
    autocmd BufWritePost,FileWritePost *.gz !gzip <afile>:r

    autocmd FileAppendPre               *.gz !gzip <afile>
    autocmd FileAppendPre               *.gz !mv <afile>:r <afile>
    autocmd FileAppendPost              *.gz !mv <afile> <afile>:r
    autocmd FileAppendPost              *.gz !gzip <afile>:r
augroup END
" }

" Typescript-Tools
"au BufRead,BufNewFile *.ts  setlocal filetype=typescript
"set rtp+=~/.cache/dein/repos/github.com/clausereinke/typescript-tools.vim/

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
let g:syntastic_scss_checkers = ['scss_lint']
let g:syntastic_css_checkers = ['csslint']
let g:syntastic_vim_checkers = ['vimlint']
" }

" GUI Settings {
if has('gui-running')
    set lines=40
    set guifont=Consolas:h10:cANSI
else
    set guifont=Consolas:h10:cANSI
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
    "   eg: let g:spf13_consolidated_directory = ~ . '/.vim/'
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


