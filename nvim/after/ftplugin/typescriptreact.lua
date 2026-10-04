-- false == Use real tabs instead of spaces
vim.o.expandtab = true
-- A tab will display as N spaces wide when viewing files
vim.o.tabstop = 2
-- Controls how many spaces (or columns) to indent when using >> or auto-indent
vim.o.shiftwidth = 2
-- Defines how many spaces <Tab> and <Backspace> count for during editing
vim.o.softtabstop = 2 -- With this, pressing <Tab> feels like inserting 4 spaces even though it’s a tab character (since expandtab = false).
-- Automatically copies the indentation of the current line
vim.o.autoindent = true
-- Adds an extra indent after certain keywords like {, (, or if, based on simple syntax rules (mostly for C-like languages).
vim.o.smartindent = true

-- Prevents tags like </element> from forcefully pushing the next line out
vim.opt_local.indentkeys:remove("</>")
vim.opt_local.indentkeys:remove("<>")
