"
" Generic configuration
"
syntax enable       " enable syntax processing
set tabstop=2       " number of visual spaces per TAB
set softtabstop=2   " number of spaces in tab when editing
set shiftwidth=2                  " an autoindent (with <<) is two spaces
set expandtab       " tabs are spaces
set showcmd             " show command in bottom bar
set cursorline          " highlight current line
filetype indent on      " load filetype-specific indent files
set showmatch           " highlight matching [{()}]
set incsearch           " search as characters are entered
set hlsearch            " highlight matches
set foldenable
set ignorecase
set smartcase
set number relativenumber            " Show line numbers
set ruler             " Show line and column number
set mouse=a           " Enable all mouse interactions
set cursorline          " highlight current line
set noerrorbells        " No beeps
" set nowrap                        " don't wrap lines
set list                          " Show invisible characters
set backspace=indent,eol,start    " backspace through everything in insert mode
set hidden
set foldmethod=syntax

" List chars
set listchars=""                  " Reset the listchars
set listchars=tab:\ \             " a tab should display as "  ", trailing whitespace as "."
set listchars+=trail:.            " show trailing spaces as dots
set listchars+=extends:>          " The character to show in the last column when wrap is
                                  " off and the line continues beyond the right of the screen
set listchars+=precedes:<         " The character to show in the last column when wrap is
                                  " off and the line continues beyond the left of the screen

" System clipboard integration
set clipboard=unnamedplus
"
" SudoEdit should ask password on terminal only
let g:sudo_no_gui=1

" change leader
let mapleader = ","

" Specify a directory for plugins
" - For Neovim: ~/.local/share/nvim/plugged
" - Avoid using standard Vim directory names like 'plugin'
call plug#begin('~/.config/nvim/plugged')

" The greatest Coc plugin for vim
Plug 'neoclide/coc.nvim', {'branch': 'release'}
" Plug 'neoclide/coc.nvim', {'do': 'yarn install --frozen-lockfile'}
let g:coc_global_extensions = [
  \ 'coc-tsserver'
  \ ]

" Snippets to be loaded with Coc-snippets
" Plug 'honza/vim-snippets'

" Dim inactive panes
Plug 'blueyed/vim-diminactive'

" Themes
Plug 'sainnhe/gruvbox-material'
" Plug 'morhetz/gruvbox'

" FZFvim
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'

" Tmux integration
Plug 'tmux-plugins/vim-tmux-focus-events'
Plug 'christoomey/vim-tmux-navigator'
Plug 'edkolev/tmuxline.vim'

" Nice icons
Plug 'ryanoasis/vim-devicons'

" Ack search (grep alternative)
" :Ack [options] {pattern} [{directories}]
Plug 'mileszs/ack.vim'

" Airline status bar
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

" Fugitive is the premier Vim plugin for Git
Plug 'tpope/vim-fugitive'

" A universal set of defaults that (hopefully) everyone can agree on
" Plug 'tpope/vim-sensible'

" Surround.vim is all about "surroundings": parentheses, brackets, quotes, XML tags, and more
Plug 'tpope/vim-surround'

" A Vim plugin which shows a git diff in the sign column
Plug 'airblade/vim-gitgutter'

" Mark trailing whitespace red so we keep and eye on it
Plug 'bronson/vim-trailing-whitespace'

" JSONC support
Plug 'neoclide/jsonc.vim'

" Easy commenting
Plug 'ddollar/nerdcommenter'
" Most of the following mappings are for normal/visual mode only. The |NERDCommenterInsert| mapping is for insert mode only:
"
" [count]<leader>cc |NERDCommenterComment|
" Comment out the current line or text selected in visual mode.
"
" [count]<leader>cn |NERDCommenterNested|
" Same as cc but forces nesting.
"
" [count]<leader>c<space> |NERDCommenterToggle|
" Toggles the comment state of the selected line(s). If the topmost selected line is commented, all selected lines are uncommented and vice versa.
"
" [count]<leader>cm |NERDCommenterMinimal|
" Comments the given lines using only one set of multipart delimiters.
"
" [count]<leader>ci |NERDCommenterInvert|
" Toggles the comment state of the selected line(s) individually.
"
" [count]<leader>cs |NERDCommenterSexy|
" Comments out the selected lines with a pretty block formatted layout.
"
" [count]<leader>cy |NERDCommenterYank|
" Same as cc except that the commented line(s) are yanked first.
"
" <leader>c$ |NERDCommenterToEOL|
" Comments the current line from the cursor to the end of line.
"
" <leader>cA |NERDCommenterAppend|
" Adds comment delimiters to the end of line and goes into insert mode between them.
"
" |NERDCommenterInsert|
" Adds comment delimiters at the current cursor position and inserts between. Disabled by default.
"
" <leader>ca |NERDCommenterAltDelims|
" Switches to the alternative set of delimiters.
"
" [count]<leader>cl |NERDCommenterAlignLeft [count]<leader>cb |NERDCommenterAlignBoth
" Same as |NERDCommenterComment| except that the delimiters are aligned down the left side (<leader>cl) or both sides (<leader>cb).
"
" [count]<leader>cu |NERDCommenterUncomment|
" Uncomments the selected line(s).

