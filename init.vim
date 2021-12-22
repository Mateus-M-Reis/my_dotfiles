call plug#begin('~/.vim/plugged')
" Utilities
Plug 'scrooloose/nerdtree'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'Yggdroot/indentLine'
Plug 'jiangmiao/auto-pairs'
Plug 'KabbAmine/vCoolor.vim'
Plug 'norcalli/nvim-colorizer.lua'
Plug 'lambdalisue/suda.vim' 
Plug 'enricobacis/paste.vim'
" Smart Writing
Plug 'neoclide/coc.nvim', {'branch': 'release'}
" Themes
Plug 'kyoz/purify', { 'rtp': 'vim' }
"Plug 'liuchengxu/space-vim-dark'
"Plug 'joshdick/onedark.vim'
"Plug 'kaicataldo/material.vim'
" REPL
Plug 'voldikss/vim-floaterm'
" Files
Plug 'goerz/jupytext.vim'
Plug 'chrisbra/csv.vim'
Plug 'cespare/vim-toml'
" Languages
"Plug 'mxw/vim-jsx'
"Plug 'JuliaEditorSupport/julia-vim'
call plug#end()

" GENERAL -------------------------------------------------------------------------
map <C-\> :NERDTreeToggle<CR>
map <F2> :retab <CR> 
map <F3> :w<CR>
map <F4> :q<CR>
map <esc> :noh<cr>

noremap <c-x> :tabnext<cr> 
noremap <c-z> :tabprevious<cr>
noremap <A-Left> :-tabmove<cr>
noremap <A-Right> :+tabmove<cr>

nnoremap <A-j> <C-w><C-j>
nnoremap <A-k> <C-w><C-k>
nnoremap <A-l> <C-w><C-l>
nnoremap <A-h> <C-w><C-h>

" Set 
set number
set foldmethod=indent
set foldcolumn=1
let javascript_fold=1
set foldlevelstart=99
"set nofoldenable
set noshowcmd
set noshowmode
set cmdheight=1
"set noruler
"set laststatus=0
"set shortmess+=F
set termguicolors
lua require'colorizer'.setup()

" UTILITIES -----------------------------------------------------------------------
" Vim Airline
let g:airline_powerline_fonts = 1
let g:airline_theme = 'behelit' " 'bubblegum'
let g:AutoPairsShortcutToggle = '<M-f>'
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#formatter = 'default'
let g:airline#extensions#tabline#show_splits = 0
"let g:airline#extensions#tabline#show_buffers = 1
"let g:airline#extensions#tabline#buffer_nr_show = 1
"let g:airline#extensions#bufferline#enabled = 0
let g:airline_right_sep = ''
let g:airline_right_alt_sep = '<'
"let g:airline_extensions = ['vim-fugitive']
"let g:airline_inactive_collapse=1
"let g:airline_disable_statusline = 1
"let w:airline_skip_empty_sections = 0
"let g:airline_statusline_ontop=0
"let g:python3_host_prog = '/home/moises/anaconda3/bin/python'
let g:airline#extensions#coc#enabled = 1
let g:airline#extensions#branch#enabled = 1
let g:airline#extensions#hunks#enabled = 1
"let g:airline#extensions#ctrlspace#enabled = 1
"let g:airline#extensions#denite#enabled = 1

" vcoolor  
"let g:vcoolor_custom_picker = 'zenity --title \"custom\" --color-selection --show-palette --color '
"let g:vcoolor_disable_mappings = 1
let g:vcoolor_map = '<A-1>'
let g:vcool_ins_rgb_map = '<A-2>'   " Insert rgb color.
let g:vcool_ins_hsl_map = '<A-3>'   " Insert hsl color.
let g:vcool_ins_rgba_map = '<A-4>'    " Insert rgba color.

" suda nvim
let g:suda_smart_edit = 1

" copy and paste
let g:paste_no_mappings = 1
nnoremap <Leader>p :Paste<CR>
vnoremap <Leader>y :Copy<CR>

