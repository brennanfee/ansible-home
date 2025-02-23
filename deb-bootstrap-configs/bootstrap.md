# Bootstrap Procedures

## Boot ISO

Use Ventoy hard drive to boot into Debian command line.

## Check Network Access

Check if you have network access, `ping www.google.com`.

If you do not have access, attempt to set up drivers for wired or wireless.  If
things won't auto connect the following commands may be used to manually create
an IP and connect.

``` bash
ip addr add 10.0.0.250/16 brd + dev <device name, like enp3s0 or whatever>
ip link set <device name> up
ip route add default via 10.0.0.1
vi /etc/resolv.conf`, edit and add `nameserver 10.0.0.1
```

## Download bootstrap script

`curl -fsSL -o bootstrapper.bash https://tinyurl.com/deb-bootstrapper`

If you need to run the dev branch version use this instead:

`curl -fsSL -o bootstrapper.bash https://tinyurl.com/dev-deb-bootstrapper`

## Run The Script

Script usage: bootstrapper.bash {distro} {edition} (configuration) (flags/options)

If no specific configuration is desired, simply pass `default` as the configuration.
Any options passed will then override the default settings.

The most common option to pass is `--hostname` with the name for the machine being
installed.  If no host name is passed, one will be auto-generated.

For a fully automated installation (no confirmations, no prompts) you can pass
`-a` as a flag.  This option will also automatically reboot at the end of installation.

### Examples

Usually one of my pre-setup configurations should be used.  With these no other flags
or options should be required (other then hostname as described above).

For "normal" machines:

- Home LAN Machine -> `sudo bash bootstrapper.bash debian backports homelan --hostname <hostname> -a`
- Home LAN Virtual Machine -> `sudo bash bootstrapper.bash debian backports vmhomelan`

For my lab environment:

- Home LAB Machine -> `sudo bash bootstrapper.bash debian backports homelab`
- Home LAB Virtual Machine -> `sudo bash bootstrapper.bash debian backports vmhomelab`

## TLDR

``` bash
curl -fsSL -o bootstrapper.bash https://tinyurl.com/deb-bootstrapper
sudo bash bootstrapper.bash debian backports homelan --hostname <hostname> -a
```

Or as a one-liner:

``` bash
sudo bash <(curl -fsSL https://tinyurl.com/deb-bootstrapper)
```