" Syntastic is a syntax checking plugin for Vim. It runs files through external syntax checkers and displays any resulting errors to the user.
Plug 'vim-syntastic/syntastic'

" XO
Plug 'xojs/vim-xo', { 'branch': 'main'}


" A collection of language packs for Vim (syntax highlighting)
Plug 'sheerun/vim-polyglot'

call plug#end()

"
" Python executables
"
" let g:python_host_prog = '/usr/local/bin/python'
let g:python_host_prog = '/Users/miguel/.pyenv/shims/python'
" let g:python3_host_prog = '/usr/local/bin/python3'
let g:python3_host_prog = '/Users/miguel/.pyenv/shims/python3'

"
" Coc Example vim configuration
"
" TextEdit might fail if hidden is not set.
set hidden

" Some servers have issues with backup files, see #649.
set nobackup
set nowritebackup

" Give more space for displaying messages.
set cmdheight=2

" Having longer updatetime (default is 4000 ms = 4 s) leads to noticeable
" delays and poor user experience.
set updatetime=300

" Don't pass messages to |ins-completion-menu|.
set shortmess+=c

" Always show the signcolumn, otherwise it would shift the text each time
" diagnostics appear/become resolved.
if has("patch-8.1.1564")
  " Recently vim can merge signcolumn and number column into one
  set signcolumn=number
else
  set signcolumn=yes
endif

" To make snippet completion work just like VSCode
" inoremap <silent><expr> <TAB>
"       \ pumvisible() ? coc#_select_confirm() :
"       \ coc#expandableOrJumpable() ? "\<C-r>=coc#rpc#request('doKeymap', ['snippets-expand-jump',''])\<CR>" :
"       \ <SID>check_back_space() ? "\<TAB>" :
"       \ coc#refresh()

function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

let g:coc_snippet_next = '<tab>'

" Use <Tab> and <S-Tab> to navigate the completion list:
inoremap <expr> <Tab> pumvisible() ? "\<C-n>" : "\<Tab>"
inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"

" Use <cr> to confirm completion, `<C-g>u` means break undo chain at current
" position. Coc only does snippet and additional edit on confirm.
" <cr> could be remapped by other vim plugin, try `:verbose imap <CR>`.
inoremap <expr> <cr> pumvisible() ? "\<C-y>" : "\<C-g>u\<CR>"
if exists('*complete_info')
  inoremap <expr> <cr> complete_info()["selected"] != "-1" ? "\<C-y>" : "\<C-g>u\<CR>"
else
  inoremap <expr> <cr> pumvisible() ? "\<C-y>" : "\<C-g>u\<CR>"
endif

" Use `[g` and `]g` to navigate diagnostics
" Use `:CocDiagnostics` to get all diagnostics of current buffer in location list.
nmap <silent> [g <Plug>(coc-diagnostic-prev)
nmap <silent> ]g <Plug>(coc-diagnostic-next)

" GoTo code navigation.
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)

" Code actions are automated changes or fixes for an issue, 
" such as automatically importing a missing symbol. 
"
nmap <leader>do <Plug>(coc-codeaction)

" Use K to show documentation in preview window.
" nnoremap <silent> K :call <SID>show_documentation()<CR>
" function! s:show_documentation()
"   if (index(['vim','help'], &filetype) >= 0)
"     execute 'h '.expand('<cword>')
"   else
"     call CocAction('doHover')
"   endif
" endfunction

" Highlight the symbol and its references when holding the cursor.
autocmd CursorHold * silent call CocActionAsync('highlight')

" Symbol renaming.
nmap <leader>rn <Plug>(coc-rename)

" Formatting selected code - I don't really do this when programming
" xmap <leader>f  <Plug>(coc-format-selected)
nmap <leader>f  <Plug>(coc-format-selected)

augroup mygroup
  autocmd!
  " Setup formatexpr specified filetype(s).
  autocmd FileType typescript,json setl formatexpr=CocAction('formatSelected')
  " Update signature help on jump placeholder.
  autocmd User CocJumpPlaceholder call CocActionAsync('showSignatureHelp')
augroup end

" Applying codeAction to the selected region.
" Example: `<leader>aap` for current paragraph
xmap <leader>a  <Plug>(coc-codeaction-selected)
nmap <leader>a  <Plug>(coc-codeaction-selected)

" Remap keys for applying codeAction to the current buffer.
nmap <leader>ac  <Plug>(coc-codeaction)
" Apply AutoFix to problem on the current line.
nmap <leader>qf  <Plug>(coc-fix-current)

" Map function and class text objects
" NOTE: Requires 'textDocument.documentSymbol' support from the language server.
xmap if <Plug>(coc-funcobj-i)
omap if <Plug>(coc-funcobj-i)
xmap af <Plug>(coc-funcobj-a)
omap af <Plug>(coc-funcobj-a)
xmap ic <Plug>(coc-classobj-i)
omap ic <Plug>(coc-classobj-i)
xmap ac <Plug>(coc-classobj-a)
omap ac <Plug>(coc-classobj-a)

