{
  description = "Bootdev CLI";

  outputs = {nixpkgs, ...}: {
    packages.x86_64-linux.bootdev = let
      pkgs = import nixpkgs {system = "x86_64-linux";};
    in
      pkgs.callPackage ./package.nix {};
  };
}
