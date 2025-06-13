# 🧭 Neovim File Navigation & Fuzzy Finder Setup

This setup makes it super easy to find files, search inside them, switch projects, and browse your file system — all inside Neovim.

It uses **Telescope** for fuzzy finding, **Oil.nvim** for a simple floating file explorer, and **project.nvim** for automatic project root detection. Everything is designed to help you move faster and stay focused. 🚀

---

## 🔑 Key Bindings

### 📡 Telescope (Search Tool)

| Keybinding   | What it does                      |
| ------------ | --------------------------------- |
| `<C-p>`      | Find files in your current folder |
| `<leader>fg` | Search text inside files          |
| `<leader>fp` | Jump between your projects        |

---

### 🗂️ Oil.nvim (File Explorer)

| Keybinding   | What it does                             |
| ------------ | ---------------------------------------- |
| `<C-n>`      | Open a floating file explorer            |
| `-`          | Toggle Oil file browser in floating mode |
| `<leader>bf` | Show list of open buffers (Neo-tree)     |

💡 With Oil.nvim, you can open and explore any folder on your system — not just where you're currently working.

---

### 🧠 LSP (Language Server Protocol)

| Keybinding   | What it does        |
| ------------ | ------------------- |
| `K`          | Hover documentation |
| `<leader>gd` | Go to definition    |
| `<leader>gr` | Show references     |
| `<leader>ca` | Code actions        |

---

### 🧱 Window Management

| Keybinding   | What it does             |
| ------------ | ------------------------ |
| `<leader>sh` | Horizontal split         |
| `<leader>sv` | Vertical split           |
| `<leader>q`  | Close current split      |
| `<C-h>`      | Move to the left window  |
| `<C-l>`      | Move to the right window |
| `<C-j>`      | Move to the window below |
| `<C-k>`      | Move to the window above |
| `<leader>h`  | Remove search highlights |


## 🧩 Project Detection with `project.nvim`

Neovim automatically detects your project root using **project.nvim** and integrates seamlessly with Telescope.

To **enable project detection**, make sure you configure `project_nvim` with:

* `patterns = { ".git", "package.json", "Makefile", "README.md" }`

This tells Neovim how to recognize a folder as a "project".

### 💼 Usage:

* You can **view and switch between your projects** using:

  **`<leader>fp` → Jump between your projects**

This makes project hopping blazing fast — no more manually setting directories or using clunky file trees.

* Automatically sets your working directory based on project root.
* Supports `.git`, `package.json`, `Makefile`, `README.md` as project indicators.
* Works with LSP fallback if no patterns are found.

---

## 🎨 Changing Themes

To change the color theme in Neovim, just type:

```vim
:Theme <theme_name>
```

---
