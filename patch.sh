#!/bin/bash

ROOT="${PWD}"
REPOSITORIES=(
    'frameworks/native'
    'packages/apps/Camera2'
)

for repository in "${REPOSITORIES[@]}"; do
    cd "${ROOT}/${repository}"

    git am --keep-cr "${ROOT}/patcher/patches/${repository}"/*

    cd "${ROOT}"
done
