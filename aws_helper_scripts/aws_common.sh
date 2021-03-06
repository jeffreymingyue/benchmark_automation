#!/bin/bash
# Helper script that wrap aws commands
# Common configuration and functions

# The first time this is run on a system, AWS_PROFILE will be empty. It will be replaced by sed when setup_env.sh runs 
AWS_PROFILE=
AWS_CLI="$(which aws) --profile=$AWS_PROFILE"

# tmp files needed to manage benchmark instances will be created on this path, using a subdirectory per benchmark
AWS_BENCHMARKS_WORKSPACE=~/percona/benchmarks

check_if_configured()
{
   [ -z "$AWS_PROFILE" ] && { $(dirname $0)/setup_env.sh; exit; }
}
