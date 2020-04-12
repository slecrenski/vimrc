"set termguicolors
let mapleader=","
noremap <leader>gl :YcmCompleter GoToDeclaration<CR>
noremap <leader>gd :YcmCompleter GoToDefinition<CR>
noremap <space>t :-1read $HOME/.vim/templates/journal/base.yml<CR>/date<CR>A<C-r>=strftime('%F')<CR><ESC>/time<CR>A<C-r>=strftime('%H:%M:%S')<CR><ESC>/text<CR>o

"The width of a hard tabstop measured in "spaces" -- effectively the (maximum)
"width of an actual tab character.
set tabstop=4

set shiftwidth=2


"noremap <space>n :tabr<cr>
"noremap <space>p :tabl<cr>	
"noremap <space>n :tabn<cr>
"noremap <space>p :tabp<cr>	

"noremap <C-t><left> :tabp<cr>
"noremap <C-t><right> :tabn<cr>

set shell=/bin/bash
set encoding=utf-8
set backspace=indent,eol,start
set splitbelow
set laststatus=2

filetype plugin indent on
set autoindent
set timeoutlen=300 " http://stackoverflow.com/questions/2158516/delay-before-o-opens-a-new-line
set encoding=utf-8
set scrolloff=2
set noshowmode
set hidden
set nowrap
set nojoinspaces
let g:sneak#s_next = 1
let g:vim_markdown_new_list_item_indent = 0
let g:vim_markdown_auto_insert_bullets = 0
let g:vim_markdown_frontmatter = 1
set printfont=:h10
set printencoding=utf-8
set printoptions=paper:letter
" Always draw sign column. Prevent buffer moving when adding/deleting sign.
set signcolumn=yes

" filetype plugin indent off
syntax on

set guioptions-=T " Remove toolbar
set vb t_vb= " No more beeps
set backspace=2 " Backspace over newlines
set nofoldenable
set ttyfast
" https://github.com/vim/vim/issues/1735#issuecomment-383353563
set lazyredraw
set synmaxcol=500
set laststatus=2
set relativenumber " Relative line numbers
set number " Also show current absolute line
set diffopt+=iwhite " No whitespace in vimdiff
" Make diffing better: https://vimways.org/2018/the-power-of-diff/
set diffopt+=algorithm:patience
set diffopt+=indent-heuristic
set colorcolumn=80 " and give me a colored column
set showcmd " Show (partial) command in status line.
set mouse=a " Enable mouse usage (all modes) in terminals
set shortmess+=c " don't give |ins-completion-menu| messages.

" Show those damn hidden characters
" Verbose: set listchars=nbsp:¬,eol:¶,extends:»,precedes:«,trail:•
set listchars=nbsp:¬,extends:»,precedes:«,trail:•

" call plug#begin('~/.vim/plugged')
call plug#begin('~/.local/share/nvim/plugged')

Plug 'rust-lang/rust.vim'

Plug 'vim-syntastic/syntastic'

Plug 'chriskempson/base16-vim'
"Plug 'dense-analysis/ale'

Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

Plug 'Yggdroot/indentLine'

Plug 'ycm-core/YouCompleteMe'
"Plug 'Valloric/YouCompleteMe'

Plug 'junegunn/vim-easy-align'
Plug 'severin-lemaignan/vim-minimap'

" Any valid git URL is allowed
Plug 'https://github.com/junegunn/vim-github-dashboard.git'

"Plug 'autozimu/LanguageClient-neovim', {
"    \ 'branch': 'next',
"    \ 'do': 'bash install.sh',
"    \ }

Plug 'preservim/nerdtree'

call plug#end()


" Colors --------------

"set background=dark
"colorscheme base16-gruvbox-dark-hard
let base16colorspace=256
"hi Normal ctermbg=NONE

 "colorscheme base16-atelier-dune
set t_Co=256

"highlight YcmErrorLine guibg=#140000
"highlight YcmWarningLine guibg=#140000
let g:ycm_enable_diagnostic_signs = 1
let g:ycm_enable_diagnostic_highlighting = 0
let g:ycm_max_num_candidates = 999
let g:ycm_min_num_of_chars_for_completion = 2


" Completion
" Better display for messages
set cmdheight=2
" You will have bad experience for diagnostic messages when it's default 4000.
set updatetime=300


map <C-n> :NERDTreeToggle<CR>
"map <C-n> :Explore<CR>

" Enable debugging
let g:ycm_keep_logfiles = 1
let g:ycm_log_level = 'debug'
"
" " If the base settings don't repro, paste your existing config for YCM only,
" " here:
" " let g:ycm_....
"
" " Load YCM (only)
"let &rtp .= ',' . expand( '<sfile>:p:h' )
"filetype plugin indent on

"highlight Pmenu ctermfg=15 ctermbg=0 guifg=#3a3a3a guibg=#3a3a3a

if filereadable(expand("~/.vimrc_background"))
  let base16colorspace=256
  source ~/.vimrc_background
endif

let g:indentLine_char_list = ['|', '¦', '┆', '┊']

" Vim
"let g:indentLine_color_term = 239

" GVim
"let g:indentLine_color_gui = '#A4E57E'

" none X terminal
"let g:indentLine_color_tty_light = 7 " (default: 4)
"let g:indentLine_color_dark = 1 " (default: 2)

" Background (Vim, GVim)
"let g:indentLine_bgcolor_term = 202
"let g:indentLine_bgcolor_gui = '#FF5F00'

"hl-Pmenu 
"highlight Normal guibg=Black guifg=White
"highlight Normal ctermbg=Yellow
"highlight Normal ctermbg=Black
"highlight Normal indentLine_bgcolor_term=Black

