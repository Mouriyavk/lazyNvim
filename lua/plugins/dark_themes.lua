return {
  -- 🎨 All the ultra-dark themes
  { "folke/tokyonight.nvim", lazy = true },
  { "catppuccin/nvim", name = "catppuccin", lazy = true },
  { "rose-pine/neovim", name = "rose-pine", lazy = true },
  { "EdenEast/nightfox.nvim", lazy = true },
  { "nyoom-engineering/oxocarbon.nvim", lazy = true },
  { "projekt0n/github-nvim-theme", lazy = true },

  -- 🧠 Theme switcher logic
  {
    "nvim-lua/plenary.nvim", -- just in case, for future-proof utility
    lazy = false,
    config = function()
      local themes = {
        "tokyonight-night",
        "catppuccin-mocha",
        "rose-pine-main",
        "carbonfox",
        "oxocarbon",
        "github_dark_dimmed",
      }

      local function switch_theme(name)
        if not name or name == "" then
          print("⚠️  Provide a theme name. Options: " .. table.concat(themes, ", "))
          return
        end
        local ok, err = pcall(vim.cmd.colorscheme, name)
        if not ok then
          print("❌ Theme '" .. name .. "' failed: " .. err)
        else
          print("✅ Switched to theme: " .. name)
        end
      end

      vim.api.nvim_create_user_command("Theme", function(opts)
        switch_theme(opts.args)
      end, {
        nargs = 1,
        complete = function()
          return themes
        end,
      })
    end,
  },
}