" SMART WRITING ------------------------------------------------------------------
inoremap <expr> <Tab> pumvisible() ? "\<C-n>" : "\<Tab>"
inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"
inoremap <silent><expr> <C-space> coc#refresh()
" GoTo code navigation
nmap <leader>g <C-o>
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gv :vsp<CR><Plug>(coc-definition)<C-W>L
"nmap <silent> gt <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)
nmap <leader>rn <Plug>(coc-rename)
" show all diagnostics.
nnoremap <silent> <space>d :<C-u>CocList diagnostics<cr>
" manage extensions.
nnoremap <silent> <space>e :<C-u>CocList extensions<cr>
noremap <A-i>p :CocCommand python.setInterpreter<cr> 

" Use K to show documentation in preview window.
nnoremap <c-a> :call <SID>show_documentation()<CR>
function! s:show_documentation()
    if (index(['vim','help'], &filetype) >= 0)
        execute 'h '.expand('<cword>')
    elseif (coc#rpc#ready())
        call CocActionAsync('doHover')
    else
        execute '!' . &keywordprg . " " . expand('<cword>')
    endif
endfunction

nnoremap <expr> <c-s> coc#float#has_scroll() ? coc#float#scroll(1) : "\<c-s>"
nnoremap <expr> <c-w> coc#float#has_scroll() ? coc#float#scroll(0) : "\<c-w>"
inoremap <expr> <c-s> coc#float#has_scroll() ? "\<c-r>=coc#float#scroll(1)\<cr>" : "\<Right>"
inoremap <expr> <c-w> coc#float#has_scroll() ? "\<c-r>=coc#float#scroll(0)\<cr>" : "\<Left>"

" THEMES --------------------------------------------------------------------------
colorscheme purify 
"let g:material_theme_style = 'darker'
"let g:space_vim_dark_background = 234

" REPL  ---------------------------------------------------------------------------
let g:floaterm_keymap_new = '<A-t>'
let g:floaterm_keymap_prev = '<A-a>'
let g:floaterm_keymap_next = '<A-d>'
let g:floaterm_keymap_hide = '<A-s>'
let g:floaterm_keymap_show = '<A-w>'
let g:floaterm_keymap_kill = '<A-q>'
"let g:floaterm_keymap_toggle = '<A-t>'
let g:floaterm_position = 'right'
let g:floaterm_height = 0.90
let g:floaterm_width = 0.75
"let g:floaterm_shell = '' 
function! s:REPLSendLine()
    FloatermSend
		"FloatermShow
endfunction
function! s:REPLSendSelection()
    '<,'>FloatermSend
		"FloatermShow
endfunction
nnoremap <silent><leader>i :FloatermNew<CR> ca mlab && ipython<CR>
nnoremap <silent><leader><CR> :call <SID>REPLSendLine()<CR>
vnoremap <silent><leader><CR> :<C-u>call <SID>REPLSendSelection()<CR>
tnoremap <A-0> <C-\>
tnoremap <A-9> <C-\><C-n>

" FILES ---------------------------------------------------------------------------
" csv
"let g:csv_autocmd_arrange = 1
" Jupytext
let g:jupytext_enable = 1
let g:jupytext_command = 'jupytext'
let g:jupytext_fmt = 'py'
let g:jupytext_to_ipynb_opts = '--to=ipynb --update'

" LANGUAGES ------------------------------------------------------------------------
"filetype plugin indent on
set noexpandtab tabstop=2 shiftwidth=4
autocmd FileType python setlocal expandtab tabstop=8 shiftwidth=4 "PEP tabstop=8 shiftwidth=4 
autocmd FileType javascript setlocal shiftwidth=2 tabstop=2
autocmd FileType html setlocal noexpandtab tabstop=2 shiftwidth=2
autocmd FileType * setlocal formatoptions-=c formatoptions-=r formatoptions-=o
" SCALA
au BufRead,BufNewFile *.sbt set filetype=scala
