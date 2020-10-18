# Community Server

*[Português]()*

## Install
- Install Docker and docker-compose: `scripts/install.sh` on local server

## Setup
- Get server IP `ip r`
- Run `scripts/create_local_dns_conf.sh` on router
- `cp .env.example .env` and edit

## Run

### Main: nginx, portainer, pihole, monitoring
- Create network: `docker network create nginx-proxy`
- Edit `.env` file: `cp .env.xample .env`
- `docker-compose up -d`
- Configure router to use pihole: `scripts/set_pi_hole.sh`

### [Jellyfin](https://jellyfin.org/): media streaming

- `cd services/jellyfin`
-  Copy environment variables file: `cp .env.xample .env`
- Edit `.env` with your information
- `docker-compose up -d`

TODO:

- Scripts:
  - Install Docker/Docker-compose
  - Install native
  - Add service 
  - Remove service
  - Auto-mount USB script
- Services:
  - [Etherpad](https://github.com/ether/etherpad-lite)
  - [tube](https://github.com/prologic/tube)