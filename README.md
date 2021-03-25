# Run latexmk in given directory

This action compiles all LaTeX files residing in given directory

## Inputs

### `directory`

**Optional** The directory the files reside in. Default: `doc`

## Example usage

```yaml
---
name: CI

on: [push]

jobs:
	test-latex:
	runs-on: ubuntu-latest

	steps:
		- uses: actions/checkout@v2

		- uses: berkan-sahin/latexmk-in-dir@v1
		  with:
		  	directory: doc
