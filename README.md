


minecraft server manager
https://msmhq.com/docs/installation.html

set up an ssh key pair

ssh-keygen -f ~/.ssh/do_rsa

`ssh -i ~/.ssh/do_rsa root@164.92.100.11`
`ssh -i ~/.ssh/do_rsa root@164.92.100.11`

`ssh -i ~/.ssh/do_rsa root@146.190.141.211`
ssh -i ~/.ssh/do_rsa root@209.38.151.82

scp -i ~/.ssh/do_rsa root@209.38.151.82:server.properties ./1.19.4-server.properties


set up an admin user


```bash
doctl compute droplet create \
    --image ubuntu-24-04-x64 \
    --size s-2vcpu-4gb-amd \
    --region sfo3 \
    ubuntu-s-2vcpu-4gb-amd-sfo3-01
```




```yaml
#cloud-config
runcmd:
  - curl https://raw.githubusercontent.com/elitak/nixos-infect/master/nixos-infect | PROVIDER=digitalocean NIX_CHANNEL=nixos-23.05 bash 2>&1 | tee /tmp/infect.log
```


## net stuff

eth0_name=$(ip address show | grep '^2:' | awk -F': ' '{print $2}')
eth0_ip4s=$(ip address show dev "$eth0_name" | grep 'inet ' | sed -r 's|.*inet ([0-9.]+)/([0-9]+).*|{ address="\1"; prefixLength=\2; }|')
eth0_ip6s=$(ip address show dev "$eth0_name" | grep 'inet6 ' | sed -r 's|.*inet6 ([0-9a-f:]+)/([0-9]+).*|{ address="\1"; prefixLength=\2; }|' || '')
