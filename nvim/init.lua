vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1
vim.o.mouse = ""
vim.o.rnu = true
vim.o.nu = true
vim.o.hidden = true
vim.o.wrap = false
vim.o.cursorline = true
vim.o.updatetime = 250
vim.o.termguicolors = true

-- false == Use real tabs instead of spaces
vim.o.expandtab = false
-- A tab will display as N spaces wide when viewing files
vim.o.tabstop = 4
-- Controls how many spaces (or columns) to indent when using >> or auto-indent
vim.o.shiftwidth = 4
-- Defines how many spaces <Tab> and <Backspace> count for during editing
vim.o.softtabstop = 4 -- With this, pressing <Tab> feels like inserting 4 spaces even though it’s a tab character (since expandtab = false).
-- Automatically copies the indentation of the current line
vim.o.autoindent = true
-- Adds an extra indent after certain keywords like {, (, or if, based on simple syntax rules (mostly for C-like languages).
vim.o.smartindent = true

vim.opt.termguicolors = true
vim.cmd([[filetype on]])

local mise_path = vim.fn.expand("~/.local/share/mise/shims")
vim.env.PATH = mise_path .. ":" .. vim.env.PATH
-- Verify the PATH is set correctly
--print("Mise PATH: " .. mise_path)
--print("Full PATH: " .. vim.env.PATH)

-- Theme
vim.cmd([[colorscheme vampire]])
--vim.cmd([[colorscheme notcobalt]])
--vim.cmd([[colorscheme hyper]])

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
  { "williamboman/mason.nvim", build = ":MasonUpdate" };
  "williamboman/mason-lspconfig.nvim";
  "neovim/nvim-lspconfig";
  "hrsh7th/cmp-nvim-lsp";
  "hrsh7th/nvim-cmp";

  -- Buffer Goodies
  {"nvim-treesitter/nvim-treesitter", build = ":TSUpdateSync"};
  "airblade/vim-gitgutter";
  "nvim-lualine/lualine.nvim";
  "windwp/nvim-autopairs";

  -- Word Management
  "easymotion/vim-easymotion";
  "tpope/vim-surround";
  "L3MON4D3/LuaSnip";

  -- File Management
  "nvim-tree/nvim-tree.lua";
  "junegunn/fzf"; -- fzf-lua mandatory dependency
  "ibhagwan/fzf-lua";
  "nvim-mini/mini.nvim";
  "nvim-mini/mini.icons"; -- fzf-lua|mini.nvim optional dependency

  --Misc
  "nvim-lua/plenary.nvim";

  -- Time Management
  {"wakatime/vim-wakatime", lazy = false};

})

