#!/bin/bash
set -ex

# TODO: Webauthn is not included for mac/win since those are just repacks
WEBAUTHN_VERSION="d4fbe44"
ECDSA_VERSION="044ed2c"
CBOR_VERSION="7eba332"

# TODO: All commented parts are related to postgis, in the future include in build
# POSTGIS_VERSION="3.2.0"
# PROJ_VERSION="8.2.1"
# PROJ_DATUMGRID_VERSION="1.8"
# GEOS_VERSION="3.7.2"
# GDAL_VERSION="2.4.1"

GIT_ROOT=$PWD

TRG_DIR=$PWD/bundle
mkdir -p "$TRG_DIR"

ln -snf /usr/share/zoneinfo/Etc/UTC /etc/localtime
echo "Etc/UTC" > /etc/timezone
apt-get update
apt-get install -y --no-install-recommends \
  ca-certificates \
  wget \
  bzip2 \
  xz-utils \
  gcc \
  g++ \
  make \
  pkg-config \
  libc-dev \
  libicu-dev \
  libossp-uuid-dev \
  libxml2-dev \
  libxslt1-dev \
  libssl-dev \
  libz-dev \
  libperl-dev \
  python3-dev \
  tcl-dev \
  curl

wget -O patchelf.tar.gz "https://nixos.org/releases/patchelf/patchelf-0.9/patchelf-0.9.tar.gz"
mkdir -p /usr/src/patchelf
tar -xf patchelf.tar.gz -C /usr/src/patchelf --strip-components 1
cd /usr/src/patchelf
cp "$GIT_ROOT"/config.guess config.guess
cp "$GIT_ROOT"/config.sub config.sub
./configure --prefix=/usr/local
make -j$(nproc)
make install
wget -O postgresql.tar.bz2 "https://ftp.postgresql.org/pub/source/v$PG_VERSION/postgresql-$PG_VERSION.tar.bz2"
mkdir -p /usr/src/postgresql
tar -xf postgresql.tar.bz2 -C /usr/src/postgresql --strip-components 1
cd /usr/src/postgresql
cp "$GIT_ROOT"/config.guess config/config.guess
cp "$GIT_ROOT"/config.sub config/config.sub
./configure \
  CFLAGS="-Os -DMAP_HUGETLB=0x40000" \
  PYTHON=/usr/bin/python3 \
  --prefix=/usr/local/pg-build \
  --enable-integer-datetimes \
  --enable-thread-safety \
  --with-ossp-uuid \
  --with-icu \
  --with-libxml \
  --with-libxslt \
  --with-openssl \
  --with-perl \
  --with-python \
  --with-tcl \
  --without-readline
make -j$(nproc) world
make install-world
make -C contrib install
# apt-get install -y curl libjson-c-dev libsqlite3-0 libsqlite3-dev sqlite3 unzip
# mkdir -p /usr/src/proj
#   curl -sL "https://download.osgeo.org/proj/proj-$PROJ_VERSION.tar.gz" | tar -xzf - -C /usr/src/proj --strip-components 1
#   cd /usr/src/proj
#   curl -sL "https://download.osgeo.org/proj/proj-datumgrid-$PROJ_DATUMGRID_VERSION.zip" > proj-datumgrid.zip
#   unzip -o proj-datumgrid.zip -d data
#   cp $GIT_ROOT/config.guess config.guess
#   cp $GIT_ROOT/config.sub config.sub
#   ./configure --disable-static --prefix=/usr/local/pg-build --without-curl --disable-tiff
#   make -j$(nproc)
#   make install
# mkdir -p /usr/src/geos
#   curl -sL "https://download.osgeo.org/geos/geos-$GEOS_VERSION.tar.bz2" | tar -xjf - -C /usr/src/geos --strip-components 1
#   cd /usr/src/geos
#   cp $GIT_ROOT/config.guess config.guess
#   cp $GIT_ROOT/config.sub config.sub
#   ./configure --disable-static --prefix=/usr/local/pg-build
#   make -j$(nproc)
#   make install
# mkdir -p /usr/src/gdal
#   curl -sL "https://download.osgeo.org/gdal/$GDAL_VERSION/gdal-$GDAL_VERSION.tar.xz" | tar -xJf - -C /usr/src/gdal --strip-components 1
#   cd /usr/src/gdal
#   cp $GIT_ROOT/config.guess config.guess
#   cp $GIT_ROOT/config.sub config.sub
#   ./configure --disable-static --prefix=/usr/local/pg-build
#   make -j$(nproc)
#   make install
# mkdir -p /usr/src/postgis
#   curl -sL "https://postgis.net/stuff/postgis-$POSTGIS_VERSION.tar.gz" | tar -xzf - -C /usr/src/postgis --strip-components 1
#   cd /usr/src/postgis
#   cp $GIT_ROOT/config.guess config.guess
#   cp $GIT_ROOT/config.sub config.sub
#   ./configure \
#       --prefix=/usr/local/pg-build \
#       --with-pgconfig=/usr/local/pg-build/bin/pg_config \
#       --with-geosconfig=/usr/local/pg-build/bin/geos-config \
#       --with-projdir=/usr/local/pg-build \
#       --with-gdalconfig=/usr/local/pg-build/bin/gdal-config
#   make -j$(nproc)
#   make install
mkdir -p /usr/src/pg-ecdsa
  curl -sL "https://github.com/ameensol/pg-ecdsa/archive/$ECDSA_VERSION.tar.gz" | tar -xzf - -C /usr/src/pg-ecdsa --strip-components 1
  cd /usr/src/pg-ecdsa
  cp "$GIT_ROOT"/config.guess config.guess
  cp "$GIT_ROOT"/config.sub config.sub
  PATH="/usr/local/pg-build/bin:$PATH" make -j$(nproc)
  PATH="/usr/local/pg-build/bin:$PATH" make install
