{
  plugins.telescope = {
    enable = true;

    keymapsSilent = true;

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
