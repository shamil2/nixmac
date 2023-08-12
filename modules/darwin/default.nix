{ pkgs, ... }: {
  # here go the darwin preferences and config items
  programs.zsh.enable = true;
  environment = {
    shells = with pkgs; [ bash zsh ];
    loginShell = pkgs.zsh;
    systemPackages = [ pkgs.coreutils ];
  };

  nix.extraOptions = ''
    experimental-features = nix-command flakes
  '';
  system = {
    keyboard.enableKeyMapping = true;
    keyboard.remapCapsLockToEscape = true;
    defaults.finder.AppleShowAllExtensions = true;
    defaults.finder._FXShowPosixPathInTitle = true;
    defaults.dock.autohide = true;
    defaults.NSGlobalDomain.AppleShowAllExtensions = true;
    defaults.NSGlobalDomain.InitialKeyRepeat = 14;
    defaults.NSGlobalDomain.KeyRepeat = 1;
    stateVersion = 4;
  };
  fonts.fontDir.enable = true; # DANGER
  fonts.fonts =
    [ pkgs.nerdfonts];
  services.nix-daemon.enable = true;

  users.users.shamilghaseeta.home = "/Users/shamilghaseeta";
  homebrew = {
    enable = true;
    caskArgs.no_quarantine = true;
    global.brewfile = true;
    masApps = {};
    casks = [];
    taps = [];
    brews =[];
  };
}