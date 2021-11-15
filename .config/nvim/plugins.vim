call plug#begin('~/.config/nvim/plugged')
	Plug 'ardyfeb/tokyonight-vim'
  Plug 'mhinz/vim-startify'
	Plug 'itchyny/lightline.vim'
	Plug 'preservim/nerdcommenter'
	Plug 'preservim/nerdtree'
	Plug 'neoclide/coc.nvim', {'branch': 'release'}
	Plug 'ryanoasis/vim-devicons'
	Plug 'editorconfig/editorconfig-vim'
call plug#end()

let g:tokyonight_style = 'storm'
let g:lightline = {'colorscheme': 'tokyonight'}

let g:NERDCreateDefaultMappings = 1
let g:NERDCompactSexyComs = 1
let g:NERDCommentEmptyLines = 1
let g:NERDTrimTrailingWhitespace = 1
let g:NERDToggleCheckAllLines = 1
let g:NERDSpaceDelims = 1

let g:NERDTreeMinimalUI = 1
