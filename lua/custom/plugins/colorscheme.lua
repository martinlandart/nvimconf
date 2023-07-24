-- return {
-- 	"catppuccin/nvim",
-- 	name = "catppuccin",
-- 	priority = 1000,
-- 	config = function()
-- 		vim.cmd.colorscheme 'catppuccin'
-- 		require("catppuccin").setup {
-- 			flavour = "mocha"
-- 		}
-- 	end,
-- }
--
return {
	"mcchrish/zenbones.nvim",
	-- Optionally install Lush. Allows for more configuration or extending the colorscheme
	-- If you don't want to install lush, make sure to set g:zenbones_compat = 1
	-- In Vim, compat mode is turned on as Lush only works in Neovim.
	dependencies = { "rktjmp/lush.nvim" },
	config = function()
		vim.cmd.colorscheme 'zenbones'
	end,
}