" Use CTRL-S for selections ranges.
" Requires 'textDocument/selectionRange' support of LS, ex: coc-tsserver
nmap <silent> <C-s> <Plug>(coc-range-select)
xmap <silent> <C-s> <Plug>(coc-range-select)

" Add `:Format` command to format current buffer.
command! -nargs=0 Format :call CocAction('format')

" Add `:Fold` command to fold current buffer.
command! -nargs=? Fold :call     CocAction('fold', <f-args>)

" Add `:OR` command for organize imports of the current buffer.
command! -nargs=0 OR   :call     CocAction('runCommand', 'editor.action.organizeImport')

" Add (Neo)Vim's native statusline support.
" NOTE: Please see `:h coc-status` for integrations with external plugins that
" provide custom statusline: lightline.vim, vim-airline.
set statusline^=%{coc#status()}%{get(b:,'coc_current_function','')}

" Mappings for CoCList
" Show all diagnostics.
nnoremap <silent><nowait> <space>a  :<C-u>CocList diagnostics<cr>
" Manage extensions.
nnoremap <silent><nowait> <space>e  :<C-u>CocList extensions<cr>
" Show commands.
nnoremap <silent><nowait> <space>c  :<C-u>CocList commands<cr>
" Find symbol of current document.
nnoremap <silent><nowait> <space>o  :<C-u>CocList outline<cr>
" Search workspace symbols.
nnoremap <silent><nowait> <space>s  :<C-u>CocList -I symbols<cr>
" Do default action for next item.
nnoremap <silent><nowait> <space>j  :<C-u>CocNext<CR>
" Do default action for previous item.
nnoremap <silent><nowait> <space>k  :<C-u>CocPrev<CR>
" Resume latest coc list.
nnoremap <silent><nowait> <space>p  :<C-u>CocListResume<CR>

" Coc will display diagnostics (errors and warnings) in a tooltip 
" for words you cursor over. We can create a mapping to show 
" documentation for the word under the cursor in the same way:
nnoremap <silent> K :call CocAction('doHover')<CR>

" Taken from https://github.com/neoclide/coc.nvim/issues/531
" because floating windows sometimes just dont go away
" nmap <Esc> :call coc#util#float_hide() <CR>
nmap <Esc> :call coc#float#close_all() <CR>

" Disable netrw the default vim folder tree display
let g:loaded_netrw        = 1
let g:loaded_netrwPlugin  = 1


"
" Key mappings
"
" from https://jesseleite.com/posts/2/its-dangerous-to-vim-alone-take-fzf
nmap <Leader>g :GFiles<CR>
nmap <Leader>f :Files<CR>
nmap <Leader>b :Buffers<CR>
nmap <Leader>h :History<CR>
nmap <Leader>a :Ack<Space>
" shrugs?
nnoremap \d :bp<CR>:bd #<CR>


"
" FZF configuration
"
" old config: set rtp+=/usr/local/bin/fzf
set rtp+=/usr/local/opt/fzf
nnoremap <expr> <c-p> (&ft =~ 'nerdtree' ? "\<c-w>\<c-w>" : '').":FZF\<cr>"

" Default fzf layout
" - down / up / left / right
let g:fzf_layout = { 'down': '~40%' }


"
" Theme activation
"
" Important!!
if has('termguicolors')
  set termguicolors
endif

" For dark version.
set background=dark
let g:gruvbox_material_background = 'soft'

" For light version.
" set background=light
" let g:gruvbox_material_background = 'hard'

" contrast values: soft, medium, hard
let g:gruvbox_contrast_dark = 'soft'
let g:gruvbox_contrast_light = 'hard'
" colorscheme gruvbox

" Set contrast.
" This configuration option should be placed before `colorscheme gruvbox-material`.
" Available values: 'hard', 'medium'(default), 'soft'
colorscheme gruvbox-material

let g:airline_theme = 'gruvbox_material'

"
" Prettier activation
"
" According to docs: https://github.com/neoclide/coc-prettier
command! -nargs=0 Prettier :CocCommand prettier.formatFile

"
" Coc-highlight activation
"
" To enable highlight current symbol on CursorHold, add:
" autocmd CursorHold * silent call CocActionAsync('highlight')

" Coc-explorer
nmap <Leader>e :CocCommand explorer<CR>
nmap <Leader>er :call CocAction('runCommand', 'explorer.doAction', 'closest', ['reveal:0'], [['relative', 0, 'file']])<CR>

" Coc-yank
nnoremap <silent> <space>y  :<C-u>CocList -A --normal yank<cr>

"
" Syntastic settings
"
" set statusline+=%#warningmsg#
" set statusline+=%{SyntasticStatuslineFlag()}
" set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 0
let g:syntastic_check_on_wq = 0

" activate XO
let g:syntastic_javascript_checkers = ['xo']

