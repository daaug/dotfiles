vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1
--vim.o.mouse = false
vim.o.rnu = true
vim.o.nu = true
vim.o.hidden = true
vim.o.wrap = false
vim.o.cursorline = true
vim.o.updatetime = 250
vim.o.termguicolors = true
vim.o.expandtab = true
vim.o.shiftwidth = 2
vim.o.softtabstop = 2
vim.o.autoindent = true

-- Theme
vim.cmd([[colorscheme ir_black]])

-- Download paq
paq_path = "~/.local/share/nvim/site/pack/paqs"
os.execute(
  "[ ! -d "
    .. paq_path
    .. ' ] && git clone --depth=1 https://github.com/savq/paq-nvim.git ' 
      .. '"${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/pack/paqs/start/paq-nvim'
)

require("paq")({
  -- Main
  "savq/paq-nvim"; -- Let Paq manage itself

  -- LSP
  --{ "williamboman/mason.nvim", build = ":MasonUpdate" };
  --"williamboman/mason-lspconfig.nvim";
  "neovim/nvim-lspconfig";
  --"hrsh7th/cmp-nvim-lsp";
  --"hrsh7th/nvim-cmp";

  -- Buffer Goodies
  {"nvim-treesitter/nvim-treesitter", build = ":TSUpdateSync"};
  "airblade/vim-gitgutter";
  "nvim-lualine/lualine.nvim";

  -- Word Management
  "easymotion/vim-easymotion";
  "tpope/vim-surround";
  "L3MON4D3/LuaSnip";

  -- File Management
  --"nvim-tree/nvim-tree.lua";
  "nvim-lua/plenary.nvim";
  "nvim-telescope/telescope.nvim";

  -- Shougo
  --"Shougo/ddc.vim";
  --"vim-denops/denops.vim";

})

-- First Priority
require("keymaps")
require('lualine-cfg')
--require("nvim-tree-cfg")

-- Second Priority
require'nvim-treesitter.configs'.setup {
  ensure_installed = { "go", "lua", "vim", "vimdoc", "dart", "javascript", "scss", "css" },
  -- Install parsers synchronously (only applied to `ensure_installed`)
  sync_install = true,

  -- Automatically install missing parsers when entering buffer
  -- Recommendation: set to false if you don't have `tree-sitter` CLI installed locally
  auto_install = false,

  highlight = {
    enable = true,
  },
}
require("plenary")
require("telescope").setup()
--require("mason").setup()
--require("mason-lspconfig").setup()
require("lspconfig-cfg")
--require("nvim-cmp-cfg")
--require("cmp_nvim_lsp-cfg")
