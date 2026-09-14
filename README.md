# PSPDX Demo

A tiny PSP hello-world that shows how to publish homebrew for
[PSPDX](https://github.com/chriopter/pspdx).
[See it in the catalog](https://chriopter.github.io/pspdx-catalog/apps/io.github.chriopter.pspdxdemo/)
or install it through PSPDX.

## Make your app available

**1. Add a `.pspdx` to your repo root.** This demo uses:

```json
{
  "schema":     "https://chriopter.github.io/pspdx/schema/pspdx-v1.json",
  "source":     "https://github.com/chriopter/pspdx-demo",
  "name":       "PSPDX Demo",
  "author":     "chriopter",
  "summary":    "Hello, PSP. A demo listing for PSPDX.",
  "category":   "demo",
  "license":    "MIT",
  "installdir": "PSP/GAME/PSPDXDemo"
}
```

Its first line names the rules it keeps:
[`pspdx-v1.json`](https://chriopter.github.io/pspdx/schema/pspdx-v1.json).

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
