#!/bin/bash
tamarin-prover +RTS -N24 -RTS --Output=proof --output=./proof/$1.spthy "${@:2}" DIDModel.spthy