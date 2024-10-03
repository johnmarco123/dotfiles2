return {
    'folke/tokyonight.nvim',
    config = function()
        vim.cmd('colorscheme tokyonight-night')
        vim.cmd([[autocmd TextYankPost * silent! lua require'vim.highlight'.on_yank({higroup="IncSearch", timeout=50})]]);
        vim.api.nvim_set_hl(0, 'YankHighlight', { bg = '#FFFF00', fg = 'NONE' })  -- Change 'yellow' to your desired color
    end
    --{
    --    'rose-pine/neovim',
    --    name ='rose-pine',
    --    config = function()
    --        vim.cmd('colorscheme rose-pine');
    --    end

    --},
}
