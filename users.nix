# path: /etc/nixos/users.nix
# permissions: "0644"
{pkgs, ...}:
{
    users.users.minecraft = {
        isNormalUser = true;
        home  = "/home/minecraft";
        description  = "minecraft admin";
        extraGroups  = [ ];
        openssh.authorizedKeys.keys  = [ "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABgQDeuiXl+pwPiFRS+jwORp7r3S9Rcp1y7sYxOjaqHD0Yj0Q6vvmasbZX1pUJiKSaZbzfe3nqEbjd5qBiywi/AnPjMFmT2dXYfOTE4g82VmtM2Pq5jWP9wishrLgZ6+2AjYEs4wJo5oYKEvFCGvxh0T9+2dhEEoDjcR+Yq6Xl5vG/36Rf+tqA7zwa8dagbVZInqgiFjsWQffh1H4w1/3j3mr6YlJmEfSJGv6dGS+Zy/jXNF2vUrRtgXakGDtT1EB4MjdtbMu2kH9iXLz4yBFenpQIHEcZYsXjWcs0w3X6HUai1GZuT83nRyjdqFJmD3CExquyy/LuklvcVZfjZYMUV+mrJElfQH1ZsB+fe0t8sYVJanec8tgWcElWCdjYhmvItGh6QEiH85LeIYkrRO0yt+kE7AGfZuvcleAe9bF4Byc7Xwtd64GFaSQMAdSIXIAWcghzYZXdfhcB9AFFNC79/9JpVnzxlZ1kc4UDJ7zSy5k6s5lh05eDdzwvYVKVMw7x+sU= dliebgold@Silver-Surfer.local" ];
    };
}
