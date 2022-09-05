vim.api.nvim_create_autocmd({ 'VimEnter' }, {
  callback = require('mason-installer').run_on_start,
})
vim.api.nvim_create_user_command('MasonUpdate', function()
  require('mason-installer').check_install(true)
end, { force = true })
vim.api.nvim_create_user_command('MasonInstall', function()
  require('mason-installer').check_install(true)
end, { force = true })
