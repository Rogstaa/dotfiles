----------------------------------------
--	    General bootstrap 
----------------------------------------

----------------------------------------
--	    options
----------------------------------------

vim.opt.number 		= true
vim.opt.tabstop 	= 4
vim.opt.shiftwidth 	= 4
vim.opt.softtabstop = 0
vim.opt.expandtab 	= true
vim.opt.swapfile 	= false
vim.opt.syntax 		= 'on'
vim.o.omnifunc = 'v:lua.vim.lsp.omnifunc'
vim.o.showtabline = 2
vim.opt.tabpagemax = 50

-- Example config in lua
-- Load the colorscheme

-- Load the NORD colorscheme

----------------------------------------
--	    Keymap
----------------------------------------

vim.g.mapleader = " "

-- simplify mappings
function map(mode, lhs, rhs, opts)
    local options = { noremap = true }
    if opts then
        options = vim.tbl_extend("force", options, opts)
    end
    vim.api.nvim_set_keymap(mode, lhs, rhs, options)
end

-- Keymaps
map('n', '<leader>z', ':CodeActionMenu<CR>')
map('n', '<leader>e', ':Neotree toggle float<CR>')
-- fterm toggle
map('n', '<C-t>', '<CMD>lua require("FTerm").toggle()<CR>')
map('t', '<C-T>', '<C-\\><C-n><CMD>lua require("FTerm").toggle()<CR>')
----------------------------------------
--	    Commands 
----------------------------------------
vim.cmd [[colorscheme iceberg]]
vim.cmd([[ let g:neo_tree_remove_legacy_commands = 1 ]]) -- remove legacy commands for neotree
----------------------------------------
--	    Plugins
----------------------------------------

-- Install packer
local install_path = vim.fn.stdpath 'data' .. '/site/pack/packer/start/packer.nvim'
local is_bootstrap = false
if vim.fn.empty(vim.fn.glob(install_path)) > 0 then
  is_bootstrap = true
  vim.fn.system { 'git', 'clone', '--depth', '1', 'https://github.com/wbthomason/packer.nvim', install_path }
  vim.cmd [[packadd packer.nvim]]
end

require('packer').startup(function(use)
    use 'wbthomason/packer.nvim'
    use 'cocopon/iceberg.vim'
    use 'github/copilot.vim'
    use 'neovim/nvim-lspconfig'
    use 'nvim-lua/plenary.nvim'
    use 'nvim-treesitter/nvim-treesitter'
    use 'weilbith/nvim-code-action-menu'
    use 'echasnovski/mini.completion'
    use 'MunifTanjim/nui.nvim'
    use 'nvim-neo-tree/neo-tree.nvim'
    use 'numToStr/FTerm.nvim'
    use 'echasnovski/mini.pairs'
    use 'ap/vim-css-color'
    use 'shaunsingh/nord.nvim'
end)

--plugins settings LSP and tree-sitter
require('lspconfig').ccls.setup{
}
require('nvim-treesitter.configs').setup {}

--plugins settings mini pairs and  completion
require('mini.completion').setup()
require('mini.pairs').setup()

----------------------------------------
--        TABLINE
----------------------------------------

