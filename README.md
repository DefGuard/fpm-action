# fpm-action

GitHub action to build packages using [fpm](https://github.com/jordansissel/fpm).
FPM is a patched version from pull (#2064)(https://github.com/jordansissel/fpm/pull/2064) to fix FreeBSD packaging.
Based on [github-action-fpm](https://github.com/bpicode/github-action-fpm).

## Example

```
name: Example workflow yml

on: [push]

jobs:
  build:
    runs-on: ubuntu-latest
    steps:
    - uses: actions/checkout@v1
    - name: Package
      uses: defGuard/fpm-action@main
      with:
        fpm_args: './build'
        fpm_opts: '--debug -n mypackage -t deb -s dir'
```

## Inputs and Outputs

See [action.yml](action.yml).
