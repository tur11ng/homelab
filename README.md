# Homelab Raspberry Pi (Work in progress)

## Usage

```bash
# Clone the project
git clone https://github.com/tur11ng/homelab homelab
cd !$

# Create ansible vault
ansible-vault create groups_vars/secrets.yml

docker-compose -f docker-compose.yml -f docker-compose.unbound.yml -f docker-compose.wireguard.yml -f docker-compose.services.yml -f docker-compose.nextcloud.yml -f docker-compose.semaphore.yml up -d

## Troubleshooting

```
docker run --name netshoot --rm -it nicolaka/netshoot /bin/bash
docker exec -it <container_name> /bin/bash
```
