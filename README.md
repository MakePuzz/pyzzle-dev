# pyzzle-dev

## Setup
1. `git clone https://github.com/MakePuzz/pyzzle-dev.git`
2. `cd pyzzle-dev`
3. `git clone https://github.com/MakePuzz/pyzzle.git volume/pyzzle` (need authentication)
4. `docker-compose up -d`
5. `docker-compose exec pyzzle-dev bash`

## Development
Work directiory is `/root`, which is a home directory for root user.
Shared volume is `/root/volume`, which is linked to the local `pyzzle-dev/volume` directory.
Any changes in the local `pyzzle-dev/volume` directory will be reflected in the container.
