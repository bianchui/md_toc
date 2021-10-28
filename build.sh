#!/bin/bash
readonly THIS_DIR="$( cd "$(dirname "${BASH_SOURCE[0]}")" ; pwd -P )"

pushd $THIS_DIR/vendor/toc/js
uglifyjs ztree_toc.js -o ztree_toc.min.js -c pure_funcs="console.log" -m keep_fnames=false --mangle-props regex=/^_/
