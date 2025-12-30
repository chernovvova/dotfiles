return {
    'nvim-treesitter/nvim-treesitter',
    lazy = false,
    event = { 'BufReadPre', 'BufNewFile' },
    build = ':TSUpdate',
    config = function ()
        local treesitter = require('nvim-treesitter')
        
        treesitter.setup({
            highlight = { enable = true, },
            indent = { enable = true, },
            ensure_installed = {
                'bash',
                'c',
                'cmake',
                'cpp',
                'css',
                'csv',
                'gitignore',
                'html',
                'javascript',
                'json',
                'lua',
                'nginx',
                'python',
                'rust',
                'sql',
                'toml',
                'typescript',
                'xml',
            },
            incremental_selection = {
                enable = true,
                keymaps = {
                    init_selection = '<C-space>',
                    node_incremental = '<C-space>',
                    scope_incremental = false,
                },
            },
            additional_vim_regex_highlighting = false,
        })
    end
}
