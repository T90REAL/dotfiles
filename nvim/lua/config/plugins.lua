local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

require("lazy").setup({
	require("config.plugins.colorsheme"),
	require("config.plugins.surround"),
	require("config.plugins.flash"),
	require("config.plugins.scroll"),
	require("config.plugins.wildfire"),
	require("config.plugins.telescope"),
	require("config.plugins.tabline"),
	require("config.plugins.luasnip"),
	require("config.plugins.Comment"),
	require("config.plugins.autocomplete"),
	-- require("config.plugins.indent"),
	require("config.plugins.MarkdownPreview"),
	require("config.plugins.treesitter"),
	require("config.plugins.lualine"),
	require("config.plugins.multi-cursor"),
	require("config.plugins.nvim-tree"),
	require("config.plugins.dropbar"),
    require("config.plugins.lsplsp"),
	require("config.plugins.trouble"),
	require("config.plugins.cmp"),
}, {})
