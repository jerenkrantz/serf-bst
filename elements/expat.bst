kind: autotools

sources:
- kind: git
  url: https://github.com/libexpat/libexpat
  track: master

  ref: e976867fb57a0cd87e3b0fe05d59e0ed63c6febb
build-depends:
- platform.bst

variables:
  command-subdir: expat/