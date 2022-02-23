#!/bin/sh

sudo -s

rm -rf mesonbuild install
export PREFIX="/usr"
meson -Dprefix="${PREFIX}" -Dlibdir="${PREFIX}/lib64" -Dzsh-completions=true mesonbuild
export DESTDIR="/"
ninja -C mesonbuild install
ldd /usr/bin/playerctl

# ninja -C mesonbuild uninstall
