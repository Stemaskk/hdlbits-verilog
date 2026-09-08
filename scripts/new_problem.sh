#!/usr/bin/env bash
# Scaffold a new HDLBits problem folder from templates/.
#
# Usage: ./scripts/new_problem.sh <category/path> <problem_name>
# Example: ./scripts/new_problem.sh circuits/combinational/basic_gates wire

set -euo pipefail

if [[ $# -ne 2 ]]; then
    echo "Usage: $0 <category/path> <problem_name>" >&2
    exit 1
fi

CATEGORY="$1"
NAME="$2"
ROOT="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
DEST="$ROOT/$CATEGORY/$NAME"

if [[ -e "$DEST" ]]; then
    echo "Error: $DEST already exists" >&2
    exit 1
fi

mkdir -p "$DEST"
sed "s/PROBLEM_NAME/$NAME/g; s#CATEGORY_PATH#$CATEGORY#g" "$ROOT/templates/README.md" > "$DEST/README.md"
cp "$ROOT/templates/solution.v" "$DEST/$NAME.v"

echo "Created $DEST"
