{
  imports = [
    ./autopairs.nix
    ./colorscheme.nix
    ./completion.nix
    ./dap.nix
    ./git.nix
    ./lsp.nix
    ./lspsaga.nix
    ./lualine.nix
    ./metals.nix
    ./multicursors.nix
    ./neotest.nix
    ./neotree.nix
    ./telescope.nix
    ./treesitter.nix
  ];

  opts = {
    sw = 2;
    ts = 2;
    expandtab = true;
    nu = true;
    rnu = true;
    ai = true;
    si = true;
    cursorline = true;
    mouse = "a";
    wildmode = "list:longest";
    wrap = true;
    linebreak = true;
    list = false;
    ignorecase = false;
    smartcase = true;
    hidden = true;
    shortmess = "atI";
    autoread = true;
  };
}
