#!/usr/bin/env bash

set -e

if [ -z "$PHPENV_ROOT" ]; then
  PHPENV_ROOT="$HOME/.phpenv"
fi

if [ ! -d "$PHPENV_ROOT" ]; then
  echo "Directory not found ${PHPENV_ROOT}" >&2
  echo "Make sure the phpenv is installed. phpenv::https://github.com/CHH/phpenv" >&2
  exit 1
fi

EXTENSION_NAME="rbenv-apache-version"
DIR=`dirname ${0}`

echo "copy ${EXTENSION_NAME} to ${PHPENV_ROOT}/libexec"
cp "${DIR}/extensions/${EXTENSION_NAME}" "${PHPENV_ROOT}/libexec"
chmod +x "${PHPENV_ROOT}/libexec/${EXTENSION_NAME}"

echo "Success."
echo
echo "Mac OS X"
echo "export PHPENV_APACHE_MODULE_PATH=\"[apache_install_dir]/libexec\""
echo "ex) export PHPENV_APACHE_MODULE_PATH=\"/usr/local/Cellar/httpd/2.2.23/libexec\""
echo
echo "Add above line at the end of your ~/.bashrc \
and restart your shell"
echo
echo "Usage: phpenv apache-version <version>"
echo
