# Bootstrap Procedures

## Boot ISO

Use Ventoy hard drive to boot into Debian command line.

## Check Network Access

Check if you have network access, `ping www.google.com`.

If you do not have access, attempt to set up drivers for wired or wireless. If things won't auto connect the following commands may be used to manually create an IP and connect.

`ip addr add 10.0.0.250/16 brd + dev <device name, like enp3s0 or whatever>`

`ip link set <device name> up`

`ip route add default via 10.0.0.1`

`vi /etc/resolv.conf`, edit and add `nameserver 10.0.0.1`

## Download bootstrap script

`curl -fsSL -o bootstrapper.bash https://tinyurl.com/deb-bootstrapper`

If you need to run the dev branch version use this instead:

`curl -fsSL -o bootstrapper.bash https://tinyurl.com/dev-deb-bootstrapper`

## Run The Script

### Set Pre-Environment Variables

While any number of environment variables may be passed, generally the only one needed is the
machine name.

`export AUTO_HOSTNAME=<hostname>`

### Script Usage

Script usage: bootstrapper.bash {distro} {edition} (configuration) (flags/options)

#### Examples

Usually one of my pre-setup configurations should be used. With these no other flags or
options should be required (other then hostname as described above).

For "normal" machines:

- Home LAN Machine -> `bootstrapper.bash debian backports homelan --auto`
- Home LAN Virtual Machine -> `bootstrapper.bash debian backports vmhomelan --auto`

For my lab environment:

- Home LAB Machine -> `bootstrapper.bash debian backports homelab --auto`
- HOME LAB Virtual Machine -> `bootstrapper.bash debian backports vmhomelab --auto`
