{ pkgs, ... }: {
    # Don't change this when you change package input. Leave it alone.
    home.stateVersion = "22.11";
   nixpkgs.config = {
    allowUnfree = true;
    # more stuff
  };
    # specify my home-manager configs
    home.packages = with pkgs; [ 
        ripgrep
        fd
        curl
        less
        google-cloud-sdk
        docker
        kubectl
        k9s
      ];
    home.sessionVariables = {
      PAGER = "less";
      CLICLOLOR = 1;
      EDITOR = "vi";
    };
    programs = {
      bat.enable = true;
      bat.config.theme = "TwoDark";
      fzf.enable = true;
      fzf.enableZshIntegration = true;
      exa.enable = true;
      git ={
        enable =true;
        userName = "shamil";
        userEmail = "shamil@ghaseeta.com";
      };
      zsh.enable = true;
      # zsh.enableCompletion = true;
      zsh.enableAutosuggestions = true;
      zsh.syntaxHighlighting.enable = true;
      zsh.shellAliases = {
         ls = "ls --color=auto -F"; 
         nixswitch = "darwin-rebuild switch --flake /Users/shamil/projects/nix/nixmac/.#";
         nixup =" pushd /Users/shamilghaseeta/projects/test/nix/test_macos/src/system-config/; nix flake update; nixswitch; popd";
         };
      starship.enable = true;
      starship.enableZshIntegration = true;
      alacritty = {
        enable = true;
        settings.font.normal.family = "MesloLGS Nerd Font Mono";
        settings.font.size = 16;
      };
  };
}