local M = {}
function M.python_main()
	-- sets up module description
	vim.api.nvim_feedkeys('ggO"""\13Module Description\13\8"""\27\27', "n", false)
	-- make the main method.
	vim.api.nvim_feedkeys(
		'Goif __name__=="__main__":\27omain()\27\27jOdef main():\13"""\13function docstring\13\8"""\27\27o',
		"n",
		false
	)
end
return M
