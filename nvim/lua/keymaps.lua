---@diagnostic disable: undefined-global
-- Nvim-tree: disable netrw at the very start of your init.lua (strongly advised)
-- Leader
vim.g.mapleader = " "

-- Misc
--vim.api.nvim_set_keymap("i", "{", "{}<ESC>i", {noremap = true})
vim.api.nvim_set_keymap("i", "(", "()<ESC>i", {noremap = true})
vim.api.nvim_set_keymap("i", "[", "[]<ESC>i", {noremap = true})
vim.api.nvim_set_keymap("i", "<", "<><ESC>i", {noremap = true})
vim.api.nvim_set_keymap("i", "\'", "\'\'<ESC>i", {noremap = true})
vim.api.nvim_set_keymap("i", "\"", "\"\"<ESC>i", {noremap = true})
vim.api.nvim_set_keymap("n", "<F8>", ":mks!<CR>", {noremap = true})
vim.api.nvim_set_keymap("n", "<F9>", ":source ./Session.vim<CR>", {noremap = true})

-- Buffer
--vim.api.nvim_set_keymap("n", "<leader>l", ":Buffers<CR>", {noremap = true})
vim.api.nvim_set_keymap("n", "<TAB>", ":bnext<CR>", {noremap = true})
vim.api.nvim_set_keymap("n", "<S-TAB>", ":bprevious<CR>", {noremap = true})
vim.api.nvim_set_keymap("n", "<leader>bd", ":bnext|bdelete #<CR>", {noremap = true})

-- Fzf
--vim.api.nvim_set_keymap("n", "<C-f>", ":Ag<CR>", {noremap = true})
--vim.api.nvim_set_keymap("n", "<C-p>", ":Files<CR>", {noremap = true})
--vim.api.nvim_set_keymap("n", "<C-A-p>", ":GFiles<CR>", {noremap = true})
--vim.api.nvim_set_keymap('n', '<C-p>', ":FZF<CR>", {noremap = true})

-- Save/Quit
vim.api.nvim_set_keymap("n", "q", "<Nop>", {noremap = true})
vim.api.nvim_set_keymap("n", "<A-q>", ":q<CR>", {noremap = true})
vim.api.nvim_set_keymap("n", "<A-w>", ":w<CR>", {noremap = true})

-- Splits
vim.api.nvim_set_keymap("n", "vv", "<C-w>v<C-w>l", {noremap = true})
vim.api.nvim_set_keymap("n", "vs", "<C-w>S<C-w>j", {noremap = true})
vim.api.nvim_set_keymap("n", "<A-h>", "<C-w>h", {noremap = true})
vim.api.nvim_set_keymap("n", "<A-j>", "<C-w>j", {noremap = true})
vim.api.nvim_set_keymap("n", "<A-k>", "<C-w>k", {noremap = true})
vim.api.nvim_set_keymap("n", "<A-l>", "<C-w>l", {noremap = true})
vim.api.nvim_set_keymap("n", "+", ":res +2<CR>", {noremap = true})
vim.api.nvim_set_keymap("n", "_", ":res -2<CR>", {noremap = true})
vim.api.nvim_set_keymap("n", "=", ":vertical res +2<CR>", {noremap = true})
vim.api.nvim_set_keymap("n", "-", ":vertical res -2<CR>", {noremap = true})

-- Tabs
vim.api.nvim_set_keymap("n", "<A-c>", ":tabclose<CR>", {noremap = true})
vim.api.nvim_set_keymap("n", "<A-b>", ":tabnew<CR>", {noremap = true})
vim.api.nvim_set_keymap("n", "<A-n>", ":tabprev<CR>", {noremap = true})
vim.api.nvim_set_keymap("n", "<A-m>", ":tabnext<CR>", {noremap = true})

-- Tree
--vim.api.nvim_set_keymap("n", "<C-\\>", ":NvimTreeToggle<CR>", {noremap = true})

-- Easymotion
vim.api.nvim_set_keymap("n", "/", "<Plug>(easymotion-sn)", {noremap = true})

-- Telescope
local builtin = require('telescope.builtin')
vim.keymap.set('n', '<leader>ff', builtin.find_files, {})
vim.keymap.set('n', '<leader>fg', builtin.live_grep, {})
vim.keymap.set('n', '<leader>fb', builtin.buffers, {})
vim.keymap.set('n', '<leader>fh', builtin.help_tags, {})
