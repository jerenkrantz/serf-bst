kind: cmake

sources:
- kind: git
  url: https://github.com/apache/serf
  track: 1.4.x

  ref: 591f87d38ffb8e57b88fb84f84cf1ec66ba9ded7
build-depends:
- platform.bst
- apr.bst
- apr-util.bst
#- expat.bst
#- openssl.bst
