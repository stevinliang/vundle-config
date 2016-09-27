set nocompatible              " be iMproved, required
filetype off                  " required

 " set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.
" plugin on GitHub repo
" --Plugin 'tpope/vim-fugitive'
" plugin from http://vim-scripts.org/vim/scripts.html
Plugin 'L9'
Plugin 'taglist.vim'
Plugin 'cscope.vim'
Plugin 'The-NERD-tree'
Plugin 'AutoComplPop'
Plugin 'OmniCppComplete'
Plugin 'Lokaltog/vim-powerline'
Plugin 'mru.vim'
" Git plugin not hosted on GitHub
" --Plugin 'git://git.wincent.com/command-t.git'
" git repos on your local machine (i.e. when working on your own plugin)
" --Plugin 'file:///home/gmarik/path/to/plugin'
" The sparkup vim script is in a subdirectory of this repo called vim.
" Pass the path to set the runtimepath properly.
" --Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
" Avoid a name conflict with L9
" --Plugin 'user/L9', {'name': 'newL9'}

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList          - list configured plugins
" :PluginInstall(!)    - install (update) plugins
" :PluginSearch(!) foo - search (or refresh cache first) for foo
" :PluginClean(!)      - confirm (or auto-approve) removal of unused plugins
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line
filetype on
"colorscheme evening
syntax on
if v:version >= 702
set autoindent
set autoread
set autowrite
set autochdir
set background=dark
set backspace=indent,eol,start
set nobackup
set cindent
set cinoptions=:0
set completeopt=longest,menuone
set cursorline
set encoding=utf-8
set noexpandtab
set fileencodings=utf-8,gb2312,gbk,chinese
set fileformat=unix
set foldenable
set foldmethod=marker
set helpheight=10
set helplang=en
set hidden
set history=100
set hlsearch
set ignorecase
set laststatus=2
set mouse=a
set number
set pumheight=10
set ruler
set scrolloff=5
set shiftwidth=8
set showcmd
set smartindent
set smartcase
set tabstop=8
set termencoding=utf-8
set textwidth=80
set whichwrap=h,l
set wildignore=*.bak,*.o,*.e,*~
set wildmenu
set wildmode=list:longest,full
set nowrap
set tags=tags;
set tags+=./tags
endif
" Configure taglist.vim
let g:Tlist_Ctags_Cmd='ctags'
let g:Tlist_Show_One_File=1               "不同时显示多个文件的tag，只显示当前文件的
let g:Tlist_Auto_Update=1
let g:Tlist_Process_File_Always=1
let g:Tlist_WinWidt =28                    "设置taglist的宽度
let g:Tlist_Enable_Fold_Colum=0
let g:Tlist_Exit_OnlyWindow=1             "如果taglist窗口是最后一个窗口，则退出vim
"let g:Tlist_Use_Right_Window=1            "在右侧窗口中显示taglist窗口
let g:Tlist_Use_Left_Windo =1                "在左侧窗口中显示taglist窗口
let g:Tlist_Auto_Highlight_Tag=1
let g:Tlist_Auto_Open=1

" The-NERD-tree
let g:NERDTreeWinPos="right"
let g:NERDTreeWinSize=25
let g:NERDTreeShowLineNumbers=1
let g:NERDTreeQuitOnOpen=1
" cscope.vim
if has("cscope")
	set csto=1
	set cst
	set nocsverb
	if filereadable("cscope.out")
		cs add cscope.out
	endif
	set csverb
endif

function! RunShell(Msg, Shell)
	echo a:Msg . '...'
	call system(a:Shell)
	echon 'done'
endfunction

" OmniCppComplete
set nocp
let g:OmniCpp_GlobalScopeSearch=1
let g:OmniCpp_DefaultNamespaces=["std"]
let g:OmniCpp_MayCompleteScope=1
let g:OmniCpp_SelectFirstItem=2

" vim-powerline
set nocompatible   " Disable vi-compatibility
set laststatus=2   " Always show the statusline
set encoding=utf-8 " Necessary to show Unicode glyphs
set t_Co=256
let g:Powerline_colorscheme = 'solarized256'

" Keys map
nmap q    :xa!<cr>
nmap w    :wa!<cr>
nmap <F2> :TlistToggle<cr>
nmap <F3> :NERDTreeToggle<cr>
nmap <F4> :MRU<cr>
nmap <F5> <Plug>LoopupFile<cr>
nmap <F6> <C-]>
nmap <F7> <C-t>
nmap <F9> :call RunShell("Generate tags", "ctags -R --c++-kinds=+p --fields=+iaS --extra=+q .")<cr>
let c_space_errors=1
