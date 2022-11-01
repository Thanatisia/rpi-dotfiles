-- Package Configurations
-- for
-- barbar.nvim - Tab Helper

--- Setup
require('bufferline').setup(
    {
        -- Enable/disable animations
        animation = true,

        -- Enable/disable close button
        closable = true,

        -- Enable/disable clickable tabs
        --  - left-click : Go to buffer/tab
        --  - middle-click : Close/Delete buffer/tab
        clickable = true,

        -- Enable/disable Icons
        --  - if set to
        --      - 'numbers' : Show buffer index in the tabline
        --      - 'both' : Show buffer index and icons in the tabline
        icons = true,


        -- Configure icons on the bufferline.
        icon_separator_active = '▎',
        icon_separator_inactive = '▎',
        icon_close_tab = '',
        icon_close_tab_modified = '●',
        icon_pinned = '車',
    }
)

