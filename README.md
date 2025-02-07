# Epitech dump

## Ubuntu Autoinstall script

Automatic setup of [epitech dump](https://github.com/Epitech/dump) throw Ubuntu 24 installation

### Docker setup

Get the docker image

```bash
docker pull ghcr.io/theodoregozard/nginx-autoinstall:latest
```

Docker run command :

```bash
docker run -it -p 8080:80 docker ghcr.io/theodoregozard/nginx-autoinstall:latest
```

docker-compose file :

```yaml
services:
    nginx:
        image: docker pull ghcr.io/theodoregozard/nginx-autoinstall:latest
        restart: always
        ports:
            - 8080:80
```

### Usage

Inside Ubuntu 24 installation setup, choose automated installation and enter the link of yaml configuration file

example : ``` http://10.0.0.2:8080/autoinstall.yaml ```
