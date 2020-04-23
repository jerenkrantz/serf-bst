FROM debian:sid AS platform_base

# Avoid warnings by switching to noninteractive
ENV DEBIAN_FRONTEND=noninteractive

# Install build essential
RUN apt-get update \
    && apt-get install build-essential cmake autoconf libtool -y \
    # Clean up
    && apt-get autoremove -y \
    && apt-get clean -y \
    && rm -rf /var/lib/apt/lists/*
  
# Switch back to dialog for any ad-hoc use of apt-get
ENV DEBIAN_FRONTEND=dialog


FROM scratch as platform
COPY --from=platform_base / /