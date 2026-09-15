# PSPDX Demo

A tiny PSP hello-world that shows how to publish homebrew for
[PSPDX](https://github.com/chriopter/pspdx).
[See it in the catalog](https://chriopter.github.io/pspdx-catalog/apps/io.github.chriopter.pspdxdemo/)
or install it through PSPDX.

## Make your app available

**1. Add a `.pspdx` to your repo root**, like [this repo's](.pspdx).
Only `schema`, `source` and `name` are required; every field is on the
[PSPDX standard](https://chriopter.github.io/pspdx/) page.

**2. Publish a GitHub release** with one ZIP holding one `EBOOT.PBP`.

Done! No `.pspdx` edit per release.

## What's in here

- **`.pspdx`** → the manifest
- **`app/`** → the app: `main.c`, its `Makefile` and the EBOOT artwork in `media/xmb/`
- **`tools/package.sh`** → zips the EBOOT as `PSP/GAME/PSPDXDemo/`
- **`.github/workflows/psp.yml`** → tag `v*` → build in `pspdev/pspdev` → ZIP → GitHub release

Any build process works for your own app.
