# Set MATLAB Docker image version
ARG MATLAB_RELEASE=r2021b

# Use the MATLAB Docker image as base
FROM mathworks/matlab:${MATLAB_RELEASE}

ARG LICENSE_SERVER

# Specify the host and port of the machine that serves the network licenses
ENV MLM_LICENSE_FILE=$LICENSE_SERVER

# Set user and work directory
WORKDIR /home/matlab

# copy the content of the local directory to the working directory
COPY src/ .

ENTRYPOINT ["matlab", "-r"]
