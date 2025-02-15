#!/bin/bash
./batch-run.sh Executability  --derivcheck-timeout=0  -D=exec --prove=Executability \
--prove=SourcesID --verbose
./batch-run.sh Goal1 --derivcheck-timeout=0 -D=goal1 --prove=SanityCheckCodeSecrcy \
--prove=SanityCheckTokensecrcy \
--prove=TokenSecrecy \
--prove=CodeSecrecy \
--prove=SourcesID \
--prove=userinfoSecrecy \
--prove=claimsSecrecy \
--prove=VCSecrecy --verbose
./batch-run.sh Goal2  --derivcheck-timeout=0  -D=goal2 \
--prove=VCIntegrity \
--prove=SourcesID --verbose
./batch-run.sh Goal3 --derivcheck-timeout=0 -D=goal3 --prove=UniquePass \
--prove=SourcesID --verbose
./batch-run.sh Goal4 --derivcheck-timeout=0 -D=goal4 --prove=LegalPresentation \
--prove=SourcesID --verbose
./batch-run.sh Goal5 --derivcheck-timeout=0 -D=goal5 --prove=weakest_SelectiveDisclosure \
--prove=SourcesID \
--prove=sd_auth_storeVC \
--prove=auxlemma \
--prove=sd_auth_issueVC --verbose