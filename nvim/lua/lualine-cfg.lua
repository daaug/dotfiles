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
}

local infrared = {
  normal = {
    a = { fg = colors.actual_red, bg = colors.black, gui = 'bold' },
    b = { fg = colors.white, bg = colors.red },
    c = { fg = colors.white, bg = colors.red },
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
    component_separators = '|',
    section_separators = { left = '', right = '' },
  },
  sections = {
    lualine_a = { 'mode' },
    lualine_b = { 'branch', 'filename' },
    lualine_c = {},
    lualine_x = {},
    lualine_y = {},
    lualine_z = { 'progress' },
  },
  inactive_sections = {
    lualine_a = {},
    lualine_b = { 'branch', 'filename' },
    lualine_c = {},
    lualine_x = {},
    lualine_y = {},
    lualine_z = { 'location' },
  },
  tabline = {},
  extensions = {},
}
