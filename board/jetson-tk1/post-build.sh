#!/bin/sh

LINUX_VERSION="4.4.3"
echo "Replacing the nouveau modules"
cp ${TARGET_DIR}/lib/modules/${LINUX_VERSION}/extra/nouveau* ${TARGET_DIR}/lib/modules/${LINUX_VERSION}/kernel/drivers/gpu/drm/nouveau/
