-- Customize Mason plugins

---@type LazySpec
return {
  -- use mason-lspconfig to configure LSP installations
  {
    "williamboman/mason-lspconfig.nvim",
    -- overrides `require("mason-lspconfig").setup(...)`
    opts = {
      ensure_installed = {
        "lua_ls",
        "jsonls",
        "tsserver",
        "sqlls",
        "prismals",
        "html",
        "cssls",
        -- "tailwindcss",
        "emmet_language_server",
      },
    },
  },
  -- use mason-null-ls to configure Formatters/Linter installation for null-ls sources
  {
    "jay-babu/mason-null-ls.nvim",
    -- overrides `require("mason-null-ls").setup(...)`
    opts = {
      ensure_installed = {
        -- Этот Eslint от мягких запускатся как отдельный LSP-сервер и проводит диагностику автоматически. Т.е. его не нужно подключить через none-ls. (Либо на буффере будет два анализатора)
        -- Также он не вызывает ошибок если в раб.дир. нет конфига.
        "eslint",
        "stylua",
        -- "eslint_d",
        "prettierd",
        -- add more arguments for adding more null-ls sources
      },
    },
  },
  -- {
  --   "jay-babu/mason-nvim-dap.nvim",
  --   -- overrides `require("mason-nvim-dap").setup(...)`
  --   opts = {
  --     ensure_installed = {
  --
  --     },
  --   },
  -- },
}
