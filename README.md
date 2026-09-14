# PSPDX Demo

A tiny PSP hello-world that shows how to publish homebrew for
[PSPDX](https://github.com/chriopter/pspdx).
[See it in the catalog](https://chriopter.github.io/pspdx-catalog/apps/io.github.chriopter.pspdxdemo/)
or install it through PSPDX.

## Make your app available

**1. Add a `.pspdx` to your repo root.** This demo uses:

```json
{
  "schema":      "https://chriopter.github.io/pspdx/schema/pspdx-v1.json",
  "source":      "https://github.com/chriopter/pspdx-demo",
  "name":        "PSPDX Demo",
  "tags":        ["demo"],
  "author":      "chriopter",
  "summary":     "Hello, PSP. A demo listing for PSPDX.",
  "description": "A hello world for the PSP, published the way a listed app is: a .pspdx in the repository, a release with the EBOOT.\nX says hello again, HOME leaves.",
  "license":     "MIT",
  "installdir":  "PSP/GAME/PSPDXDemo"
}
```

Its first line names the rules it keeps:
[`pspdx-v1.json`](https://chriopter.github.io/pspdx/schema/pspdx-v1.json).

- Only `schema`, `source` and `name` are required.
- `tags` → up to eight words; `game`, `emulator`, `app` and `demo` get a tab.
- `installdir` is here because the folder isn't the repo name; without it the
  app goes to `PSP/GAME/pspdx-demo`.

**2. Publish a GitHub release** with one ZIP holding one `EBOOT.PBP`.

Done! No `.pspdx` edit per release.

- PSPDX installs the folder holding the EBOOT, with all its files.
- Icon, picture, video and sound in the EBOOT are optional.
- [All fields and rules](https://github.com/chriopter/pspdx#the-pspdx-standard)

## What's in here

- **`.pspdx`** → the manifest above
- **`main.c`, `Makefile`** → the app; `media/xmb/` holds its EBOOT artwork
- **`tools/package.sh`** → zips the EBOOT as `PSP/GAME/PSPDXDemo/`
- **`.github/workflows/psp.yml`** → tag `v*` → build in `pspdev/pspdev` → ZIP → GitHub release

Any build process works for your own app.
