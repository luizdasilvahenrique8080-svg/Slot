#!/bin/sh
mkdir -p /home/builder/aports
echo "Clonando o repositório aports..."
git clone --depth=1 https://github.com/alpinelinux/aports.git /home/builder/aports || \
git clone --depth=1 https://gitlab.alpinelinux.org/alpine/aports.git /home/builder/aports
