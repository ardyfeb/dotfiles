syntax on

set number
set nowrap
set autoindent
set smartindent
set breakindent
set noswapfile
set nobackup
set nowritebackup
set smartcase
set noshowmode 
set tabstop=2 softtabstop=2
set shiftwidth=2
set termguicolors
set cmdheight=1
" set fillchars+=vert:":"

filetype plugin on


" jump to last position
if has("autocmd")
	au BufReadPost * if line("'\"") > 0 && line("'\"") <= line("$")
		\| exe "normal! g'\"" | endif
endif 

let mapleader = " "

source ~/.config/nvim/plugins.vim
source ~/.config/nvim/mappings.vim

" close the tab if nerdtree is the only window remaining in it.
autocmd BufEnter * if winnr('$') == 1 && exists('b:NERDTree') && b:NERDTree.isTabTree() | quit | endif

" highlight the symbol and its references when holding the cursor.
autocmd CursorHold * silent call CocActionAsync('highlight')

" disable lightline on nerdtree
augroup filetype_nerdtree
		au!
		au FileType nerdtree call s:disable_lightline_on_nerdtree()
		au WinEnter,BufWinEnter,TabEnter * call s:disable_lightline_on_nerdtree()
augroup END

fu s:disable_lightline_on_nerdtree() abort
		let nerdtree_winnr = index(
			\ map(range(1, winnr('$')), {_,v -> getbufvar(winbufnr(v), '&ft')}), 'nerdtree'
		\) + 1

		call timer_start(0, {-> nerdtree_winnr && setwinvar(nerdtree_winnr, '&stl', '%#Normal#') })
endfu

colorscheme tokyonight
