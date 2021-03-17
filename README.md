<p align="center">
    <img width="512" src="readme-logo.png">
</p>

# Rocket Pool on DAppNode

This an **unofficial** [Rocket Pool](https://rocketpool.net/) package for
[DAppNode](https://dappnode.io/). The goal of this project is to combine the
power of Rocket Pool with the ease of DAppNode. An end user should be able to
install this package in the typical way and start staking test ETH relatively
painlessly.

This package is **DOES NOT WORK**. ~~Follow the instructions below to install
and configure it. **This code is not well-tested and could cause problems for
you. Use it at your own risk.**~~

~~This package is compatible with Rocket Pool Beta 3.0. If you've installed
previous versions of this package, you must completely remove them before
installing this version. A simple update will not work.~~

## Installation

**THE INSTRUCTIONS BELOW WILL NOT WORK. DO NOT FOLLOW THEM.**

*I may come up with another way to make this work in the future.*

This guide assumes that your local workstation runs some sort of sane Linux.
Other systems aren't supported but can work with relatively simple
modifications. If all else fails, follow the Rocket Pool API documentation
linked below to run `docker exec` commands manually.

 1. [Set up DAppNode][0] in the usual way.
 2. Install the [Goerli Geth][1] and [Pyrmont Prysm][2] DAppNode packages. Let
    both chains sync. (This can take hours or days, depending on your hardware
    and connection speed.)
 3. [Install this package][3] on your DAppNode. (You may also [build it from
    source][4] and install the resulting package instead.)
 4. Copy `rocketpool.sh` from this repository to your local machine. You must
    use this script to interact with the RPL-DN package. The default smartnode
    client (`rocketpool`) will not work because that program expects there to be
    a config file in `~/.rocketpool`, but your DAppNode doesn't have that.
    Instead, the script interacts with the API container that Rocket Pool
    provides, which gives you access to the same features as the normal CLI
    program.
 5. Edit `rocketpool.sh` to reflect your setup. You must change the value of
    `DAPPNODE_HOST` to be the IP or hostname of your DAppNode. (This is the
    same value you use when connecting to your DAppNode over SSH.) The values of
    `DAPPNODE_USERNAME` and `DAPPNODE_API_CONTAINER` are sane defaults that you
    may change if you need to.
 6. Run the script with the same arguments that you might pass to the normal
    `rocketpool` CLI program (e.g. `./rocketpool.sh wallet init`). You may
    refer to the Rocket Pool [API documentation][5]. All features should be
    available to you, except for the `service` subcommand. You should use the
    standard DAppNode package UI to control those sorts of things. Note that the
    responses from the commands are JSON, and by default the script
    pretty-prints the JSON with Python. If you don't have Python installed and
    don't want to install it, you may remove that part of the script and
    optionally pipe the result to your own JSON pretty printer.

[0]: https://dappnode.github.io/DAppNodeDocs/install/
[1]: http://my.dappnode/#/installer/goerli-geth.dnp.dappnode.eth
[2]: http://my.dappnode/#/installer/prysm-pyrmont.dnp.dappnode.eth
[3]: http://my.dappnode/#/installer/%2Fipfs%2FQmY9hr6JVf8mprcoNUziznzeRBwRmb195DyKtsXknHnrmq
[4]: https://medium.com/luguslabs/how-to-create-and-manage-a-new-dappnode-package-b23460b4449
[5]: https://rocket-pool.readthedocs.io/en/latest/smart-node/api.html

