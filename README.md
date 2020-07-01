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

### [Streama](https://github.com/streamaserver/streama): media streaming

- `cd services/streama`
- Edit `.env` file: `cp .env.xample .env`
- `docker-compose up -d`

TODO:

- Auto-mount USB script
- Services:
  - [Etherpad](https://github.com/ether/etherpad-lite)
  - [tube](https://github.com/prologic/tube)
  - [youtube-dl]()