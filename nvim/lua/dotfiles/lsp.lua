-- General Config
vim.lsp.config("*", {
    root_markers = { ".git" }
})
vim.lsp.inlay_hint.enable(not vim.lsp.inlay_hint.is_enabled())

vim.diagnostic.config({
    virtual_text = true,
    signs = true
})

-- Clangd Config
vim.lsp.config.clangd = {
    cmd = { "clangd" },
    root_markers = { ".clangd", "CMakeLists.txt" },
    filetypes = { "c", "cpp" },
}
vim.lsp.enable("clangd")

-- Lua Config
vim.lsp.config.luals = {
    cmd = { "lua-language-server" },
    filetypes = { "lua" },
}
vim.lsp.enable("luals")
