#!/usr/bin/env bash

set -euo pipefail

snakemake --slurm --profile "profiles/slurm-example" "$@"
