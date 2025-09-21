return {
  "akinsho/bufferline.nvim",
  keys = function(_, keys)
    table.insert(keys, { "<leader>bb", "<cmd>BufferLinePick<cr>" })
  end,
}
