FROM ubuntu:20.10


# Install Node.js v14.x
RUN apt-get update -qq && \
    DEBIAN_FRONTEND=noninteractive apt-get install -qq \
        curl \
        sudo \
        git \
        jq \
        zip \
        unzip \
	    make

RUN curl -sL https://deb.nodesource.com/setup_14.x | sudo -E bash - \
    && sudo apt-get install -qq nodejs


# Install OpenJDK-8
RUN apt-get update -qq && \
    DEBIAN_FRONTEND=noninteractive \
    apt-get install -qq openjdk-8-jdk && \
    apt-get clean -qq && \
	rm -rf /var/cache/oracle-jdk8-installer && \
    rm -rf /var/lib/apt/lists/*

ENV JAVA_HOME=/usr/lib/jvm/java-8-openjdk-amd64/
RUN export JAVA_HOME

# Set XDG environment variables explicitly so that GitHub Actions does not apply
# default paths that do not point to the plugins directory
# https://specifications.freedesktop.org/basedir-spec/basedir-spec-latest.html
ENV XDG_DATA_HOME=/sfdx_plugins/.local/share
ENV XDG_CONFIG_HOME=/sfdx_plugins/.config
ENV XDG_CACHE_HOME=/sfdx_plugins/.cache

# Create isolated plugins directory with rwx permission for all users
# Azure pipelines switches to a container-user which does not have access
# to the root directory where plugins are normally installed
RUN mkdir -p $XDG_DATA_HOME && \
    mkdir -p $XDG_CONFIG_HOME && \
    mkdir -p $XDG_CACHE_HOME && \
    chmod -R 777 sfdx_plugins

RUN export XDG_DATA_HOME && \
    export XDG_CONFIG_HOME && \
    export XDG_CACHE_HOME

# Install SFDX CLI
RUN npm update -g && \
    npm install sfdx-cli@7.110.0 --global && \
    npm install vlocity@1.14.10 --global

# Install sfdx plugins
RUN echo 'y' | sfdx plugins:install sfdmu@4.4.3
RUN echo 'y' | sfdx plugins:install sfpowerkit@3.2.2
RUN echo 'y' | sfdx plugins:install @dxatscale/sfpowerscripts@8.1.19
