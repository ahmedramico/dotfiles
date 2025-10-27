return {
  "nvim-telescope/telescope.nvim",
  lazy = false,
  opts = {
    defaults = {
      layout_strategy = "horizontal",
      layout_config = { prompt_position = "top" },
      sorting_strategy = "ascending",
      winblend = 0,
    },
  },
  keys = {
    { "<leader>ff", "<cmd>Telescope find_files<cr>", desc = "Find Files" },
    { "<leader>cs", "<cmd>Telescope colorscheme<cr>", desc = "Change colorscheme" },
    {
      "<leader>fp",
      function()
        require("telescope.builtin").find_files({ cwd = require("lazy.core.config").options.root })
      end,
      desc = "Find Plugin File",
    },
    {
      "<leader>ft",
      "<cmd>Telescope filetypes<cr>",
      desc = "File types",
    },
  },
}
