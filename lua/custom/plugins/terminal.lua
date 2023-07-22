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

return {
	'akinsho/toggleterm.nvim',
	version = "*",
	opts = {
		shell = get_shell(),
		open_mapping = [[<c-t>]],
	}
}
