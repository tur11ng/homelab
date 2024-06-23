# Homelab Raspberry Pi (Work in progress)

## Usage

```bash
# Clone the project
git clone https://github.com/tur11ng/homelab homelab
cd !$

# Create ansible vault
ansible-vault create groups_vars/secrets.yml

# Start docker services
docker-compose -f docker-compose.internal.yml -f docker-compose.external.yml up -d
```

## Troubleshooting

```bash
docker run --name netshoot --rm -it nicolaka/netshoot /bin/bash
docker exec -it <container_name> /bin/bash
```
