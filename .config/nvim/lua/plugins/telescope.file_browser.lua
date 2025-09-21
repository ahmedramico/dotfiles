return {
  "nvim-telescope/telescope-file-browser.nvim",
  dependencies = { "nvim-telescope/telescope.nvim", "nvim-lua/plenary.nvim" },
  lazy = false,
  keys = {
    {
      "<leader>fe",
      "<cmd>Telescope file_browser hidden=true<cr>",
      desc = "File browser",
    },
    {
      "<leader>cfe",
      "<cmd>Telescope file_browser hidden=true cwd=%:p:h<cr>",
      desc = "File browser (CWD)",
    },
  },
  config = function()
    require("telescope").load_extension("file_browser")
  end,
}
