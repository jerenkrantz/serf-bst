kind: autotools

sources:
- kind: git
  url: https://github.com/apache/apr-util
  track: 1.7.x

  ref: 2939bdede7cc59975f0e03cb89d0383140328e4e
build-depends:
- platform.bst
- apr.bst
