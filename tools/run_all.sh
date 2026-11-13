#!/bin/bash
if [ "$1" == "phase0" ]; then
    echo "Running Phase 0 Tests..."
    /home/john-gamal/renode_1.17.0-portable/renode-test platform/phase0.robot
    exit $?
fi