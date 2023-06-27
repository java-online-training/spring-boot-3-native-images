FROM gitpod/workspace-full

SHELL ["/bin/bash", "-c"]
RUN source "/home/gitpod/.sdkman/bin/sdkman-init.sh"  \
    && sdk install java 22.3.r17-nik < /dev/null