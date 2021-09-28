#! /usr/bin/env bash

terraform apply -auto-approve
sleep 3
$(terraform output ssh_connection_string | tr -d '"')

function cleanup {
    echo Exiting, cleaning up.
    terraform destroy -auto-approve
  }

trap cleanup EXIT

