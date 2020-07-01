# Community Server

*[Português]()*

## Install
- Install Docker and docker-compose: `scripts/install.sh` on local server

## Setup
- Get server IP `ip r`
- Run `scripts/create_local_dns_conf.sh` on router
- `cp .env.example .env` and edit

## Run
- `docker-compose up -d`
- Configure router to use pihole: `scripts/set_pi_hole.sh`