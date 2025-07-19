local status_ok, mason = pcall(require, "mason")
if not status_ok then
    return
end

local servers = {
    "cssls",         -- Css
    "gopls",         -- Golang
    "clangd",        -- C++/C
    "pyright",       -- Python
    -- "tsserver", -- Typescript/Javascript (tsserver is deprecated)
    "ts_ls",         -- New ts server
    "biome",
    "jsonls",        -- Json
    "html",          -- Html
    "lua_ls",        -- Lua
    -- "sumneko_lua",
    "rust_analyzer", -- Rust
    "bashls",        -- Bash
    "taplo",         -- TOML
    "lemminx",       -- XML
    "yamlls",        -- YAML
    "dockerls",      -- Docker
    "hyprls",
    -- "grammarly", -- Grammarly
}

mason.setup()

local mason_lspconfig = require("mason-lspconfig")

mason_lspconfig.setup({
    ensure_installed = servers,
    automatic_installation = true,
    automatic_enable = true,
    ui = {
        check_outdated_servers_on_open = true,
        icons = {
            server_installed = "✓",
            server_pending = "➜",
            server_uninstalled = "✗",
        },
    },
})

local lspconfig = require("lspconfig")

-- https://github.com/neovim/nvim-lspconfig/blob/master/doc/server_configurations.md
-- :help lspconfig-all
for _, server in pairs(servers) do
    local opts = {
        on_attach = require("user.plugin_config.lsp.handlers").on_attach,
        capabilities = require("user.plugin_config.lsp.handlers").capabilities,
    }
    local has_custom_opts, server_custom_opts = pcall(require, "user.plugin_config.lsp.settings." .. server)
    if has_custom_opts then
        opts = vim.tbl_deep_extend("force", opts, server_custom_opts)
    end
    lspconfig[server].setup(opts)
end
