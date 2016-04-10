set nocompatible              " be iMproved, required
filetype off                  " required
"+++++++++++++++++++++Plugins++++++++++++++++++++++++++
" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'
Plugin 'scrooloose/nerdtree'
Plugin 'scrooloose/nerdcommenter'
Plugin 'altercation/vim-colors-solarized'
Plugin 'Sclarki/neonwave.vim'
Plugin 'vim-scripts/abbott.vim'
Plugin 'notpratheek/vim-luna'
Plugin 'NLKNguyen/papercolor-theme'
Plugin 'bling/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'Valloric/YouCompleteMe'
Plugin 'closetag.vim'
Plugin 'scrooloose/syntastic'
Plugin 'WolfgangMehner/vim-plugins'
Plugin 'vim-scripts/taglist.vim'
Plugin 'kien/ctrlp.vim'
Plugin 'airblade/vim-gitgutter'
Plugin 'ervandew/supertab'
Plugin 'mattn/emmet-vim'
Plugin 'vim-ruby/vim-ruby'
Plugin 'kchmck/vim-coffee-script'
Plugin 'groenewege/vim-less'
Plugin 'L9'
Plugin 'derekwyatt/vim-scala'
Plugin 'FuzzyFinder'
Plugin 'rust-lang/rust.vim'
Plugin 'VimClojure'
Plugin 'chrisbra/csv.vim'
Plugin 'kevinw/pyflakes-vim'
Plugin 'skammer/vim-css-color'
Plugin 'szw/vim-tags'
Plugin 'blackrush/vim-gocode'
Plugin 'DoxygenToolkit.vim'
Plugin 'OmniCppComplete'
Plugin 'vim-latex/vim-latex'
Plugin 'tpope/vim-markdown'
Plugin 'tpope/vim-rails'
Plugin 'elzr/vim-json'
Plugin 'pangloss/vim-javascript'
Plugin 'tpope/vim-haml'
Plugin 'eagletmt/ghcmod-vim'
Plugin 'jnwhiteh/vim-golang'
Plugin 'davidhalter/jedi-vim'
Plugin 'vim-perl/vim-perl'
Plugin 'honza/vim-snippets'
Plugin 'xolox/vim-misc'
Plugin 'xolox/vim-lua-ftplugin'
Plugin 'othree/html5.vim'
Plugin 'tpope/vim-endwise'
Plugin 'LargeFile'
call vundle#end()            " required
filetype plugin indent on    " required
"+++++++++++++++++++++++++MOUSE+++++++++++++++++++++++++
set mouse=a
set mousehide
set scrolloff=5
set ttymouse=xterm2
"++++++++++++++++++++++++AIRLINE+++++++++++++++++++++++
set laststatus=2
" airline UI
let g:airline#extensions#tabline#enabled = 1
let g:airline_powerline_fonts = 1
let g:airline_theme='tomorrow'
" separators
let g:airline#extensions#tabline#left_sep = '▶'
let g:airline#extensions#tabline#left_alt_sep = '▶'
let g:airline#extensions#tabline#right_sep = '◀'
let g:airline#extensions#tabline#right_alt_sep = '◀'
let g:airline_left_sep = '▶'
let g:airline_left_alt_sep = '▶'
let g:airline_right_sep = '◀'
let g:airline_right_alt_sep = '◀'
"let g:airline_symbols.branch = '▶'
"let g:airline_symbols.readonly = '▶'
"let g:airline_symbols.linenr = '▶'

function! AirlineInit()
	let g:airline_section_a = airline#section#create(['mode',' ','branch'])
	let g:airline_section_b = airline#section#create_left(['%F'])
	let g:airline_section_c = airline#section#create(['ffenc',' ','[%Y]'])
	let g:airline_section_x = airline#section#create(['%P'])
	let g:airline_section_y = airline#section#create(['row:%l/%L','(%03p%%)'])
	let g:airline_section_z = airline#section#create_right(['col:%03c'])
endfunction
autocmd VimEnter * call AirlineInit()
"++++++++++++++++++++++++Some variables+++++++++++++++++++++++++++
highlight YcmErrorLine guibg=#3f0000
let g:ycm_min_num_of_chars_for_completion = 1
let g:ycm_error_symbol = 'E>'
let g:ycm_warning_symbol = 'W>'
let g:ycm_server_python_interpreter = 'python'
let g:ycm_python_binary_path = '/usr/bin/python'
let g:ycm_autoclose_preview_window_after_completion = 1
let g:EclimCompletionMethod = 'omnifunc'
let g:ycm_global_ycm_extra_conf = "~/.vim/.ycm_extra_conf.py"
let g:c_gnu=1
let g:c_space_errors=1
let g:c_syntax_for_h=1
let g:clang_omnicppcomplete_compliance=1
let g:user_emmet_leader_key='<C-o>'
"+++++++++++++++++++++++NERDTREE+++++++++++++++++++++++
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary")
"++++++++++++++++++++++++HOTKEYS+++++++++++++++++++++++
map <C-n> :NERDTreeToggle<CR>
map <C-t> :TlistToggle<CR>
"++++++++++++++++theme and UI++++++++++++++++++++++++++
set listchars=tab:▷⋅,trail:⋅,nbsp:⋅
set list
set showmatch
set mat=2
set ruler
set magic
set confirm
set showcmd
set undolevels=1000
set textwidth=80
set colorcolumn=80
highlight ColorColumn ctermbg=236
syntax on
set number
if !has("gui_running")
	colorscheme luna-term
else 
	colorscheme luna
endif

