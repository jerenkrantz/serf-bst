kind: autotools

sources:
- kind: git
  url: https://github.com/openssl/openssl
  track: OpenSSL_1_1_1-stable

  ref: a5ae257ed2d046105cff99d72d2d1335091a3515
build-depends:
- platform.bst

variables:
  conf-cmd: "%{conf-root}/config"
  conf-args: "--prefix=%{prefix} --libdir=%{libdir} %{conf-extra} %{conf-global} %{conf-local}"
