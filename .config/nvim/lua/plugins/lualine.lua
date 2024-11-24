return {
  'nvim-lualine/lualine.nvim',
  dependencies = { 'nvim-tree/nvim-web-devicons' },
  event = 'VeryLazy',
  opts = function()
    local current_formatter = function()
      -- Check if 'conform' is available
      local status, conform = pcall(require, 'conform')
      if not status then
        return 'Conform not installed'
      end

      local lsp_format = require('conform.lsp_format')

      -- Get formatters for the current buffer
      local formatters = conform.list_formatters_for_buffer()
      if formatters and #formatters > 0 then
        local formatterNames = {}

        for _, formatter in ipairs(formatters) do
          table.insert(formatterNames, formatter)
        end

        return table.concat(formatterNames, ' ')
      end

      -- Check if there's an LSP formatter
      local bufnr = vim.api.nvim_get_current_buf()
      local lsp_clients = lsp_format.get_format_clients({ bufnr = bufnr })

      if not vim.tbl_isempty(lsp_clients) then
        return 'LSP Formatter'
      end

      return ''
    end
    return {
      options = {
        icons_enabled = true,
        theme = 'gruvbox',
        component_separators = { left = '', right = '' },
        section_separators = { left = '', right = '' },
        disabled_filetypes = {
          statusline = {},
          winbar = {},
        },
        ignore_focus = {},
        always_divide_middle = true,
        always_show_tabline = true,
        globalstatus = false,
        refresh = {
          statusline = 100,
          tabline = 100,
          winbar = 100,
        },
      },
      sections = {
        lualine_a = { 'mode' },
        lualine_b = { 'branch', 'diff', 'diagnostics' },
        lualine_c = { 'filename' },
        lualine_x = { 'encoding', 'filetype' },
        lualine_y = { current_formatter },
        lualine_z = { 'location' },
      },
      inactive_sections = {
        lualine_a = {},
        lualine_b = {},
        lualine_c = { 'filename' },
        lualine_x = { 'location' },
        lualine_y = {},
        lualine_z = {},
      },
      tabline = {},
      winbar = {},
      inactive_winbar = {},
      extensions = {},
    }
  end,
}
