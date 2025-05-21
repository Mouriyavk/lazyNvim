return {
  {
    "nvim-telescope/telescope-ui-select.nvim",
  },
  {
    "nvim-telescope/telescope.nvim",
    tag = "0.1.5",
    dependencies = {
      "nvim-lua/plenary.nvim",
      "ahmedkhalf/project.nvim", -- Added project.nvim as dependency
    },
    config = function()
      -- Set up project.nvim
      require("project_nvim").setup({
        detection_methods = { "pattern", "lsp" },
        patterns = { ".git", "package.json", "Makefile", "README.md" },
        show_hidden = true,
      })

      require("telescope").setup({
        extensions = {
          ["ui-select"] = {
            require("telescope.themes").get_dropdown({}),
          },
        },
      })

      -- Load Telescope extensions
      require("telescope").load_extension("ui-select")
      require("telescope").load_extension("projects")

      -- Keymaps
      local builtin = require("telescope.builtin")
      vim.keymap.set("n", "<C-p>", builtin.find_files, {})
      vim.keymap.set("n", "<leader>fg", builtin.live_grep, {})
      vim.keymap.set("n", "<leader>fp", "<cmd>Telescope projects<CR>", { noremap = true, silent = true })
    end,
  },
}

