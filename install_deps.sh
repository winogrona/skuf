#!/bin/bash
if pacman -Q base-devel &>/dev/null; then
    _CC=clang
else
    _CC=gcc
fi

set -e
set -x

# $@ for possible ./install_deps.sh -y -u
pacman -S --noconfirm "$@" \
        arch-install-scripts \
        archiso \
        base \
        base-devel \
        binutils \
        $_CC \
        musl \
        linux-api-headers \
        kernel-headers-musl \
        patch

echo "Done."

# vim: set ft=sh ts=4 sw=4 et:
