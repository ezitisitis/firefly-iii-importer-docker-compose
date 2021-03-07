# Firefly III docker-compose

This repository contains docker-compose files for Firefly III app and Firefly 
III CSV importer.

## Setup

### Local
Execute pre-install script.

```bash
bash pre-install.sh
```

After that run shell script for the according app.

**Firefly III**
```bash
bash install_app.sh
```

**CSV importer**
```bash
bash install_importer.sh
```

### Production

#### Run

To run Firefly III execute:
```bash
docker-compose -f docker-compose-firefly.yml up -d
```

To run Firefly III CSV importer execute:
```bash
docker-compose -f docker-compose-importer.yml up -d
```

#### Stop

To stop Firefly III execute:
```bash
docker-compose -f docker-compose-firefly.yml stop
```

To stop Firefly III CSV importer execute:
```bash
docker-compose -f docker-compose-importer.yml stop
```

## TODO

* Add missing links to README.md
* Add prerequisites
* Add base/helper for production install