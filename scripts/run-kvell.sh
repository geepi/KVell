#!/bin/bash

echo "3G" > /sys/fs/cgroup/memory/palm/memory.limit_in_bytes
./scripts/run-aws.sh &
pid=$!
echo $pid |tee -a /sys/fs/cgroup/memory/palm/cgroup.procs

