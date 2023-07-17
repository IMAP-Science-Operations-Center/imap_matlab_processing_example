# Building and running a docker image locally

To build the image run the following command from the Dockerfile directory.
Note: for non-LASP users you must retrieve your MATLAB licensing information
from your own institute. More information is available here:
https://github.com/mathworks-ref-arch/matlab-dockerfile 

```shell
docker build -t matlab-image --platform linux/amd64 --rm . --build-arg \
LICENSE_SERVER=27000@lasp-lmgr.colorado.edu
```

Now we can run our image using bind mounting. 

# For local directory

```shell
docker run --rm -it   -e PROCESSING_DROPBOX=/opt/data/dropbox/   \
--volume="$(pwd)/container_example_data:/opt/data"   matlab-image:latest \
"algorithm_example /opt/data/dropbox/input_manifest_20220923t000000.json"
```
