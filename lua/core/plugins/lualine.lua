require("lualine").setup {
    options = {
        icons_enabled = true,
        theme = "iceberg_dark"
    },
    sections = {
        lualine_a = {
            {
                "filename",
                path = 1,
            }
        }
    }
}
