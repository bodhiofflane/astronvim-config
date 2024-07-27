-- if true then return {} end -- WARN: REMOVE THIS LINE TO ACTIVATE THIS FILE

-- Customize Treesitter

---@type LazySpec
return {
  "nvim-treesitter/nvim-treesitter",
  opts = {
    ensure_installed = {
      "lua",
      "vim",
      "markdown",
      "yaml",
      "toml",
      "json",
      "jsonc",
      "javascript",
      "typescript",
      "tsx",
      "sql",
      "prisma",
      "html",
      "css",
      "scss",
    },
  },
}
