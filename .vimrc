let $PYTHONPATH='/usr/lib/python3.4/site-packages'
"set laststatus=2

set nocompatible           
filetype off              

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'

" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.
" plugin on GitHub repo
"
Plugin 'tpope/vim-fugitive'
Plugin 'SirVer/ultisnips'
Plugin 'honza/vim-snippets'
Plugin 'easymotion/vim-easymotion'
Plugin 'heavenshell/vim-jsdoc'
Plugin 'pangloss/vim-javascript'
Plugin 'aklt/vim-substitute'
Plugin 'scrooloose/syntastic'
Plugin 'scrooloose/nerdtree'
Plugin 'bling/vim-airline'
Plugin 'scrooloose/nerdcommenter'
Plugin 'mustache/vim-mustache-handlebars'

" Trigger configuration. Do not use <tab> if you use https://github.com/Valloric/YouCompleteMe.
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<c-b>"
let g:UltiSnipsJumpBackwardTrigger="<c-z>"

" If you want :UltiSnipsEdit to split your window.
let g:UltiSnipsEditSplit="vertical"


" All of your Plugins must be added before the following line
call vundle#end()            
filetype plugin indent on   
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line


syntax on
set showmatch " Shows matching brackets
set ruler " Always shows location in file (line#)
set smarttab " Autotabs for certain code
set shiftwidth=2
set tabstop=2
set number
colorscheme slate
set colorcolumn=80
highlight ColorColumn ctermbg=8

" You want to be part of the gurus? Time to get in serious stuff and stop using
" arrow keys.
noremap <left> <nop>
noremap <up> <nop>
noremap <down> <nop>
noremap <right> <nop>

" Fast saving and closing current buffer without closing windows displaying the
" buffer
nmap <leader>wq :w!<cr>:q<cr>

" Splits ,v and ,h to open new splits (vertical and horizontal)
nnoremap <leader>v <C-w>v<C-w>l
nnoremap <leader>h <C-w>s<C-w>j

" Easy splitted window navigation
noremap <C-h>  <C-w>h
noremap <C-j>  <C-w>j
noremap <C-k>  <C-w>k
noremap <C-l>  <C-w>l

" tab navigation like firefox
nnoremap tgg  :tabfirst<CR>
nnoremap tl  :tabnext<CR>
nnoremap th  :tabprev<CR>
nnoremap tG  :tablast<CR>
nnoremap tt  :tabedit<Space>
nnoremap tm  :tabm<Space>
nnoremap tq  :tabclose<CR>
" Alternatively use
nnoremap tn :tabnew<CR>


" Easy motion
let g:EasyMotion_do_mapping = 0 " Disable default mappings

" Bi-directional find motion
" Jump to anywhere you want with minimal keystrokes, with just one key binding.
" `s{char}{label}`
nmap s <Plug>(easymotion-s)

" Need one more keystroke, but on average, it may be more comfortable.
"nmap s <Plug>(easymotion-s2)

" Turn on case insensitive feature
let g:EasyMotion_smartcase = 1

" JK motions: Line motions
map <Leader>j <Plug>(easymotion-j)
map <Leader>k <Plug>(easymotion-k)


" better key bindings for UltiSnipsExpandTrigger
let g:UltiSnipsSnippetsDir="~/.vim/bundle/vim-snippets/snippets/"
let g:UltiSnipsExpandTrigger = "<tab>"
let g:UltiSnipsJumpForwardTrigger = "<tab>"
let g:UltiSnipsJumpBackwardTrigger = "<s-tab>"

" vim-jsdoc
let g:jsdoc_allow_input_prompt = 1
let g:jsdoc_additional_descriptions =1
let g:jsdoc_underscore_private = 1

" vim-javascript
let g:javascript_enable_domhtmlcss=1

" MISC
" автоматическое set paste при вставке
let &t_SI .= "\<Esc>[?2004h"
let &t_EI .= "\<Esc>[?2004l"

" Syntastic
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

" NerdTree
" autocmd vimenter * NERDTree
" autocmd BufNew * wincmd l
map <F9> :NERDTreeToggle<CR>

inoremap <special> <expr> <Esc>[200~ XTermPasteBegin()

function! XTermPasteBegin()
	set pastetoggle=<Esc>[201~
	set paste
	return ""
endfunction
			
" Airline
let g:airline#extensions#tabline#enabled = 1
set laststatus=2

