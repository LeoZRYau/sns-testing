#!/usr/bin/env bash

set -euo pipefail

cd -- "$(dirname -- "${BASH_SOURCE[0]}")"

# put your dfx identity here
export DX_IDENT="default"

# if you don't export CANISTER_TEST or set its value to "_test",
# then the test flag is set for NNS and SNS governance canisters;
# if you export CANISTER_TEST to be the empty string "",
# then the test flag is not set.
# export CANISTER_TEST=""

# you can find available II releases here:
# https://github.com/dfinity/internet-identity/tags
export II_RELEASE="release-2023-07-21"

# you can find NNS proposals upgrading system canisters here:
# https://dashboard.internetcomputer.org/governance?topic=TOPIC_NETWORK_CANISTER_MANAGEMENT
# NNS proposals to upgrade NNS frontend dapp are called "Upgrade Nns Canister: qoctq-giaaa-aaaaa-aaaea-cai"
export NNS_DAPP_RELEASE="nightly-2023-08-08"

# only edit IC_COMMIT to a commit to master with disk image obtained via:
# $ ./gitlab-ci/src/artifacts/newest_sha_with_disk_image.sh origin/master
# from the IC monorepo: https://github.com/dfinity/ic
# if you change IC_COMMIT, then you need to rerun `source install.sh`
export IC_COMMIT="f8dfb620a62672cd863689f7a29f164aa3e656a7"

export TESTNET="local"
