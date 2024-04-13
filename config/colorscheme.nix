{
  colorschemes.vscode.enable = true;
  extraConfigLua = /* lua */ ''
    local links = {
      ['LspCodeLens'] = '@comment',
    }
    for newgroup, oldgroup in pairs(links) do
      vim.api.nvim_set_hl(0, newgroup, { link = oldgroup, default = true })
    end
  '';
}
