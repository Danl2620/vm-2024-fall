# path: /etc/nixos/host.nix
# permissions: "0644"
{pkgs, ...}:
{
    nixpkgs.config.allowUnfree = true;
    environment.systemPackages = with pkgs; [ vim jdk openssh minecraft-server ];
}
