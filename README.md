# mason-installer

Install or upgrade all of your third-party tools.

Can run at startup or may be run manually via a command (see the [Configuration](#configuration) section below).

Uses [Mason](https://github.com/williamboman/mason.nvim) to do nearly all the work. This is a simple plugin that
helps users keep up-to-date with their tools and to make certain they have a consistent environment.

## Requirements

This plugin has the same requirements as [Mason](https://github.com/williamboman/mason.nvim). And, of course,
this plugin requires that Mason be installed.

## Installation

Install using your favorite plugin manager.

If you use vim-plug:

```vim
Plug 'monster0506/mason-installer'
```

Or if you use Vim 8 style packages:

```bash
cd <plugin dir>
git clone https://github.com/monster0506/mason-installer
```

## Configuration

```lua
require'mason-installer'.setup {

    -- a list of all tools you want to ensure are installed upon
    -- start; they should be the names Mason uses for each tool
    ensure_installed = {

        -- you can pin a tool to a particular version
        { 'golangci-lint', version = '1.47.0' },

        -- you can turn off/on auto_update per tool
        { 'bash-language-server', auto_update = false },

        'lua-language-server',
        'vim-language-server',
        'gopls',
        'stylua',
        'shellcheck',
        'editorconfig-checker',
        'gofumpt',
        'golines',
        'gomodifytags',
        'gotests',
        'impl',
        'json-to-struct',
        'luacheck',
        'misspell',
        'revive',
        'shellcheck',
        'shfmt',
        'staticcheck',
        'vint',
    },

    -- if set to true this will check each tool for updates. If updates
    -- are available the tool will be updated. This setting does not
    -- affect :MasonToolsUpdate or :MasonToolsInstall.
    -- Default: false
    auto_update =true,

    -- automatically install / update on startup. If set to false nothing
    -- will happen on startup. You can use :MasonToolsInstall or
    -- :MasonToolsUpdate to install tools and check for updates.
    -- Default: true
    run_on_start = true

    -- set a delay (in ms) before the installation starts. This is only
    -- effective if run_on_start is set to true.
    -- e.g.: 5000 = 5 second delay, 10000 = 10 second delay, etc...
    -- Default: 0
    start_delay = 3000  -- 3 second delay
}
```

## Commands

`:MasonToolsInstall` - only installs tools that are missing or at the incorrect version

`:MasonToolsUpdate` - install missing tools and update already installed tools

## Suggestions / Complaints / Help

Please feel free to start a [discussion](https://github.com/monster0506/mason-installer/discussions) or
file a [bug report](https://github.com/monster0506/mason-installer/issues).
