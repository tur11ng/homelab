# Homelab 

# Notes

## Docker Network

* Bridge (Default):
    * When a container is launched without any specific network configuration, it will be attached to the default network which is a bridge network
    * It automatically creates a network interface (ex. docker0) on the host and attach/connect the containers that use this network to it. 
        * The bridge has a specific subnet where all the hosts are connected and a specific gateway.
        * The bridge has its own DHCP and DNS server.
        * Each container can reffer to each other only using its hostname.
        * Each container is isolated from accessing the host, a port must be forwarded/exposed using, for example, 80:80.
    * You cannot isolate the docker containers themselves, every docker container attached to this network can see each other.
    * You cannot perform custom name resolution stuff, since DHCP is managed from the docker, there is no guarantee that the IPs do not change.
    * It has internet access
* Host
    * The network namespaces of the containers that have joined the network is combine with the network namespace of the host. For example, if an application is listening on port 443 on the host, the docker container will not be able to bind to it and vice versa.
* MACVlan:
    * Each container acts like a separate network interface card (NIC). So each container gets a separate IP address from the host network and it acts like a completely different host.
    * The NIC can only take static IPs, is not able to use DHCP to get an IP from the host network. This means that in order to configure it you have to provide both the static IP address as well as the host subnet mask. The network is given an ip-range and whenever it needs to assign a new IP address it starts from the first address of the range and stops at the first address that is not assigned.
    * The newly created virtual NIC is not shown in "ip a", but it exists.
    * Again you don't need to expose any ports.
    * For every host of the MACVlan network it uses a new MAC Address.
* IPVlan:
    * The same as MACVlan, but instead of using a new MAC address for each host of the MACVlan network, it just uses the same MAC address.
    * Usually MACVlans solve the problem and this type of network is not needed. 
* Null:
    * The container is completely isolated from any

## Troubleshooting
```
docker run --name netshoot --rm -it nicolaka/netshoot /bin/bash
```

## Status

We cannot see traffic originating from the local host (attached with --network host the netshoot container and tried nmap) on the wireguard container on port 51820, but the scan completes fine, we also tried changing the interface.

The port seems open from the public.