#!/bin/bash

STDOUT() { printf '%q' "$1"; printf ' %q' "${@:2}"; printf '\n'; }
STDERR() { STDOUT "$@" >&2; }
OOPS() { STDERR OOPS: "$@"; exit 23; }
x() { STDERR running: "$@"; "$@"; }
o() { x "$@" || OOPS fail $?: "$@"; }

MESSAGE="${1:-autocommit}"

o git add "${@:2}"
st="$(o git status --porcelain)" && [ -z "$st" ] || o git commit -m "${1:-autocommit}" -- "${@:2}"

