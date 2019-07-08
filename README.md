
# Intro

This repository provides a collection of artifacts: files that can be a subject of
the interest of binary analysis tools either because they are already known for the
presence of certain bugs and vulnerabilities or because they are parts of famous/critical
applications and needed to be examined.

Every artifact can be found in the docker container at `/artifact`.

## Structure and naming

The repository has a flat structure meaning that every directory contains only one `Dockerfile`.
And the name of the directory is used as a tag for an image. Also, directory names can be used
as targets to the make commands (see below).
All images are named as `$DOCKERUSER/bap-artifacts`, where `DOCKERUSER` is `binaryanalysisplatform`
by default. Putting all together, the image built from the docker file at `foo-1.2.3/Dockerfile`
will be named as `$DOCKERUSER/bap-artifacts:foo-1.2.3`.

## Building

### make build
Builds all artifacts. To build a specific one, use `make build dir-name`.
To supersede user name, call `DOCKERUSER=foo make build`

### make push
Pushes all artifacts into the `$DOCKERUSER/bap-artifacts` repository.
To push a specific image, call `make push dir-name`.
To supersede user name, call `DOCKERUSER=foo make push`. The later makes
sense only if there are images that were built under the same docker user.

## Adding new artifact

There are the next considerations about images with artifacts:
- every image should contain only one artifact at `/artifact`
- an image should be as slim as it possible

Keeping that in mind, all you need to add a new artifact is:
- create a folder
- add a docker file into this folder with all instructions
  needed to build an artifact
- add few docker instructions to create a small image with
  required structure, e.g.:
  ```
  FROM no-matter-what as builder

  # build instructions
  ...

  FROM debian:stable-slim
  WORKDIR /
  COPY --from=builder /path/to/file /artifact
  ```
