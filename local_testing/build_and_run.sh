export HOST_IP=192.168.122.1
export SHARED_DIR=~/mlrun-data
mkdir -p $SHARED_DIR
docker-compose -f mlrun-docker-compose.yaml up -d