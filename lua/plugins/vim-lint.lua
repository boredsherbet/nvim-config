--luacheck: globals vim
return { -- Linting
	"mfussenegger/nvim-lint",
	event = { "BufReadPre", "BufNewFile" },
	config = function()
		local lint = require("lint")
		lint.linters_by_ft = {
			python = { "pylint" }, -- Python: Pylint
			java = { "checkstyle" }, -- Java: Checkstyle
			c = { "clangtidy", "cppcheck" }, -- C: clang-tidy, cppcheck
			cpp = { "clangtidy", "cppcheck" }, -- C++: clang-tidy, cppcheck
			-- rust = { "clippy" }, -- Rust: Clippy
			sh = { "shellcheck" }, -- Bash/Shell: ShellCheck
			html = { "htmlhint" }, -- HTML: htmlhint
			css = { "stylelint" }, -- CSS: stylelint
			javascript = { "eslint" }, -- JavaScript: ESLint
			-- linter for lua is already taken care of by lazy...
		}
		-- Create autocommand which carries out the actual linting
		-- on the specified events.
		local lint_augroup = vim.api.nvim_create_augroup("lint", { clear = true })
		vim.api.nvim_create_autocmd({ "BufEnter", "BufWritePost", "InsertLeave" }, {
			group = lint_augroup,
			callback = function()
				lint.try_lint()
			end,
		})
		-- Setup floating window for diagnostic messages
		vim.diagnostic.config({
			virtual_text = false, -- Disable inline text to keep things clean
			float = {
				source = true, -- Show source in diagnostics floating window
				border = "rounded", -- Rounded border for floating window
			},
		})

		-- Set keybindings to open the floating window for diagnostics
		vim.api.nvim_set_keymap(
			"n",
			"<leader>e",
			"<cmd>lua vim.diagnostic.open_float(nil, { focusable = false })<CR>",
			{ noremap = true, silent = true }
		)
	end,
}
