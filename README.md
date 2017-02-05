# ZNC IRC bouncer within a Docker container
This has been created so it can be run on a Raspberry Pi but should also run on x86.

## Docker Image

### Download from Docker Hub
```
docker pull manishlad/rpi-znc
```

### Or compile locally
```
docker build -t manishlad/rpi-znc .
```

## Prepare config file
```
mkdir -p $HOME/znc/configs
```
Create a `znc.conf` file or use the template config from the [source repository](https://github.com/manishlad/rpi-znc/blob/master/znc/configs/znc.conf "znc.conf")


## Run
```
docker run -d -v $HOME/znc:/home/znc/.znc -p 12345:12345 manishlad/rpi-znc
```


## ZNC Configuration
* Visit `http://<host>:12345`
* Default user/pass: `admin`/`admin`

