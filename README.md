# 🌙 LazyVim Setup

A **simple, clean, and fast Neovim configuration** built on top of [lazy.nvim](https://github.com/folke/lazy.nvim).
This setup is designed for **quick startup**, **zero hassle**, and a **blazing-fast developer experience** right out of the box.

## 📦 Features

* ⚡ **Quick & Lazy** – Fast startup using smart lazy-loading for every plugin.
* 📂 **Modern File Explorer** – Browse your system easily with [Oil.nvim](https://github.com/stevearc/oil.nvim).
* 🔍 **Instant Search** – Fuzzy file search and live grep with [Telescope](https://github.com/nvim-telescope/telescope.nvim).
* 🧠 **LSP Ready** – Autocompletion, go-to-definition, hover docs, and code actions built-in.
* 🧩 **Smart Project Detection** – Auto-detect project root using `.git`, `Makefile`, and more with [project.nvim](https://github.com/ahmedkhalf/project.nvim).
* 🎨 **Theme Switching** – Change themes on the fly with `:Theme <name>`.
* 🧱 **Smooth Window Navigation** – Easy splits, window movement, and buffer handling for max productivity.

---

## 🛠️ Installation

### 1. Requirements

- [Neovim ≥ 0.11](https://github.com/neovim/neovim/releases)
- Git
- Nerd Font (for icons)
- C compiler (for `treesitter`)
- LSP servers, linters, formatters managed via `mason.nvim`

### 2. Clone the Config

```bash
# Backup your current config if needed
mv ~/.config/nvim ~/.config/nvim.bak_$(date +%Y%m%d)

# Clone this config
git clone https://github.com/Mouriyavk/lazyNvim.git ~/.config/nvim
````

### 3. Open Neovim

```bash
nvim
```

Hit `Y` when prompted to install plugins and lazy.nvim. Initial setup will take a few seconds.

---

## 🎯 Keybindings Cheatsheet

### 🔍 Telescope – Fuzzy Finding

| Shortcut     | Action                          |
| ------------ | ------------------------------- |
| `<C-p>`      | Find files in current folder    |
| `<leader>fg` | Live grep (search inside files) |
| `<leader>fp` | Switch between your projects    |

---

### 📂 Oil.nvim – File Explorer

| Shortcut     | Action                                |
| ------------ | ------------------------------------- |
| `<C-n>`      | Open floating file explorer           |
| `-`          | Toggle file browser in current buffer |
| `<leader>bf` | Show list of open buffers (Neo-tree)  |

---

### 🧠 LSP

| Shortcut     | Action              |
| ------------ | ------------------- |
| `K`          | Hover documentation |
| `<leader>gd` | Go to definition    |
| `<leader>gr` | Show references     |
| `<leader>ca` | Code actions        |

---

### 🧱 Window Management

| Shortcut      | Action                    |
| ------------- | ------------------------- |
| `<leader>sh`  | Split window horizontally |
| `<leader>sv`  | Split window vertically   |
| `<leader>q`   | Close current window      |
| `<C-h/j/k/l>` | Navigate between windows  |
| `<leader>h`   | Remove search highlights  |

---

## 🧩 Project Detection with `project.nvim`

Automatically detects the project root using common patterns.

### 📌 Configuration:

```lua
require("project_nvim").setup({
  detection_methods = { "pattern", "lsp" },
  patterns = { ".git", "package.json", "Makefile", "README.md" },
  show_hidden = true,
})
```

### 🗃️ Usage:

* `<leader>fp` — Quickly switch between projects
* Automatically sets `cwd` to project root for better LSP, file navigation, and search accuracy

---

## 🎨 Changing Theme

```vim
:Theme <theme_name>
```

Try `tokyonight`, `catppuccin`, `gruvbox`, or any LazyVim-compatible theme.

---

## 🧠 Want to Customize?

* Add plugins in `lua/plugins/`
* Change Neovim options in `lua/vim-options.lua`

---

## ✅ First-Time Setup Checklist

* [ ] Run `:TSUpdate` to update treesitter
* [ ] Open `:Mason` to install LSPs, linters, formatters
* [ ] Customize `vim-options.lua`

---

## 💬 Feedback

Feel free to fork, star, and suggest improvements!

---

