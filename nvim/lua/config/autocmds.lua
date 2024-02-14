vim.cmd([[
  autocmd BufNewFile,BufRead *.mo setlocal filetype=motoko
]])

vim.g.astro_typescript = "enable"

require('dap.ext.vscode').load_launchjs(nil, {})
