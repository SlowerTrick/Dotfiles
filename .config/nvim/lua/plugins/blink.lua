return {
    'saghen/blink.cmp',
    opts = {
        keymap = {
            preset = 'super-tab',
            ['<C-d>'] = { 'show', 'show_documentation', 'hide_documentation' },
            ['<C-j>'] = { 'select_next', 'fallback' },
            ['<C-k>'] = { 'select_prev', 'fallback' },
            ["<C-n>"] = { "snippet_forward", "fallback" },
            ["<C-p>"] = { "snippet_backward", "fallback" },
            ['<Tab>'] = {
                function(cmp)
                    if cmp:snippet_active() then return cmp:accept()
                    else return cmp:select_and_accept() end
                end,
                'fallback',
            },
            ['<C-b>'] = { 'scroll_documentation_up', 'fallback' },
            ['<C-f>'] = { 'scroll_documentation_down', 'fallback' },
        },
        completion = {
            ghost_text = { enabled = false },
        }
    },
}
