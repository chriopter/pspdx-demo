# PSPDX Demo

A tiny PSP hello-world implementing the
[pspdx-v1 schema](https://chriopter.github.io/pspdx/#pspdx-v1) of the
[PSPDX standard](https://chriopter.github.io/pspdx/).
[See it in the catalog](https://chriopter.github.io/pspdx-catalog/apps/io.github.chriopter.pspdxdemo/)
or install it through [PSPDX](https://github.com/chriopter/pspdx).

## Make your app available

- **[`.pspdx`](.pspdx) in your repo root** → only `schema`, `source` and `name` are required
- **GitHub release** with one ZIP holding one `EBOOT.PBP` → done, no `.pspdx` edit per release

## What's in here

- **`.pspdx`** → the manifest
- **`app/`** → the app: `main.c`, its `Makefile` and the EBOOT artwork in `media/xmb/`
- **`tools/package.sh`** → zips the EBOOT as `PSP/GAME/PSPDXDemo/`
- **`.github/workflows/psp.yml`** → tag `v*` → build in `pspdev/pspdev` → ZIP → GitHub release

Any build process works for your own app.
