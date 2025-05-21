return {
  {
    "williamboman/mason.nvim",
    lazy = false,
    config = function()
      require("mason").setup()
    end,
  },
  {
    "williamboman/mason-lspconfig.nvim",
    lazy = false,
    opts = {
      ensure_installed = {
        "ts_ls",           -- Updated TypeScript/JavaScript LSP (replaces tsserver)
        "html",
        "lua_ls",
        "pyright",
        "rust_analyzer",
        "clangd",
        "jdtls",
        -- Add more if needed
      },
      automatic_installation = true,
    },
  },
  {
    "neovim/nvim-lspconfig",
    lazy = false,
    config = function()
      local capabilities = require("cmp_nvim_lsp").default_capabilities()
      local lspconfig = require("lspconfig")

      local servers = {
        "ts_ls",          -- updated here too
        "html",
        "lua_ls",
        "pyright",
        "rust_analyzer",
        "clangd",
        "jdtls",
      }

      for _, server in ipairs(servers) do
        local opts = {
          capabilities = capabilities,
        }

        if server == "lua_ls" then
          opts.settings = {
            Lua = {
              diagnostics = {
                globals = { "vim" },
              },
              workspace = {
                library = vim.api.nvim_get_runtime_file("", true),
                checkThirdParty = false,
              },
            },
          }
          opts.root_dir = require("lspconfig.util").root_pattern(".git", ".luarc.json", "init.lua")
        end

        lspconfig[server].setup(opts)
      end

      vim.keymap.set("n", "K", vim.lsp.buf.hover, { desc = "LSP Hover Documentation" })
      vim.keymap.set("n", "<leader>gd", vim.lsp.buf.definition, { desc = "Go to Definition" })
      vim.keymap.set("n", "<leader>gr", vim.lsp.buf.references, { desc = "Show References" })
      vim.keymap.set("n", "<leader>ca", vim.lsp.buf.code_action, { desc = "Code Actions" })
    end,
  },
}


