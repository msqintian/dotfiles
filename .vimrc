" https://realpython.com/blog/python/vim-and-python-a-match-made-in-heaven/
" set the runtime path to include Vundle and initialize
" Vundle Setup
filetype off
"set runtimepath+=~/.vim/bundle/Vundle.vim
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')
"
" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
Plugin 'mileszs/ack.vim' " https://github.com/ggreer/the_silver_searcher
" Plugin 'Valloric/YouCompleteMe'
Plugin 'elmcast/elm-vim'
" Plugin to simplify the transition between multiline and single-line code
Plugin 'AndrewRadev/splitjoin.vim'
" Plugin to search files using ctrl + P
Plugin 'kien/ctrlp.vim'
" https://github.com/chase/vim-ansible-yaml
Plugin 'Chiel92/vim-autoformat'
Plugin 'Vimjas/vim-python-pep8-indent'
Plugin 'vim-scripts/indentpython.vim'
Plugin 'tmhedberg/SimpylFold'
Plugin 'jlanzarotta/bufexplorer'
Plugin 'scrooloose/nerdtree'
Plugin 'junegunn/fzf'
Plugin 'tomtom/tcomment_vim'
" work with git commands
Plugin 'tpope/vim-fugitive'
" surround quote and parantheses
Plugin 'tpope/vim-surround' " cs'<q> change surrounding ' to <q>
Plugin 'vim-scripts/taglist.vim' " :TlistToggle
" vim snippets
Plugin 'MarcWeber/vim-addon-mw-utils'
Plugin 'tomtom/tlib_vim'
Plugin 'garbas/vim-snipmate'
" Optional:
Plugin 'honza/vim-snippets'
Plugin 'scrooloose/snipmate-snippets' " snippets for snipmate
Plugin 'ervandew/supertab' " Supertab is a vim plugin which allows you to use <Tab> for all your insert completion needs (:help ins-completion).

Plugin 'pangloss/vim-javascript' " JavaScript bundle for vim, this bundle provides syntax highlighting and improved indentation.

Plugin 'scrooloose/nerdcommenter'

Plugin 'junegunn/vim-easy-align' " A simple, easy-to-use Vim alignment plugin.

Plugin 'godlygeek/tabular'
Plugin 'plasticboy/vim-markdown' " Syntax highlighting, matching rules and mappings for the original Markdown and extensions.


Plugin 'vim-syntastic/syntastic' " a syntax checking plugin for Vim created by Martin Grenfell. It runs files through external syntax checkers and displays any resulting errors to the user

" Plugin 'tpope/vim-ragtag' " https://github.com/tpope/vim-ragtag
Plugin 'tpope/vim-endwise' " wisely add end in ruby
" Plugin 'bronson/vim-jquery' "https://github.com/bronson/vim-jquery.git
" Plugin 'Shutnik/jsh/Users/tqin5/projects/docker_examples/wget-example int2' " https://github.com/Shutnik/jshint2.vim

" require ctags from http://ctags.sourceforge.net/ for taglist
let Tlist_Ctags_Cmd='$HOME/projects/source/ctags-5.8/'


call vundle#end()

" Remap Leader to ','
let mapleader=','

let g:ycm_python_binary_path = '/usr/bin/python2.7'

let g:SuperTabDefaultCompletionType = "<c-n>"

autocmd FileType python nnoremap <leader>p :0,$!yapf<CR>

" require sudo pip install yapf
" pep8 is the default value, or you can choose: google, facebook, chromium.
let g:formatter_yapf_style = 'pep8'

" set vim-autoformat in verbose-mode for debugging purpose
let g:autoformat_verbosemode=1

" allow user to format only selected range of code when run command
" :Autoformat
let g:formatdef_autopep8 = "'autopep8 - --range '.a:firstline.' '.a:lastline"
let g:formatters_python = ['autopep8']

" map pep8 check to F2, using  http://github.com/cburroughs/pep8.py
" require pip install pep8
let g:pep8_map='<F2>'

" Pro Tip: Want to see the docstrings for folded code?
let g:SimpylFold_docstring_preview=1

" https://github.com/ggreer/the_silver_searcher configuration
let g:ackprg = 'ag --nogroup --nocolor --column'

""""""""""""""""""""""""""
" NerdCommenter Settings "
""""""""""""""""""""""""""

" Add spaces after comment delimiters by default
let g:NERDSpaceDelims = 1

" Use compact syntax for prettified multi-line comments
let g:NERDCompactSexyComs = 1

" Align line-wise comment delimiters flush left instead of following code indentation
let g:NERDDefaultAlign = 'left'

" Set a language to use its alternate delimiters by default
let g:NERDAltDelims_java = 1

" Add your own custom formats or override the defaults
let g:NERDCustomDelimiters = { 'c': { 'left': '/**','right': '*/' } }

" Allow commenting and inverting empty lines (useful when commenting a region)
let g:NERDCommentEmptyLines = 1

" Enable trimming of trailing whitespace when uncommenting
let g:NERDTrimTrailingWhitespace = 1

""""""""""""""""""""""""
" Syntastic Settings   "
""""""""""""""""""""""""

set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

" requires installing lint in the $PATH
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
let python_highlight_all=1

set number
" Enable folding
set foldenable
set foldmethod=syntax
" Fold nested blocks by default
set foldlevelstart=10
set foldlevel=99

" Set colorscheme
syntax enable

