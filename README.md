# 🧭 Neovim File Navigation & Fuzzy Finder Setup

This setup makes it super easy to find files, search inside them, switch projects, and browse your file system — all inside **Neovim**.

It uses **Telescope** for fuzzy finding and **Oil.nvim** for a simple, floating file explorer. Everything is designed to help you move faster and stay focused. 🚀

---

## 🔑 Key Bindings

### 📡 Telescope (Search Tool)

| Keybinding       | What it does                      |
|------------------|-----------------------------------|
| `<C-p>`          | Find files in your current folder |
| `<leader>fg`     | Search text inside files          |
| `<leader>fp`     | Jump between your projects        |

### 🗂️ Oil.nvim (File Explorer)

| Keybinding       | What it does                              |
|------------------|-------------------------------------------|
| `<C-n>`          | Open a floating file explorer             |
| `<leader>bf`     | Show list of open buffers (Neo-tree)      |
| `-`              | Toggle Oil file browser in floating mode  |

> 💡 With **Oil.nvim**, you can open and explore any folder on your system — not just where you're currently working.

---

## 🎨 Changing Themes

To change the color theme in Neovim, just type this:

```vim
:Theme <theme_name>
