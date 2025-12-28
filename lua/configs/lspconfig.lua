
-- ~/.config/nvim/lua/configs/lspconfig.lua
local on_attach = require("nvchad.configs.lspconfig").on_attach
local on_init = require("nvchad.configs.lspconfig").on_init
local capabilities = require("nvchad.configs.lspconfig").capabilities

-- Existing servers
local servers = { "html", "cssls", "ts_ls", "rust_analyzer", "clangd", "cmake" }

-- Optional: per-server customizations
-- Rust (rust_analyzer)
vim.lsp.config("rust_analyzer", {
  on_init = on_init,
  on_attach = on_attach,
  capabilities = capabilities,
  settings = {
    ["rust-analyzer"] = {
      check = { command = "clippy" }, -- run clippy for diagnostics
      cargo = { targetDir = true },
      inlayHints = {
        bindingModeHints = { enabled = true },
        closureReturnTypeHints = { enable = "always" },
        maxLength = 100,
      },
    },
  },
})

-- C/C++ (clangd)
vim.lsp.config("clangd", {
  on_init = on_init,
  on_attach = on_attach,
  capabilities = capabilities,
  cmd = { "clangd", "--compile-commands-dir=build" },
  -- You can pass extra flags if you need them:
  -- cmd = { "clangd", "--background-index", "--clang-tidy", "--offset-encoding=utf-8" },
  -- root markers help clangd find your project (compile_commands.json/compile_flags.txt)
  root_markers = { ".clangd", "compile_commands.json", "compile_flags.txt" },
  -- filetypes are provided by lspconfig defaults; set explicitly if you like:
  -- filetypes = { "c", "cpp", "objc", "objcpp" },
})

-- Enable all servers
for _, server_name in ipairs(servers) do
  -- Merge NvChad defaults into any existing server config (if you prefer this pattern)
  local config = vim.lsp.config[server_name]
  vim.lsp.config[server_name] = vim.tbl_deep_extend("force", config or {}, {
    on_init = on_init,
    on_attach = on_attach,
    capabilities = capabilities,
  })
  vim.lsp.enable(server_name)
end

-- Tip: :h vim.lsp.config for all available options

