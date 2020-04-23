# serf-bst

[Apache Serf](https://serf.apache.org/) Buildstream project proof-of-concept

This is currently a work-in-progress.

# Docker Platform Instructions

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

See [VS Code Devcontainer for Buildstream](https://github.com/sstriker/vscode-bst-dev-env)
to get a running Buildstream 2.x environment under VS Code.  This devcontainer
can then be used to build this project.