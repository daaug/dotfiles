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

--vim.api.nvim_create_autocmd("BufWritePost", {
--  pattern = "*.ly",
--  callback = function()
--		vim.fn.system("lilypond --pdf " .. vim.fn.shellescape(vim.fn.expand("%:p")))
--  end,
--})

-- Create an augroup to prevent duplicate autocommands when reloading config
local autocmd_compileLy = vim.api.nvim_create_augroup("CompileLyOnSave", { clear = true })

vim.api.nvim_create_autocmd("BufWritePost", {
  pattern = "*.ly",
  group = autocmd_compileLy,
  callback = function()
	local file_path = vim.fn.expand("%:p")
	local output_dir = vim.fn.expand("%:p:h")
	
	vim.fn.jobstart({"lilypond", "--pdf", "-o", output_dir, file_path}, {
		on_exit = function (_, exit_code)
			if exit_code == 0 then
				vim.api.nvim_echo({{"✓ LilyPond compilation successfull!", "DiagnosticOk"}}, table, {})
			else
				vim.api.nvim_echo({{"❌ LilyPond compilation failed.", "DiagnosticError"}}, table, {})
			end
		end
	})
  end,
})

