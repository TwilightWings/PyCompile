#!/bin/bash
echo "py_compile_output=${INPUT_FILENAME}" >> "${GITHUB_OUTPUT}"
python3 -m compileall -b ${INPUT_FILENAME}
