#!/bin/bash
./batch-run.sh Executability  --derivcheck-timeout=0  -D=exec --prove=Executability
./batch-run.sh Goal1 --derivcheck-timeout=0 -D=secrecy --prove=SanityCheckCodeSecrcy \
--prove=SanityCheckTokensecrcy \
--prove=CodeSecrecy \
--prove=TokenSecrecy \
--prove=HolderClaimsSecrecy
./batch-run.sh Goal2  --derivcheck-timeout=0  -D=integrity --prove=NonInjectAuthVCIssurance \
--prove=integrityOfVC
./batch-run.sh Goal3 --derivcheck-timeout=0 -D=goal3 --prove=UniquenessOfRequest
./batch-run.sh Goal5 --derivcheck-timeout=0 -D=goal5 --prove=SelectiveDisclosure \
--prove=StrictSelectiveDisclosure