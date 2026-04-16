## Bootdev CLI Nix Flake
Small Nix Flake that packages [bootdev CLI](https://github.com/bootdotdev/bootdev)

This repository also automatically updates for the latest release via CI.

### Installation

```nix
{
  inputs.bootdev.url = "github:GMkonan/bootdev-cli-flake";

  # on Nixos configuration
  environment.systemPackages = [ 
    inputs.bootdev.packages.${pkgs.stdenv.hostPlatform.system}.bootdev
 ];

  # or in home manager
  home.packages = [ inputs.bootdev.packages.${pkgs.stdenv.hostPlatform.system}.bootdev ];
}
```

### Development
```
nix flake check

nix build .#bootdev -L
```
