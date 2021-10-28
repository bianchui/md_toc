#!/bin/bash
readonly THIS_DIR="$( cd "$(dirname "${BASH_SOURCE[0]}")" ; pwd -P )"

pushd $THIS_DIR/vendor/toc/js
uglifyjs ztree_toc.js -o ztree_toc.min.js -c toplevel,pure_funcs="_log",drop_console -m keep_fnames=false,toplevel,reserved=[],properties --mangle-props regex=/^_/
