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
	make \
	libxkbcommon-x11-0

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


# Install latest chrome dev package and fonts to support major charsets (Chinese, Japanese, Arabic, Hebrew, Thai and a few others)
# Note: this installs the necessary libs to make the bundled version of Chromium that Puppeteer
# installs, work.
RUN apt-get update \
    && apt-get install -y wget gnupg \
    && wget -q -O - https://dl-ssl.google.com/linux/linux_signing_key.pub | apt-key add - \
    && sh -c 'echo "deb [arch=amd64] http://dl.google.com/linux/chrome/deb/ stable main" >> /etc/apt/sources.list.d/google.list' \
    && apt-get update \
    && apt-get install -y google-chrome-stable fonts-ipafont-gothic fonts-wqy-zenhei fonts-thai-tlwg fonts-kacst fonts-freefont-ttf libxss1 \
      --no-install-recommends \
    && rm -rf /var/lib/apt/lists/*



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
    npm install sfdx-cli@7.120.0 --global && \
    npm install vlocity@1.14.10 --global

# Install sfdx plugins
RUN echo 'y' | sfdx plugins:install sfdmu@4.4.3
RUN echo 'y' | sfdx plugins:install sfpowerkit@3.3.4
RUN echo 'y' | sfdx plugins:install @dxatscale/sfpowerscripts@9.3.10
RUN echo 'y' | sfdx plugins:install sfdx-browserforce-plugin@2.6.3
