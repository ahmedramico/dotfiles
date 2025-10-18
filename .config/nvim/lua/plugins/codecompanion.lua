return {
  "olimorris/codecompanion.nvim",
  lazy = false,
  opts = {
    strategies = {
      chat = {
        adapter = {
          name = "ollama",
          model = "gpt-oss:latest",
        },
      },
      inline = {
        adapter = {
          name = "ollama",
          model = "gpt-oss:latest",
        },
      },
    },
    prompt_library = {
      ["Boilerplate HTML"] = {
        strategy = "inline",
        description = "Generate some boilerplate HTML",
        opts = {},
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
    extensions = {
      mcphub = {
        callback = "mcphub.extensions.codecompanion",
        opts = {
          make_vars = true,
          make_slash_commands = true,
          show_result_in_chat = true,
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
