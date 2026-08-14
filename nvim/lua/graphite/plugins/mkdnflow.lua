return {
    'jakewvincent/mkdnflow.nvim',
    config = function()
        require('mkdnflow').setup({
            foldtext = {
                object_count = true,
                object_count_icon_set = 'emoji',
                object_count_opts = function()
                    return require('mkdnflow').foldtext.default_count_opts()
                end,
                line_count = true,
                line_percentage = true,
                word_count = false,
                title_transformer = function()
                    return require('mkdnflow').foldtext.default_title_transformer
                end,
                fill_chars = {
                    left_edge = '⢾⣿⣿',
                    right_edge = '⣿⣿⡷',
                    item_separator = ' · ',
                    section_separator = ' ⣹⣿⣏ ',
                    left_inside = ' ⣹',
                    right_inside = '⣏ ',
                    middle = '⣿',
                },
            },
    })
end,
}

