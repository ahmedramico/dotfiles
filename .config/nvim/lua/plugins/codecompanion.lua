return {
  "olimorris/codecompanion.nvim",
  lazy = false,
  opts = {
    adapters = {
      http = {
        gptoss = function()
          return require("codecompanion.adapters").extend("ollama", {
            name = "gpt-oss",
            opts = {
              vision = false,
              stream = true,
            },
            schema = {
              model = {
                default = "gpt-oss:latest",
              },
              num_ctx = {
                default = 16384,
              },
              think = {
                default = false,
              },
              keep_alive = {
                default = "5m",
              },
            },
          })
        end,
      },
    },
    strategies = {
      chat = {
        adapter = "gptoss",
      },
      inline = {
        adapter = "gptoss",
      },
    },
    prompt_library = {
      ["Boilerplate HTML"] = {
        strategy = "inline",
        description = "Generate some boilerplate HTML",
        opts = {
          mapping = "<LocalLeader>ch",
        },
        prompts = {
          {
            role = "system",
            content = "You are an expert HTML programmer",
          },
          {
            role = "user",
            content = "<user_prompt>Please generate some HTML boilerplate for me. Return the code only and no markdown codeblocks</user_prompt>",
          },
        },
      },
    },
  },
  dependencies = {
    "nvim-lua/plenary.nvim",
    "ravitemer/mcphub.nvim",
  },
  keys = {
    { "<leader>ccc", "<cmd>CodeCompanionChat<cr>", desc = "CodeCompanion Chat" },
    { "<leader>cci", "<cmd>CodeCompanion<cr>", desc = "CodeCompanion inline assistant", mode = { "n", "v" } },
    { "<leader>cca", "<cmd>CodeCompanionActions<cr>", desc = "CodeCompanion actions" },
  },
}
