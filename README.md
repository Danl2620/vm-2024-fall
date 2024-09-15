### TODO

* [x] Enable ufw firewall ✅ 2024-09-07
* [ ] switch ssh server to port other than 22
* [ ] investigate https://github.com/Infinidoge/nix-minecraft
* update iteration for nix files in github (on macbook) -> running on server
	* edit, save
	* commit, push
	* switch to server
	* pull
	* _something_
	* `nixos-rebuild switch -L`
* [ ] switch to non-root user for admin
* [ ] disable root ssh
* [x] try [crafty](https://docs.craftycontrol.com/pages/getting-started/installation/linux/#automated-install-script-quick) vanilla on a droplet temp ✅ 2024-09-07
* [x] finish enable flake on macos ✅ 2024-09-08
* [x] nix flake check on repo ✅ 2024-09-08
* back to start /\

### Notes

## access server

```bash
ssh -i ~/.ssh/do_rsa minecraft@146.190.135.183
ssh -i ~/.ssh/do_rsa root@64.23.132.98
scp -i ~/.ssh/do_rsa root@209.38.151.82:server.properties ./1.19.4-server.properties
```

minecraft server ip: `64.23.132.98:25565`

## set up an ssh key pair

```bash
ssh-keygen -f ~/.ssh/do_rsa
```

## net stuff

```bash
eth0_name=$(ip address show | grep '^2:' | awk -F': ' '{print $2}')
eth0_ip4s=$(ip address show dev "$eth0_name" | grep 'inet ' | sed -r 's|.*inet ([0-9.]+)/([0-9]+).*|{ address="\1"; prefixLength=\2; }|')
eth0_ip6s=$(ip address show dev "$eth0_name" | grep 'inet6 ' | sed -r 's|.*inet6 ([0-9a-f:]+)/([0-9]+).*|{ address="\1"; prefixLength=\2; }|' || '')
```

## crafty

- Cleaning up temp dir
- Congrats! Crafty is now installed!
- We created a user called `crafty` for you to run crafty as. (DO NOT RUN CRAFTY WITH ROOT OR SUDO) Switch'
- Your install is located here: `/var/opt/minecraft/crafty`
- You can run crafty by running `/var/opt/minecraft/crafty/run_crafty.sh`
- You can update crafty by running `/var/opt/minecraft/crafty/update_crafty.sh`
- A service unit file has been saved in `/etc/systemd/system/crafty.service`
- run this command to enable crafty as a service: `sudo systemctl enable crafty.service`
- run this command to start the crafty service: `sudo systemctl start crafty.service`


https://64.23.132.98:8443
