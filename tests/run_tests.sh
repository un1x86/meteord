#!/bin/bash
set -e
set -x

export NODE_VERSION=${NODE_VERSION:-4.6.1}

bash ./build_it.sh

bash ./test_meteor_app.sh
bash ./test_meteor_app_with_devbuild.sh

bash ./test_bundle_local_mount.sh

# These use BUNDLE_URL from S3
bash ./test_bundle_web.sh
bash ./test_binary_build_on_base.sh
bash ./test_binary_build_on_bin_build.sh

bash ./test_phantomjs.sh
bash ./test_no_app.sh
