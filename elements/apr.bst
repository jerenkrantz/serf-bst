kind: autotools

sources:
- kind: git
  url: https://github.com/apache/apr
  track: 1.7.x

  ref: 1bb4b50302a74fd0b651c36dc0232b5ef8069ed6


build-depends:
- platform.bst


# Add in buildconf to autogen variables
variables:
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