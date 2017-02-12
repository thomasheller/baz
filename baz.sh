#!/bin/sh
#
# Build for all platforms and architectures.
# Creates zip/tarball releases in build/ folder.
# README's and LICENSE are added.

set -e

go get github.com/mitchellh/gox
gox -output='builds/{{.Dir}}_{{.OS}}_{{.Arch}}/{{.Dir}}'

cd builds

rm -rf *.zip *.tar.gz

for i in *
do
  for meta in README README.md LICENSE
  do
    if [ -f ../$meta ]
    then
      cp ../$meta $i/
    else
      rm -f $i/$meta
    fi
  done
  case $i in
    *windows*) zip -r $i.zip $i/ ;;
    *) tar vzcf $i.tar.gz $i/ ;;
  esac
done

