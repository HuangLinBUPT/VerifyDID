#!/bin/bash
tamarin-prover +RTS -N24 -RTS --Output=proof --output=$1.spthy "${@:2}" DIDSuperApp.spthy > $1.log 2>&1