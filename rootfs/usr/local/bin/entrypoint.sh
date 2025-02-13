#!/bin/ash
  echo "${1}" | sarif-to-markdown-table > ${APP_ROOT}/SARIF.md
  echo "markdown=$(cat ${APP_ROOT}/SARIF.md)" >> $GITHUB_OUTPUT