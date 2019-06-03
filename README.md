
# Intro

This repository provides a collection of artifacts: files that either known
for the presence of certain bugs and volnurabilities or are
famous applications and can be a subject of interest of the binary analysis tools.

Every artifact is represented by a docker file and an image built from it will contain
only one entry at `/artifact/name-of-artifact`, e.g. `/artifact/openssl-1.1.0`.

## Images naming scheme

All images are tagged according to the path of the `Dockerfile` relativly to the repository root,
e.g. the image built from docker file at `foo/bar/1.2.3/Dockerfile` will be tagged as `foo-bar-1.2.3`.
Also, all images places in `$DOCKERUSER/bap-artifacts` repository, where `DOCKERUSER` is
`binaryanalysisplatform` by default and can be overriden (see below).


## Structure

`build` directory contains docker files that are required for building artifacts from scratch.
Such images are not supposed to be used otherwise then for copying artifacts via
`COPY --from=... src /artifact/` command.
The naming scheme for these images is the same, therefore they will be prefixed with `build-`.
All the other directories contains artifacts, possible accomplished with version:

```
$: tree openssl
openssl/
└── 1.1.0
    └── Dockerfile
```

# Table of content
The repository contains the next artifacts:
- httpd 2.4.18
- libbfd 2.31.1
- lighttpd 1.4.15
- nginx 1.7
- ntpd 4.2.8p5
- ntpdc 4.2.8p5
- openssl 1.1.0
- samba 4.7.6
- smtpd 5.7.3p2
- sqlite3 3.27.2
- sshd 7.3.p1
- swfc 0.9.2
- swfcombine 0.9.2
- swfextract 0.9.2
- tshark 2.6.0
- wav2swf 0.9.2
- wpa_cli 2.2
- wpa_supplicant 2.2


## Building

There are two commands for `make`: `build` and `push`.

### make build

builds all artifacts. Every image is associated with the `$DOCKERUSER/bap-artifacts` repository,
where `DOCKERUSER` is `binaryanalysisplatform` by default and may be overriden, e.g.:
`make build DOCKERUSER=foo`

### make push
pushes all artifacts to the `$DOCKERUSER/bap-artifacts` repository.
`build-` images are skipped.
