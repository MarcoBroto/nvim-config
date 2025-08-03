vim.lsp.config('luals', {
  cmd = {'lua-language-server'},
  filetypes = {'lua'},
  root_markers = {'.luarc.json', '.luarc.jsonc'},
})

vim.lsp.enable('luals')
vim.lsp.enable('lua_lsp')
vim.lsp.enable('py_lsp')
vim.lsp.enable('java_lsp')
vim.lsp.enable('js_lsp')
vim.lsp.enable('ts_lsp')
vim.lsp.enable('c_lsp')
vim.lsp.enable('cpp_lsp')
vim.lsp.enable('rust_lsp')

-- Return lazy.nvim spec
return {

}
