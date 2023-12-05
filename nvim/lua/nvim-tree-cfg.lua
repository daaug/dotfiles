require("nvim-tree").setup({
  sort_by = "case_sensitive",
  renderer = {
    icons = {
      git_placement = "after",
      show = {
        folder_arrow = true,
      },
      glyphs = {
        default = "-",
        symlink = "y",
        folder = {
          arrow_closed = ">",
          arrow_open = "v",
          default = " ",
          open = "v",
          empty = "z",
          empty_open = "Z",
          symlink = "y",
          symlink_open = "Y",
        },
        git = {
          unstaged = "uns",
          staged = "sta",
          unmerged = "unm",
          renamed = "ren",
          untracked = "unt",
          deleted = "del",
          ignored = "ign",
        },
      },
    },
  },
  filters = {
    dotfiles = true,
  },
})

