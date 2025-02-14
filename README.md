# 11notes/action-sarif-to-markdown

This action converts a provided sarif file into a markdown table.

## Inputs

## `sarif_file`

**Required** sarif file to parse. Must be in /github/home inside the container image.

## Outputs

## `markdown`

Markdown output. Will also output sarif.md into /github/home > ${{ runner.temp }}/_github_home

## Example usage
```yml
- name: grype / scan
  id: scan
  uses: anchore/scan-action@v6
  with:
    image: nginx:stable
    severity-cutoff: high
    output-format: 'sarif'
    output-file: ${{ runner.temp }}/_github_home/grype.sarif

- name: grype / sarif to markdown
  if: success() || failure()
  id: sarif-to-markdown
  uses: 11notes/action-sarif-to-markdown@v1.0.0
  with:
    sarif_file: grype.sarif

- name: grype / report / print
  run: echo ${{ steps.sarif-to-markdow.outputs.markdown }}
```