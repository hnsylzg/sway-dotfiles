"令编辑器显示行号
set nu
set clipboard+=unnamedplus
"要安装的插件列表
call plug#begin('~/.vim/plugged')
"tab 键补全功能插件
Plug 'ervandew/supertab'
"Coc 智能差补全插件引擎
Plug 'neoclide/coc.nvim',{'branch':'release'}
"vim-airline 标签栏插件
Plug 'Vim-airline/vim-airline'
"vim-airline 标签栏插件的主题插件
Plug 'Vim-airline/vim-airline-themes'
"ranger 文件浏览器
Plug 'kevinhwang91/rnvimr'
"vim-startify 插件
Plug 'mhinz/vim-startify'
"markdown 预览插件
Plug 'iamcco/markdown-preview.nvim'
"主题
"Plug 'connorholyday/vim-snazzy'
Plug 'catppuccin/nvim', { 'as': 'catppuccin' }
"Plug 'folke/tokyonight.nvim'
call plug#end()

"配置 vim-airline 标签栏插件
let g:airline#extensions#tabline#enabled = 1

"配置 ranger 文件浏览器插件
let g:rnvimr_ex_enable = 1

"ALt+o 打开ranger
nnoremap <silent> <M-o> : RnvimrToggle <CR>

"Alt+加号 切换至下一个标签，减号则是切换回上一个
nnoremap <M-=> : bp <CR>
nnoremap <M--> : bn <CR>

"指定浏览器路径
let g:mkdp_patch_to_chrome = "/usr/bin/google-chrome-stable"
"指定预览主题，默认Github
let g:mkdp_markdown_css=''

"配置 vim-snazzy 主题插件
"let g:SnazzyTransparent = 1
"colorscheme snazzy

lua <<EOF
--require("tokyonight").setup {
require("catppuccin").setup {
	--transparent = true,
	transparent_background = true,
	}
--vim.cmd.colorscheme "tokyonight"
vim.cmd.colorscheme "catppuccin"
EOF
