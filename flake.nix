{
  description = "minecraft vm fall 2024";

  # Add all your dependencies here
  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs?ref=nixos-24.05";
    garnix-lib.url = "github:garnix-io/garnix-lib";
    nix-minecraft.url = "github:Infinidoge/nix-minecraft";
  };

  outputs = inputs : {
    nixosConfigurations.minecraft-vm = inputs.nixpkgs.lib.nixosSystem {
      imports = [ inputs.nix-minecraft.nixosModules.minecraft-servers ];
      nixpkgs.overlays = [ inputs.nix-minecraft.overlay ];
      modules = [
        inputs.garnix-lib.nixosModules.garnix
        # This is where the work happens
        ./hosts/host.nix
      ];
    };
  };
}
