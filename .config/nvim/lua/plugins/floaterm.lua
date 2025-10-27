return {
  "nvzone/floaterm",
  dependencies = "nvzone/volt",
  opts = {
    border = true,
    mappings = {
      term = function(buf)
        vim.keymap.set({ "n", "t" }, "<F1>", function()
          require("floaterm").toggle()
        end, { buffer = buf })
        vim.keymap.set({ "n", "t" }, "<F2>", function()
          require("floaterm.api").cycle_term_bufs("prev")
        end, { buffer = buf })
        vim.keymap.set({ "n", "t" }, "<F3>", function()
          require("floaterm.api").cycle_term_bufs("next")
        end, { buffer = buf })
        vim.keymap.set({ "n", "t" }, "<F4>", function()
          require("floaterm.api").new_term()
        end, { buffer = buf })
      end,
    },
  },
  cmd = "FloatermToggle",
  keys = {
    {
      "<F1>",
      function()
        require("floaterm").toggle()
      end,
      desc = "Toggle Floaterm",
    },
  },
}
