

## access server

```bash
ssh -i ~/.ssh/do_rsa root@209.38.151.82
scp -i ~/.ssh/do_rsa root@209.38.151.82:server.properties ./1.19.4-server.properties
```

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
