## Overview

This is the documentation and configuration for my home infrastructure.

#### Breakdown of this project:

- `services` - individual directories for each service that I run, each contains needed configuration files and includes a `docker-compose.yaml` file for starting services
  - `caddy` - reverse proxy for accessing service from outside my network
  - `homeassistant` - runs homeassistant



#### Servers

1. Docker container host
2. FreeNAS file server