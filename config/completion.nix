{ pkgs, ... }: {
  plugins.cmp = {
    enable = true;
    settings = {
      preselect = "cmp.PreselectMode.None";

      sources = [
        { name = "nvim_lsp"; }
        { name = "path"; }
        { name = "vsnip"; }
      ];

      formatting = {
        format = /* lua */ ''
          function(_, item)
            local content = item.abbr

            local ELLIPSIS_CHAR = '…'
            local MAX_LABEL_WIDTH = 50
            local MAX_KIND_WIDTH = 14

            local get_ws = function (max, len)
              return (" "):rep(max - len)
            end

            if #content > MAX_LABEL_WIDTH then
              item.abbr = vim.fn.strcharpart(content, 0, MAX_LABEL_WIDTH) .. ELLIPSIS_CHAR
            else
              item.abbr = content .. get_ws(MAX_LABEL_WIDTH, #content)
            end

            return item
          end
        '';
      };

      snippet = {
        expand = /* lua */ ''
          function(args)
            vim.fn["vsnip#anonymous"](args.body)
          end
        '';
      };

      mapping = {
        "<CR>" = /* lua */ ''
          cmp.mapping.confirm({
            behavior = cmp.ConfirmBehavior.Insert,
            select = true
          })'';
        "<C-n>" = /* lua */''
          function(fallback)
            if cmp.visible() then
              cmp.select_next_item()
            else
              fallback()
            end
          end'';
        "<C-p>" = /* lua */''
          function(fallback)
            if cmp.visible() then
              cmp.select_prev_item()
            else
              fallback()
            end
          end'';
      };

    };
  };
  plugins.cmp-nvim-lsp.enable = true;
  plugins.cmp-path.enable = true;
  plugins.cmp-vsnip.enable = true;

  extraPlugins = [ pkgs.vimPlugins.vim-vsnip ];
}