mkdir -p /usr/src/pg-cbor
  curl -sL "https://github.com/truthly/pg-cbor/archive/$CBOR_VERSION.tar.gz" | tar -xzf - -C /usr/src/pg-cbor --strip-components 1
  cd /usr/src/pg-cbor
  cp "$GIT_ROOT"/config.guess config.guess
  cp "$GIT_ROOT"/config.sub config.sub
  PATH="/usr/local/pg-build/bin:$PATH" make -j$(nproc)
  PATH="/usr/local/pg-build/bin:$PATH" make install
mkdir -p /usr/src/pg-webauthn
  curl -sL "https://github.com/truthly/pg-webauthn/archive/${WEBAUTHN_VERSION}.tar.gz" | tar -xzf - -C /usr/src/pg-webauthn --strip-components 1
  cd /usr/src/pg-webauthn
  cp "$GIT_ROOT"/config.guess config.guess
  cp "$GIT_ROOT"/config.sub config.sub
  PATH="/usr/local/pg-build/bin:$PATH" make -j$(nproc)
  PATH="/usr/local/pg-build/bin:$PATH" make install
cd /usr/local/pg-build
ls -lah *
mkdir -p ./lib
(cp /usr/lib/libossp-uuid.so.16 ./lib || cp /usr/lib/*/libossp-uuid.so.16 ./lib)
cp /lib/*/libz.so.1 /lib/*/liblzma.so.5 /usr/lib/*/libxml2.so.2 /usr/lib/*/libxslt.so.1 ./lib
cp /lib/*/libssl.so.* /lib/*/libcrypto.so.* ./lib || cp /usr/lib/*/libssl.so.* /usr/lib/*/libcrypto.so.* ./lib || cp /usr/lib/*/libssl3.so.* /usr/lib/*/libcrypto.so.* ./lib
cp -a /usr/lib/*/libicudata.so* /usr/lib/*/libicuuc.so* /usr/lib/*/libicui18n.so* ./lib
# cp --no-dereference /lib/*/libjson-c.so* /usr/lib/*/libsqlite3.so* ./lib
find ./bin -type f -not -name "geos-config" -not -name "gdal-config" -print0 | xargs -0 -n1 patchelf --set-rpath "\$ORIGIN/../lib"
find ./lib -maxdepth 1 -type f -name "*.so*" -print0 | xargs -0 -n1 patchelf --set-rpath "\$ORIGIN"
find ./lib/postgresql -maxdepth 1 -type f -name "*.so*" -print0 | xargs -0 -n1 patchelf --set-rpath "\$ORIGIN/.."
mkdir -p /usr/local/pg-dist
tar -cJvf /usr/local/pg-dist/postgres-linux-debian.txz --hard-dereference ./*
