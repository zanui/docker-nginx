# zanui/nginx

[![Docker Repository on Quay.io](https://quay.io/repository/zanui/nginx/status)](https://quay.io/repository/zanui/nginx)

NGiNX HTTP server.

## Installation and Usage

    docker pull quay.io/zanui/nginx
    docker run -P quay.io/zanui/nginx

To run with your own NGiNX site configuration file:

    docker run -P -v <sites-enabled-dir>:/etc/nginx/sites-enabled quay.io/zanui/nginx

## Available Tags

* `latest`: Currently NGiNX 1.6.2

## Deployment

To push the Docker image to Quay, run the following command:

    make release

## Copyright and License

MIT License, see [LICENSE](LICENSE.md) for details.

Copyright (c) 2014 [Zanui](https://www.zanui.com.au) and contributors.