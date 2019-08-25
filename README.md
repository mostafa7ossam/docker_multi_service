# docker_multi_service
notes:
this implementation is tested on the following  ubuntu version 18.04.3  docker 18.09.7  docker-compose version 1.25.0-rc

## getting started guide

1. make sure docker and docker-compose are installed on a ubuntu machine
2. clone this repo `git clone https://github.com/mostafa7ossam/docker_multi_service.git`
3. navigate to repo directory and run `chmod +x initialize.sh`
4. run the initialize file  `./initialize.sh`

**NOTE:**
The previous steps update the rules of the firewall and enables it. all inbound traffic except for ports 8000 and 22 will be blocked

Now the two services should be running along with nginx reverse proxy

### to check the status of the airports service:
  `curl http://localhost:8000/airports/health/live`

### to check the status of the countries service:
  `curl http://localhost:8000/countries/health/live`

## Updating airports to version 1.1.0
1. navigate to repo directory and run `chmod +x update.sh`
2. run the initialize file  `./update.sh`
