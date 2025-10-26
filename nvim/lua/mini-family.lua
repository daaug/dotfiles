require('mini.fuzzy').setup()
require('mini.pick').setup()
-- mini.pick theme
local black  = "#000000"
local black1  = "#1a1a1a"
local gray0   = "#262626"
local gray4   = "#5c5c5c"
local gray9   = "#b3b3b3"
local red     = "#ff0000"
local white  = "#ffffff"
local yellow1 = "#ba8e23"

-- Main floating window
vim.api.nvim_set_hl(0, "MiniPickBorder",   { fg = red, bg = black })
vim.api.nvim_set_hl(0, "MiniPickBorderBusy", { fg = red, bg = yellow1 })
vim.api.nvim_set_hl(0, "MiniPickCursor",   { fg = red, bg = white })
vim.api.nvim_set_hl(0, "MiniPickInfo",     { fg = red, bg = black })
vim.api.nvim_set_hl(0, "MiniPickMatch",    { fg = red, bg = black, bold = true })
vim.api.nvim_set_hl(0, "MiniPickNormal",   { fg = red, bg = black })
vim.api.nvim_set_hl(0, "MiniPickPreviewLine", { fg = red, bg = "#0000ff" })
vim.api.nvim_set_hl(0, "MiniPickPreviewRegion", { fg = red, bg = "#aa0055", bold = true })
vim.api.nvim_set_hl(0, "MiniPickPrompt",   { fg = yellow1, bg = black })
vim.api.nvim_set_hl(0, "MiniPickSelection", { fg = white, bg = "#000000", bold = true })



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
