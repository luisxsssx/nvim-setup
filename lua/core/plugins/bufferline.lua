-- Bufferline configuration

-- Neovim general configuration
vim.opt.termguicolors = true

-- Bufferline configuration 
require("bufferline").setup {
    options = {
        -- Use LSP diagnostisc built into Neovim 
        diagnostics = "nvim_lsp",
        -- Slanted lash style 
        separator_style = "slant",
        -- Offset text alginment
        offsets = {
            {
                filetype = "NvimTree",
                text = "File Explorer",
                highlight = "Directory",
                text_align = "left"
            }
        },
        -- Custom diagnostic indicator
        diagnostics_indicator = function(count, level, diagnostics_dict, context)
            local icon = level:match("error") and " " or " "
            return " " .. icon .. count
        end,
        -- Group configuration 
        groups = {
            items = {
                {
                    name = "Dependencies",
                    highlight = { guisp = "#51AFEF", gui = "underline" },
                    matcher = function(buf)
                        return vim.startswith(buf.path, "node_modules") or vim.endswith(buf.path, "package.json")
                    end,
                },
            },
        },
        -- Show buffer numbers 
        numbers = function(opts)
            return string.format("%s·%s", opts.ordinal, opts.id)
        end,
        -- Icons to close buffers 
        close_icon = "",
        modified_icon = "●",
        buffer_close_icon = "",
        -- Persist buffer order between sessions
        persist_buffer_sort = true,
        -- Slanted lash style with padding if necessary
        style_preset = "padded_slant",
    }
}

