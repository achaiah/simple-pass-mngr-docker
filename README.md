# simple-pass-mngr-docker
Dockerized version of the awesome [simple password manager](https://github.com/rnentjes/simple-password-manager)!

This is based off a slim version of JRE11 on alpine linux. Prebuilt container can be found on [dockerhub](https://hub.docker.com/r/achaiah/simple-password-manager) or you can build it yourself using the Dockerfile.

Current docker container will download and run v1.7.6 of SPM but you can change that by adjusting the variable `SPM_VER` inside the Dockerfile.

Note that you really will want to make sure to save the password file in some permanent location so that you don't lose it as soon as the docker container shuts down. You can either map a volume into the docker container (with `-v`) or configure environment variables to specify a database connection (with `-e`). SPM can be configured with these settings:

```
    port                = 3456
    connectionTimeout   = 30000

    jdbcDriver          = "org.h2.Driver"
    jdbcConnectionUrl   = "h2:file:"
    jdbcUser            = "sa"
    jdbcPassword        = ""
```
