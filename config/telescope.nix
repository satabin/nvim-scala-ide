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

  plugins.telescope = {
    enable = true;

    keymapsSilent = true;

    settings = {
      appings = {
        n = {
          "<leader>si" = {
            __raw = "require('telescope').extensions.scaladex.scaladex.search";
          };
        };
      };
    };

    extensions = {
      fzf-native = {
        enable = true;
        settings = {
          case_mode = "smart_case";
        };
      };
      ui-select = {
        enable = true;
      };
    };

    keymaps = {
      "<leader>ff" = "find_files";
      "<C-p>" = "find_files";
      "<leader>fg" = "live_grep";
      "<leader>fb" = "current_buffer_fuzzy_find";
    };
  };
}
