#!/bin/sh

# Configuração do ambiente de build do Slotos
export ARCH=x86_64
export BOOTSTRAP=tarball

# Prepara diretórios necessários
mkdir -p /home/builder/aports /home/builder/pkg /home/builder/src

# Clona o aports utilizando o repositório oficial do GitHub como alternativa principal para evitar erros 128
echo "Clonando o repositório aports..."
git clone --depth=1 https://github.com/alpinelinux/aports.git /home/builder/aports || \
git clone --depth=1 https://gitlab.alpinelinux.org/alpine/aports.git /home/builder/aports

# Configuração e execução do mkimage do Alpine
cd /home/builder/aports/scripts
./mkimage.sh --profile slotos || echo "Falha ao executar o mkimage"
