kind: autotools

sources:
- kind: git
  url: https://github.com/apache/apr-util
  track: 1.7.x
  directory: apr-util/
  ref: 2939bdede7cc59975f0e03cb89d0383140328e4e

- kind: git
  url: https://github.com/apache/apr
  track: 1.7.x
  directory: apr/
  ref: 1bb4b50302a74fd0b651c36dc0232b5ef8069ed6


build-depends:
- platform.bst
- apr.bst
- expat.bst


variables:
  command-subdir: apr-util/
  conf-local: --with-apr=%{prefix}
  autogen: |
    export NOCONFIGURE=1;

    if [ -x %{conf-cmd} ]; then true;
    elif [ -x %{conf-root}/autogen ]; then %{conf-root}/autogen;
    elif [ -x %{conf-root}/autogen.sh ]; then %{conf-root}/autogen.sh;
    elif [ -x %{conf-root}/bootstrap ]; then %{conf-root}/bootstrap;
    elif [ -x %{conf-root}/bootstrap.sh ]; then %{conf-root}/bootstrap.sh;
    elif [ -x %{conf-root}/buildconf ]; then %{conf-root}/buildconf;
    else autoreconf -ivf %{conf-root};
    fi