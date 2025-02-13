# 11notes/action-sarif-to-markdown

This action converts a provided sarif file into a markdown table.

## Inputs

## `sarif_file`

**Required** sarif file to parse.

## Outputs

## `markdown`

Markdown output.

## Example usage
```yml
- name: grype / scan
  id: scan
  uses: anchore/scan-action@v6
  with:
    image: nginx:stable
    severity-cutoff: high

- name: grype / sarif to markdown
  if: success() || failure()
  id: sariftomarkdown
  uses: 11notes/action-sarif-to-markdown@v1
  with:
    sarif_file: ${{ steps.scan.outputs.sarif }}

- name: grype / report / print
  run: cat ${{ steps.sariftomarkdown.outputs.markdown }}
```