set encoding=utf-8
" Show status line always
set laststatus=2
" Useful status information at bottom of screen
set statusline=[%n]\ %<%.99f\ %h%w%m%r%y\ %{fugitive#statusline()}%{exists('*CapsLockStatusline')?CapsLockStatusline():''}%=%-16(\ %l,%c-%v\ %)%P

" colorscheme rdark


set hlsearch      " highlight search terms
set incsearch     " show search matches as you type
"    Ignore case sensitive
set ignorecase
" Case-sensitive if capital letters are included in search pattern
set smartcase

set wildmode=longest,list,full    " Complete files like a shell.
set wildmenu                      " Enhanced command line completion.

" No swap files
set noswapfile
" No trying to delete old backups
set nobackup
" No backups before overwriting file
set nowritebackup

set wrap                          " Turn on line wrapping.
set scrolloff=3                   " Show 3 lines of context around the cursor.

set title                         " Set the terminal's title


" Set to auto read when a file is changed from the outside
set autoread

" Custom indentation based on type of file
filetype plugin indent on

" Configure backspace behavior
"    indent: backspace through automatic indent
"    eol: backspace through line break
"    start: backspace through start of 'insert'
set backspace=indent,eol,start

" Set whitespace character representation
set listchars=tab:>~,nbsp:_,trail:.
set nolist
set showcmd                       " Display incomplete commands.
set cmdheight=2
set showmode                      " Display the mode you're in.

set showmatch                     "Show matching bracets when
                                  "text indicator is over them


" Vim usually has its own clipboard and ignores the system keyboards, but sometimes you might want to cut, copy, and/or paste to/from other applications outside of VIM. On OSX, you can access your system clipboard with this line:
set clipboard=unnamed

" To add the proper PEP8 indentation, add the following to your .vimrc:
autocmd FileType * set tabstop=2|set shiftwidth=2|set noexpandtab
autocmd FileType ruby set foldmethod=syntax
autocmd FileType css  setlocal foldmethod=indent shiftwidth=2 tabstop=2
autocmd FileType python set tabstop=4|set shiftwidth=4|set expandtab
" automatically convert tab to 2 spaces in yaml file
autocmd FileType yaml setlocal ts=2 sts=2 sw=2 expandtab
au BufEnter *.py set ai sw=4 ts=4 sta et fo=croql tw=100

" Strip trailing whitespace
function! <SID>StripTrailingWhitespaces()
    " Preparation: save last search, and cursor position.
    let _s=@/
    let l = line(".")
    let c = col(".")
    " Do the business:
    %s/\s\+$//e
    " Clean up: restore previous search history, and cursor position
    let @/=_s
    call cursor(l, c)
endfunction
autocmd BufWritePre * :call <SID>StripTrailingWhitespaces()

let python_highlight_all=1
syntax on

" javascript specific
" add jshint path
" https://github.com/Shutnik/jshint2.vim
set runtimepath+=~/.vim/bundle/jshint2.vim/


" ruby specific
" https://github.com/vim-ruby/vim-ruby.git
" https://github.com/tpope/vim-rails.git
" https://github.com/airblade/vim-rooter.git
" https://github.com/taq/vim-rspec.git
" https://github.com/tpope/vim-rake.git
" https://github.com/tpope/vim-cucumber.git
" https://github.com/tpope/vim-haml.git
" https://github.com/janx/vim-rubytest.git
" let g:rubytest_cmd_spec="rspec -c -f d %p"
" let g:rubytest_cmd_example="rspec -c -f d %p -l '%c'"
" Thorfile, Rakefile and Gemfile are Ruby
au BufRead,BufNewFile {Gemfile,Rakefile,Thorfile,config.ru}    set ft=ruby
" ruby includes ! and ? in method names (array.empty?)
autocmd FileType ruby setlocal iskeyword+=!,?
nmap <leader>r :w<cr>:rubyf %:p<cr>

" HAML settings
autocmd FileType haml set foldmethod=indent
autocmd FileType haml set foldlevel=5

" open buffer
noremap <F5> :BufExplorer<CR>
" remove from buffer
noremap <F6> :bd!<CR>
" close nerdtree
map <leader>bd :NERDTreeClose<CR>:bd<CR>
" open nerdtree
map <leader>bn :bn<CR>
map <leader>n :NERDTreeToggle<CR>
map <leader>nf :NERDTreeFind<CR>

" open taglist
map <leader>tog :TlistToggle

" Tab mappings.
map <leader>tt :tabnew<cr>
map <leader>te :tabedit
map <leader>tc :tabclose<cr>
map <leader>to :tabonly<cr>
map <leader>tn :tabnext<cr>
map <leader>tp :tabprevious<cr>
map <leader>tf :tabfirst<cr>
map <leader>tl :tablast<cr>
map <leader>tm :tabmove

" Fast saving
nmap <leader>w :w!<cr>
nmap <leader>q :q<cr>
nmap <leader>Q :qa<cr>
nmap <leader>x :x<cr>

" EasyAlgin mapping
nmap ga <Plugin>(EasyAlign)
xmap ga <Plugin>(EasyAlign)

"""""""""""""""""""""""""""
"project specific mapping "
"""""""""""""""""""""""""""
map <leader>f :FufFile **/<CR>
map <leader>fm :FufFile models/dao/**/<CR>
map <leader>fr :FufFile models/resources/**/<CR>
map <leader>ft :FufFile test/tests/integration/**/<CR>
map <leader>fu :FufFile utils/**/<CR>

"python with virtualenv support
py << EOF
import os
import sys
if 'VIRTUAL_ENV' in os.environ:
  project_base_dir = os.environ['VIRTUAL_ENV']
  activate_this = os.path.join(project_base_dir, 'bin/activate_this.py')
  execfile(activate_this, dict(__file__=activate_this))
EOF
