# serf-bst

[Apache Serf](https://serf.apache.org/) Buildstream project proof-of-concept

This is currently a work-in-progress.

# Base Platform Instructions (Docker layer)

In order to build this project with Buildstream, we require a base platform.  This
platform is currently described in `platform/Dockerfile` and must be accessible
as `platform/layer.tar`. 

```
cd platform
docker build .
docker save <image id> -o platform.tar
tar xf platform.tar
mv */layer.tar .
```

See [Buildstream bst-plugins-container Issue 21](https://gitlab.com/BuildStream/bst-plugins-container/-/issues/21) for potential improvements to this workflow.

# Project build

```
# Required to sync the platform created above with the local state
bst source track platform.bst
# Build the project and dependencies
bst build serf.bst
```

# Other Links

## VS Code Devcontainer
See [VS Code Devcontainer for Buildstream](https://github.com/sstriker/vscode-bst-dev-env)
to get a running Buildstream 2.x environment under VS Code.  This devcontainer
can then be used to build this project.

## Docker buildx

Alternatively, you can use the `Dockerfile` in this repository to build.  However, Buildstream 2.x currently requires running under a privileged container to support FUSE; therefore, this requires `docker buildx`.

If you are on Docker Desktop, you must enable the [buildx experimental options](https://docs.docker.com/buildx/working-with-buildx/) and creating a builder with insecure options enabled.

```
$ docker buildx create --buildkitd-flags "--allow-insecure-entitlement security.insecure" --use

$ docker buildx build --allow security.insecure --load -t serf-bst .
```

(It takes about 340s to build the container this way.)