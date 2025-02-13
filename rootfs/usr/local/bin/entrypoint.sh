#!/bin/ash
  echo "${1}" | sarif-to-markdown-table > ${APP_ROOT}/sarif.md
  echo "markdown=$(cat ${APP_ROOT}/sarif.md)" >> $GITHUB_OUTPUT