#!/bin/bash

STDOUT() { printf '%q' "$1"; printf ' %q' "${@:2}"; printf '\n'; }
STDERR() { STDOUT "$@" >&2; }
OOPS() { STDERR OOPS: "$@"; exit 23; }
x() { STDERR running: "$@"; "$@"; }
o() { x "$@" || OOPS fail $?: "$@"; }

RUNDIR="${1:-.}"
BRANCH="$2"

[ . = "$RUNDIR" ] || o cd "$RUNDIR"

st="$(o git status --porcelain)" && [ -z "$st" ] || OOPS worktree not clean: "$st"

[ -n "$BRANCH" ] || BRANCH="$(o git rev-parse --abbrev-ref HEAD)" || OOPS cannot get current branch name

o git remote update -p
[ -z "$2" ] || o git checkout "$BRANCH"
o git merge --ff-only "origin/$BRANCH"	# this assumes local BRANCH names are named afger origin
o git clean -f -d			# cleanup merge leftovers, to keep a tidy git status
o git submodule sync --recursive
o git submodule update --init --recursive
o git submodule foreach --recursive git clean -f -d

