if true then return {} end -- WARN: REMOVE THIS LINE TO ACTIVATE THIS FILE

-- AstroCommunity: import any community modules here
-- We import this file in `lazy_setup.lua` before the `plugins/` folder.
-- This guarantees that the specs are processed before any user plugins.

---@type LazySpec
return {
  "AstroNvim/astrocommunity",
  -- Language plugins
  { import = "astrocommunity.pack.lua" },
  { import = "astrocommunity.pack.python-ruff"},
  { import = "astrocommunity.pack.hyprlang"},
  { import = "astrocommunity.pack.quarto"},
  { import = "astrocommunity.pack.bash"},
  { import = "astrocommunity.pack.docker"},
  { import = "astrocommunity.pack.sql"},

  -- Colorscheme
  { import = "astrocommunity.colorscheme.tokyonight-nvim"}
}
