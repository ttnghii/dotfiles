vim.cmd("let g:netrw_liststyle = 3")

-- Shortcut
local opt = vim.opt

-- Line numbers
opt.relativenumber = true -- show relative line numbers
opt.number = true -- show absolute linie number on cursor line (when relative number is on)

-- Tabs and indentation
opt.tabstop = 2 -- 2 spaces for tabs
opt.shiftwidth = 2 -- 2 spaces for indent width
opt.expandtab = true -- expand tab to spaces
opt.autoindent = true -- copy indent from current line when starting new one

-- Line wrapping
opt.wrap = false -- disable line wrapping

-- Search settings
opt.ignorecase = true -- ignore case when searching
opt.smartcase = true -- if you include mixed case in your search, assumes you want case-sensitive

-- Cursor line
opt.cursorline = true -- highlight the current cursor line

-- Apperance
opt.termguicolors = true
opt.background = "dark" -- colorschemes that can be light or dark will be made dark
opt.signcolumn = "yes" -- show sign column so that text doesn't shift

-- Backspace
opt.backspace = "indent,eol,start" -- allow backspace on indent, end of line or insert mode start position

-- Clipboard
-- opt.clipboard:append("unnameplus") -- use sys clipboard as default register

-- Split window
opt.splitright = true -- for vertical window
opt.splitbelow = true -- for horizontal window

-- Turn off swapfile
opt.swapfile = false

