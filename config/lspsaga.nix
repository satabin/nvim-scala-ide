{
  plugins.lspsaga = {
    enable = true;
    lightbulb.enable = false;
  };

  userCommands = {
    Terminal.command = "Lspsaga term_toggle";
  };

  keymaps = [
    {
      mode = [ "n" "t" ];
      key = "<space>t";
      action = "<cmd>Lspsaga term_toggle<CR>";
      options = {
        noremap = true;
        silent = true;
      };
    }
  ];
}
