#!/usr/bin/env bash

bastion=$(terraform output ip)
echo "{\"all\":{\"hosts\":[${bastion}],\"vars\":{\"ansible_user\":\"ec2-user\"}}}"
