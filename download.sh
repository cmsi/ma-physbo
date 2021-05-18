#!/bin/sh
. $(dirname $0)/path.sh

if [ -f physbo_$VERSION_BASE.orig.tar.gz ]; then
  exit 127
fi
wget https://github.com/issp-center-dev/PHYSBO/archive/refs/tags/v${VERSION_BASE}.tar.gz
tar zxvf v$VERSION_BASE.tar.gz
mv -f PHYSBO-$VERSION_BASE physbo-$VERSION_BASE
tar zcvf physbo-$VERSION_BASE.tar.gz physbo-$VERSION_BASE
rm -rf physbo-$VERSION_BASE v$VERSION_BASE.tar.gz
