-- Bubbles config for lualine
-- Author: lokesh-krishna
-- MIT license, see LICENSE for more details.

-- stylua: ignore
local colors = {
  actual_red = '#ff0000',
  blue   = '#80a0ff',
  cyan   = '#79dac8',
  black  = '#000000',
  white  = '#c6c6c6',
  red    = '#aa0000',
  violet = '#d183e8',
  grey   = '#707070',
  orange   = '#f9a602',
}

local currAccent = colors.orange;

local infrared = {
  normal = {
    a = { fg = currAccent, bg = colors.black, gui = 'bold' },
    b = { fg = colors.black, bg = colors.white },
    c = { fg = colors.black, bg = currAccent },
  },

  insert = { a = { fg = colors.black, bg = colors.actual_red, gui = 'bold' } },
  visual = { a = { fg = colors.black, bg = colors.cyan, gui = 'bold' } },
  replace = { a = { fg = colors.black, bg = colors.yellow, gui = 'bold' } },

  inactive = {
    a = { fg = colors.white, bg = colors.black },
    b = { fg = colors.black, bg = colors.grey },
    c = { fg = colors.black, bg = colors.grey },
  },
}

require('lualine').setup {
  options = {
    theme = infrared,
    component_separators = '┃',
    section_separators = { left = '' },
  },
  -- path = num
  -- 0: Just the filename
  -- 1: Relative path
  -- 2: Absolute path
  -- 3: Absolute path, with tilde as the home directory
  -- 4: Filename and parent dir, with tilde as the home directory
  sections = {
    lualine_a = { 'mode' },
    lualine_b = { 'branch', },
    lualine_c = {{'filename', path = 1},},
    lualine_x = {},
    lualine_y = {},
    lualine_z = { 'progress' },
  },
  inactive_sections = {
    lualine_a = {},
    lualine_b = { 'branch', },
    lualine_c = {{'filename', path = 1},},
    lualine_x = {},
    lualine_y = {},
    lualine_z = { 'location' },
  },
  tabline = {},
  extensions = {},
}
