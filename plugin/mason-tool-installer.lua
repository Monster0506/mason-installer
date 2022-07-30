vim.api.nvim_create_autocmd(
    {"VimEnter"},
    {
        callback = require("mason-installer").run_on_start
    }
)

vim.api.nvim_create_user_command(
    "MasonToolsUpdate",
    function()
        require("mason-installer").check_install(true)
    end,
    {force = true}
)
