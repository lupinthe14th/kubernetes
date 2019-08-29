# kubernetes

## CoreOS

### Container Linux Config Transpiler

#### Building from source

```
$ git clone --branch v0.9.0 https://github.com/coreos/container-linux-config-transpiler
$ cd container-linux-config-transpiler
$ make
$ sodo install -t /usr/bin ./bin/ct
```

See. https://github.com/coreos/container-linux-config-transpiler#building-from-source

#### Generate the Ignitinon JSON

```
$ ct -in-file /ignition.yaml -out-file /ignition.json
```

#### Installing CoreOS Container Linux to disk

To start the installation script with a reference to our Ignition config, run:

```
$ curl -s https://raw.githubusercontent.com/coreos/init/master/bin/coreos-install | sudo bash -s -- -d /dev/sda -i ignition.json -C beta
```

See. https://coreos.com/os/docs/latest/installing-to-disk.html
