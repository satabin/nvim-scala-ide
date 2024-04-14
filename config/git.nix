{ pkgs, ... }: {
  plugins.neogit.enable = true;
  plugins.gitsigns.enable = true;
  plugins.fugitive.enable = true;

  extraPlugins = [
    pkgs.vimPlugins.vim-flog
  ];
}
