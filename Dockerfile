# Use a Python base image (e.g., Debian slim) as it already includes Python and pip
FROM python:3.11-slim-bookworm

# 1. Install Icarus Verilog and other necessary build tools
# We update the package lists and install iverilog and git
RUN apt-get update && \
    apt-get install -y --no-install-recommends \
    iverilog \
    gtkwave \
    build-essential \
    git \
    libatlas-base-dev \
    gfortran && \
    rm -rf /var/lib/apt/lists/*

RUN pip install --no-cache-dir \
    numpy \
    scipy \
    pyverilog

WORKDIR /root

# 5. Set the default command or entrypoint
# A common practice is to leave it open for user-defined commands, but you can set a default shell.
CMD ["/bin/bash"]

### docker build -t [image_name] .
### docker run -id -v [local_dir_AbsPath_to_be_mounted]:/root --restart=always --name [container_name] [image_name]
### docker exec -it [container_name] /bin/bash