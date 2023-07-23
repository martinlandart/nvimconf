local prefered_shell_order = {
	"fish",
	"zsh",
	"bash",
}

local function get_shell()
	local function is_executable(cmd)
		if vim.fn.executable(cmd) == 1 then
			return cmd
		end
	end

	for _, shell in ipairs(prefered_shell_order) do
		if is_executable(shell) then
			return shell
		end
	end
end

function _G.set_terminal_keymaps()
	local opts = { buffer = 0 }
	vim.keymap.set('t', '<esc>', [[<C-\><C-n>]], opts)
	vim.keymap.set('t', 'jk', [[<C-\><C-n>]], opts)
	vim.keymap.set('t', '<C-h>', [[<Cmd>wincmd h<CR>]], opts)
	vim.keymap.set('t', '<C-j>', [[<Cmd>wincmd j<CR>]], opts)
	vim.keymap.set('t', '<C-k>', [[<Cmd>wincmd k<CR>]], opts)
	vim.keymap.set('t', '<C-l>', [[<Cmd>wincmd l<CR>]], opts)
	vim.keymap.set('t', '<C-w>', [[<C-\><C-n><C-w>]], opts)
end

-- if you only want these mappings for toggle term use term://*toggleterm#* instead
vim.cmd('autocmd! TermOpen term://* lua set_terminal_keymaps()')

return {
	'akinsho/toggleterm.nvim',
	version = "*",
	opts = {
		shell = get_shell(),
		open_mapping = [[<c-t>]],
		-- direction = 'float',
	}
}