"highlight Comment ctermbg=DarkGray
"highlight Constant ctermbg=Yellow
"highlight Normal ctermbg=Black
"highlight NonText ctermbg=Black
"highlight Special ctermbg=DarkMagenta
"highlight Cursor ctermbg=Green
"highlight YCM ctermbg=Yellow

set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

let g:rustfmt_autosave = 1

syntax enable

let g:ycm_show_diagnostics_ui = 1
let g:ycm_enable_diagnostic_signs=1

hi YcmWarningLine guifg=NONE guibg=NONE gui=NONE guisp=NONE ctermfg=NONE ctermbg=NONE cterm=NONE
hi YcmWarningSection guifg=NONE guibg=NONE gui=NONE guisp=NONE ctermfg=NONE ctermbg=NONE cterm=NONE  
hi YcmErrorLine guifg=NONE guibg=NONE gui=NONE guisp=NONE ctermfg=NONE ctermbg=NONE cterm=NONE 
hi YcmErrorSection guifg=NONE guibg=NONE gui=NONE guisp=NONE ctermfg=NONE ctermbg=NONE cterm=NONE 

highlight YcmWarningLine guibg=#ffffcc
highlight YcmWarningSign guibg=#ffffcc
highlight YcmWarningSection guibg=#ffffcc

autocmd ColorScheme *

"let g:netrw_banner = 0
"let g:netrw_liststyle = 3
"let g:netrw_browse_split = 4
"let g:netrw_altv = 1
"let g:netrw_winsize = 25
"augroup ProjectDrawer
""  autocmd!
""  autocmd VimEnter * :Vexplore
"augroup END

" Transparency stuff used in Alacritty

hi! Normal ctermbg=NONE guibg=NONE
hi! NonText ctermbg=NONE guibg=NONE guifg=NONE ctermfg=NONE
hi! LineNr ctermbg=NONE guibg=NONE guifg=NONE ctermfg=NONE  

"hi! Special ctermbg=NONE guibg=NONE guifg=NONE ctermfg=NONE   
"hi! Cursor  ctermbg=NONE guibg=NONE guifg=NONE ctermfg=NONE  
"hi! Comment ctermbg=NONE guibg=NONE guifg=NONE ctermfg=NONE  
"hi! Pmenu ctermbg=NONE guibg=NONE guifg=NONE ctermfg=NONE  
"hi! Todo  ctermbg=NONE guibg=NONE guifg=NONE ctermfg=NONE  
"hi! Visual ctermbg=NONE guibg=NONE guifg=NONE ctermfg=NONE 
"hi! StatusLine ctermbg=NONE guibg=NONE guifg=NONE ctermfg=NONE  
"hi! StatusLineNC ctermbg=NONE guibg=NONE guifg=NONE ctermfg=NONE  
"hi! Error ctermbg=NONE guibg=NONE guifg=NONE ctermfg=NONE  

"hi! cIf0 ctermbg=NONE guibg=NONE guifg=NONE ctermfg=NONE  
"hi! title ctermbg=NONE guibg=NONE guifg=NONE ctermfg=NONE  
"hi! Folded ctermbg=NONE guibg=NONE guifg=NONE ctermfg=NONE  
"hi! FoldColumn ctermbg=NONE guibg=NONE guifg=NONE ctermfg=NONE 
"hi! ModeMsg ctermbg=NONE guibg=NONE guifg=NONE ctermfg=NONE 
"hi! Search ctermbg=NONE guibg=NONE guifg=NONE ctermfg=NONE 
"hi! IncSearch ctermbg=NONE guibg=NONE guifg=NONE ctermfg=NONE  
"hi! VertSplit ctermbg=NONE guibg=NONE guifg=NONE ctermfg=NONE 
"hi! label ctermbg=NONE guibg=NONE guifg=NONE ctermfg=NONE 
"hi! special ctermbg=NONE guibg=NONE guifg=NONE ctermfg=NONE  
"hi! CursorLineNr ctermbg=NONE guibg=NONE guifg=NONE ctermfg=NONE
"hi! Menu ctermbg=NONE guibg=NONE guifg=NONE ctermfg=NONE  
"hi! Scrollbar ctermbg=NONE guibg=NONE guifg=NONE ctermfg=NONE  
"hi! Tooltip ctermbg=NONE guibg=NONE guifg=NONE ctermfg=NONE   
"hi! WildMenu ctermbg=NONE guibg=NONE guifg=NONE ctermfg=NONE  
"hi! TabLine ctermbg=NONE guibg=NONE guifg=NONE ctermfg=NONE 
"hi! Terminal ctermbg=NONE guibg=NONE guifg=NONE ctermfg=NONE  
"hi! LineNrAbove ctermbg=NONE guibg=NONE guifg=NONE ctermfg=NONE  
"hi! LineNrBelow ctermbg=NONE guibg=NONE guifg=NONE ctermfg=NONE  
"hi! PmenuSel ctermbg=NONE guibg=NONE guifg=NONE ctermfg=NONE 
"hi! PmenuSbar ctermbg=NONE guibg=NONE guifg=NONE ctermfg=NONE  
"hi! PmenuThumb ctermbg=NONE guibg=NONE guifg=NONE ctermfg=NONE  
"hi! TabLineFill ctermbg=NONE guibg=NONE guifg=NONE ctermfg=NONE 
"hi! TabLineSel ctermbg=NONE guibg=NONE guifg=NONE ctermfg=NONE  

" This apparently copys to the clipboard for yank statement.
vmap '' :w !pbcopy<CR><CR>

let g:ycm_global_ycm_extra_conf = '~/.ycm_extra_conf.py'
set clipboard=unnamed