-- First Priority
require("keymaps")
require('lualine-cfg')
require("plenary")
require("mini.icons").setup({
})
require("mini.files").setup({
  options = {
    use_as_default_explorer = true,
  },
  content = {
    prefix = function(entry)
      local ext = vim.fn.fnamemodify(entry.name, ':e')
      local ascii_icons = {
        --
        -- Programming Languages
        --
        c = "🔧 ",       -- C
        cpp = "⚙️ ",     -- C++
        cs = "💠 ",      -- C#
        go = "🐹 ",      -- Go
        java = "☕ ",     -- Java
        js = "📜 ",      -- JavaScript
        kotlin = "🅰️ ",  -- Kotlin
        lua = "🌙 ",     -- Lua
        php = "🐘 ",     -- PHP
        py = "🐍 ",      -- Python
        r = "📊 ",       -- R
        rb = "💎 ",      -- Ruby
        rust = "🦀 ",     -- Rust
        scala = "🧪 ",   -- Scala
        swift = "🐦 ",   -- Swift
        ts = "🔷 ",      -- TypeScript
        --
        -- Web & Markup
        --
        css = "🎨 ",     -- CSS
        html = "🌐 ",     -- HTML
        less = "📐 ",    -- LESS
        sass = "💅 ",    -- SASS
        scss = "💅 ",    -- SCSS
        svg = "🖼️ ",     -- SVG
        xml = "📄 ",     -- XML
        --
        -- Data & Config Files
        --
        cfg = "⚙️ ",     -- Config
        conf = "⚙️ ",    -- Config
        csv = "📊 ",     -- CSV
        ini = "⚙️ ",     -- INI
        json = "📋 ",     -- JSON
        toml = "🔧 ",    -- TOML
        tsv = "📊 ",     -- TSV
        xml = "📄 ",     -- XML
        yaml = "⚙️ ",    -- YAML
        yml = "⚙️ ",     -- YAML
        --
        -- Documentation
        --
        doc = "📄 ",     -- Word
        docx = "📄 ",    -- Word
        md = "📝 ",      -- Markdown
        pdf = "📕 ",     -- PDF
        txt = "📄 ",     -- Text
        --
        -- Database
        --
        db = "💾 ",      -- Database
        mdb = "🗃️ ",     -- Access DB
        sql = "🗃️ ",     -- SQL
        sqlite = "🗃️ ",  -- SQLite
        --
        -- Build & Package Management
        --
        cmake = "🔨 ",   -- CMake
        dockerfile = "🐳 ", -- Docker
        gitignore = "👁️ ", -- Git ignore
        gradle = "🔄 ",  -- Gradle
        lock = "🔒 ",    -- Lock files
        makefile = "🔨 ", -- Makefile
        --
        -- Archives & Binaries
        --
        bin = "⚙️ ",     -- Binary
        dll = "🔧 ",     -- DLL
        exe = "⚙️ ",     -- Executable
        gz = "📦 ",      -- Gzip
        rar = "📦 ",     -- RAR
        tar = "📦 ",     -- Tar archive
        zip = "📦 ",     -- Zip archive
        --
        -- Version Control & DevOps
        --
        git = "📚 ",     -- Git
        gitattributes = "⚙️ ",
        github = "🐙 ",  -- GitHub
        gitlab = "🦊 ",  -- GitLab
        gitmodules = "⚙️ ",
        --
        -- Images & Media
        --
        bmp = "🖼️ ",     -- BMP
        gif = "🖼️ ",     -- GIF
        ico = "🖼️ ",     -- ICO
        jpeg = "🖼️ ",    -- JPEG
        jpg = "🖼️ ",     -- JPEG
        mp3 = "🎵 ",     -- Audio
        mp4 = "🎥 ",     -- Video
        png = "🖼️ ",     -- PNG
        wav = "🎵 ",     -- Audio
        --
        -- Special Files
        --
        bash = "💻 ",    -- Bash
        bat = "💻 ",     -- Batch
        env = "🔑 ",     -- Environment
        ps1 = "💻 ",     -- PowerShell
        sh = "💻 ",      -- Shell
        zsh = "💻 ",     -- Zsh
      }
      
      if entry.fs_type == 'directory' then
        return "📁 "
      else
        return ascii_icons[ext] or "📄 "
      end
    end,
  }
})
require("fzf-lua").setup({ defaults = { file_icons = false } })
require("nvim-autopairs").setup({ map_cr = true })

-- Second Priority
require'nvim-treesitter.configs'.setup {
  ensure_installed = { "go", "lua", "vim", "vimdoc", "javascript", "scss", "css", "php" },
  auto_install = true,
  highlight = {
    enable = true,
    --additional_vim_regex_highlighting = false,
  },
  indent = {
    enable = true, -- Keep indent enabled for other languages
    --disable = { "php" },
  },
}

require("mason").setup({
  PATH = "prepend", -- This ensures mise tools are found first
})

require("mason-lspconfig").setup({
  ensure_installed = {
    "ts_ls",
    "html",
    "cssls",
    "jsonls",
    "eslint",
    "emmet_language_server",
  }
})

require("lspconfig-cfg")
require("nvim-cmp-cfg")

-- Check if mise tools are available
--local function check_mise_tools()
--  local handle = io.popen("which typescript-language-server")
--  local result = handle:read("*a")
--  handle:close()
--
--  if result and result ~= "" then
--    print("✓ TypeScript language server found: " .. result)
--  else
--    print("✗ TypeScript language server not found")
--  end
--
--  -- Check node version
--  local node_handle = io.popen("node --version")
--  local node_version = node_handle:read("*a")
--  node_handle:close()
--  print("Node version: " .. (node_version or "Not found"))
--end
--
---- Run the check
--check_mise_tools()
