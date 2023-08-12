
# My nix-darwin configuration

## Magento

This setup includes basic setup to host multiple Mac OS instances 
## Install

Install [Nix](https://nixos.org/guides/install-nix.html)

```
sh <(curl -L https://nixos.org/nix/install) --daemon
```

Install [nix-darwin](https://daiderd.com/nix-darwin/)

```
nix-build https://github.com/LnL7/nix-darwin/archive/master.tar.gz -A installer
./result/bin/darwin-installer
```

Clone this directory in `~/.nixpkgs` and run

```
darwin-rebuild switch
```



## Uninstall

```
rm -rf /nix
```


```
 darwin-rebuild switch --flake /Users/shamil/projects/nix/nixmac/.#
```