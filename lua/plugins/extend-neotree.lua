return {
  "nvim-neo-tree/neo-tree.nvim",
  keys = {
    {
      "<leader>e",
      function()
        require("neo-tree.command").execute({
          toggle = true,
          dir = vim.fn.getcwd(),
        })
      end,
      desc = "Open NeoTree (current working directory)",
    },
    {
      "<leader>E",
      function()
        require("neo-tree.command").execute({
          toggle = true,
          dir = vim.fn.getenv("HOME"), -- Replace this with your root directory path if needed
        })
      end,
      desc = "Open NeoTree (root directory)",
    },
  },
}
