# MLRun Testing with Yolo

## Install Enviroment

To test the project install docker and docker-compose and execute:

```bash
export HOST_IP=<your host IP address>
export SHARED_DIR=~/mlrun-data
mkdir -p $SHARED_DIR
mkdir -p minio_storage
docker-compose -f mlrun-docker-compose.yaml up -d
```
Your `HOST_IP` address can be found using the `ip addr` or `ifconfig` commands (do not use `localhost` or `127.0.0.1`). It is recommended to select an address that does not change dynamically (for example the IP of the bridge interface).

This creates 4 services:

* Jupyter lab (in http://localhost:8888)

* MLRun API (in http://localhost:8080), running on the Jupyter container

* MLRun UI (in http://localhost:8060)

* Nuclio Dashboard/controller (in http://localhost:8070)

After the installation, access the Jupyter server (in http://localhost:8888) and run through the quick-start tutorial and demos. You can see the projects, tasks, and artifacts in MLRun UI (in http://localhost:8060). The Minio Console is also available on http://localhost:9000 with the default user and password `minioadmin:minioadmin`, this can be changed in the docker compose file or in the console after the first login.

## Run the Notebook

Access the Jupyter server (http://localhost:8888) create a new folder and copy the contents from `src` to this folder. Create also a `data` folder. Open the `yolo.ipynb` notebook and follow the instructions.


# References

https://docs.mlrun.org/en/stable/install/local-docker.html

