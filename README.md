# 11notes/action-sarif-to-markdown

This action converts a provided sarif file into a markdown table.

## Inputs

## `sarif_file`

**Required** sarif file to parse.

## Outputs

## `markdown`

Markdown output.

## Example usage

uses: 11notes/action-sarif-to-markdown@v1
with:
  sarif_file: ${{ steps.scan.outputs.sarif }}