#!/bin/bash

set -e

GOARCH=amd64
GOOS=${1:-"linux"}
build_dir=${2:-"bin"}
rel_dir=${3:-"release"}
version=${4:-$VERSION}

bin="fox"
if [ "$GOOS" == "windows" ]; then
    bin="fox.exe"
fi
tar="${bin}-${version}-${GOOS}-${GOARCH}.tar.gz"

if [ -z "${version}" ]; then
    echo "Environment variable VERSION must be set for release target"
    exit 1
fi

go build -o "${build_dir}/${bin}" -ldflags "-s -w" .

mkdir -p "${rel_dir}"
tar -czvf "${rel_dir}/${tar}" --transform='s,.*/,,' "${build_dir}/${bin}" LICENSE README.md 1>/dev/null
(
    cd "${rel_dir}"
    sha256sum "${tar}" >"${tar}.sha256sum"
)
