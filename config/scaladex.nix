{ pkgs, ... }:
{
  extraPlugins = [
    (pkgs.vimUtils.buildVimPlugin {
      name = "scaladex.nvim";
      src = pkgs.fetchFromGitHub {
        owner = "softinio";
        repo = "scaladex.nvim";
        rev = "75a8157e85381eb736a7d92acae5000394f41040";
        hash = "sha256-Zy/4OI31woNnsVxc4yBYmEPooK1qJ02YrdMiM9Y+tSA=";
      };
    })
  ];

  keymaps = [
    {
      mode = "n";
      key = "<leader>si";
      lua = true;
      action = /* lua */ "require('telescope').extensions.scaladex.scaladex.search";
      options = {
        noremap = true;
        silent = true;
        desc = "Search in scaladex";
      };
    }
  ];

}
