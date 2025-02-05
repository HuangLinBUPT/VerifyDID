#!/bin/bash
./batch-run.sh Executability  --derivcheck-timeout=0  -D=exec --prove=Executability \
--prove=SourcesID 
./batch-run.sh Goal1 --derivcheck-timeout=0 -D=goal1 --prove=SanityCheckCodeSecrcy \
--prove=SanityCheckTokensecrcy \
--prove=SourcesID \
--prove=CodeSecrecy \
--prove=TokenSecrecy \
--prove=ClaimsSecrecy \
--prove=secrecyOfCredential
./batch-run.sh Goal2  --derivcheck-timeout=0  -D=goal2 --prove=NonInjectAuthVCIssurance \
--prove=integrityOfVC \
--prove=SourcesID 
./batch-run.sh Goal3 --derivcheck-timeout=0 -D=goal3 --prove=UniquePass \
--prove=SourcesID 
./batch-run.sh Goal4 --derivcheck-timeout=0 -D=goal4 --prove=LegalPresentation \
--prove=SourcesID 
./batch-run.sh Goal5 --derivcheck-timeout=0 -D=goal5 --prove=SelectiveDisclosure \
--prove=SourcesID \
--prove=StrictSelectiveDisclosure