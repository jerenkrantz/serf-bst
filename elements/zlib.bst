kind: cmake

sources:
- kind: git
  url: https://github.com/madler/zlib
  track: master

  ref: cacf7f1d4e3d44d871b605da3b647f07d718623f
build-depends:
- platform.bst
