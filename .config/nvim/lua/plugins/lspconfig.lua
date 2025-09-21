return {
  "neovim/nvim-lspconfig",
  opts = function()
    local keys = require("lazyvim.plugins.lsp.keymaps").get()
    keys[#keys + 1] = { "gy", false }
    keys[#keys + 1] = { "<leader>cc", false }
  end,
}
