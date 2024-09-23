local M = {}
function M.python_main()
	-- sets up module description
	vim.api.nvim_feedkeys("", "n", false)
	-- make the main method.
	vim.api.nvim_feedkeys(
		'Goif __name__=="__main__":\13main()\13\13def main():\13"""\13function docstring\13\8"""\27\27o',
		"n",
		false
	)
end
return M
