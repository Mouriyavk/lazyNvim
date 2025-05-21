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
        "tsserver",        -- JavaScript / TypeScript
        "html",            -- HTML
        "lua_ls",          -- Lua
        "pyright",         -- Python
        "rust_analyzer",   -- Rust
        "clangd",          -- C / C++
        "jdtls",           -- Java
        -- Add more if needed
      },
      automatic_installation = true, -- optional but useful fallback
    },
  },
  {
    "neovim/nvim-lspconfig",
    lazy = false,
    config = function()
      local capabilities = require("cmp_nvim_lsp").default_capabilities()
      local lspconfig = require("lspconfig")

      local servers = {
        "tsserver",
        "html",
        "lua_ls",
        "pyright",
        "rust_analyzer",
        "clangd",
        "jdtls",
      }

      for _, server in ipairs(servers) do
        lspconfig[server].setup({
          capabilities = capabilities,
        })
      end

      -- Global LSP keybindings
      vim.keymap.set("n", "K", vim.lsp.buf.hover, {})
      vim.keymap.set("n", "<leader>gd", vim.lsp.buf.definition, {})
      vim.keymap.set("n", "<leader>gr", vim.lsp.buf.references, {})
      vim.keymap.set("n", "<leader>ca", vim.lsp.buf.code_action, {})
    end,
  },
}


