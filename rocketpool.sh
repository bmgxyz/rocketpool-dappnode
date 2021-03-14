#!/usr/bin/env bash

DAPPNODE_HOST="" # CHANGE ME
DAPPNODE_USERNAME="dappnode"
DAPPNODE_API_CONTAINER="DAppNodePackage-api.rocketpool-unofficial.public.dappnode.eth"

ssh $DAPPNODE_USERNAME@$DAPPNODE_HOST docker exec $DAPPNODE_API_CONTAINER /go/bin/rocketpool api $@ | python -m json.tool

