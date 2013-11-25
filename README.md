Poorman's disposable CI server

# Required

* vagrant
* virtualbox
* rsync

# How to use

```console
$ git clone [this repo]
$ cd repo
repo/$ ./ssh.sh
```

# Infomation

1. `ssh.sh` call `sync/ci.sh`
2. `sync/` is rsynced to Vagrant VM (CoreOS)
3. CoreOS build own VM with Dockerfile
4. CoreOS run VM with `-v sync:/sync`, so your `sync/` will be trip through Host, Guest(CoreOS), Guest's Guest(VM on CoreOS)


# Customize

See `sync/ci.sh` and `sync/Dockerfile`.
