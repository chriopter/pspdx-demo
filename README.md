# PSPDX Demo

A tiny PSP hello-world implementing the
[PSPDX standard](https://chriopter.github.io/pspdx/).

[See it in the catalog](https://chriopter.github.io/pspdx-catalog/apps/io.github.chriopter.pspdxdemo/)
or install it through [PSPDX](https://github.com/chriopter/pspdx-app).

## Use .pspdx for your app

- Add a [`.pspdx`](.pspdx) to your repo root → only `schema`, `source` and `name` are required
- Publish a GitHub release with one ZIP holding one `EBOOT.PBP` → nothing to edit per release

## What's in here

- `app/` → the app
- `tools/package.sh` → packs the ZIP
- `.github/workflows/psp.yml` → builds the release
