# PSPDX Demo

A demo listing for [PSPDX](https://github.com/chriopter/pspdx):
a hello world for the PSP, and everything a repository needs to show up in
[the catalog](https://github.com/chriopter/pspdx-catalog).

## What makes it a listing
For the catalog listing we need:

- A `.pspdx` in the root
- A release with an EBOOT that carries the XMB media

The rest comes from the release (latest update).

```jsonc
{
  "schema":     "https://github.com/chriopter/pspdx/blob/master/schema/v1.pspdx",
  "name":       "PSPDX Demo",   // Under 40 characters. Required.
  "author":     "chriopter",    // Optional, if not set repo owner
  "summary":    "Hello, PSP. A demo listing for PSPDX.",  // Optional, 60 chars
  "category":   "demo",         // game, emulator, app, plugin or demo. Required.
  "license":    "MIT",          // Optional, otherwise what GitHub reports
  "installdir": "PSP/GAME/PSPDXDemo"   // where it goes on the stick. Required.
}
```

The installer copies the directory in the zip that holds the `EBOOT.PBP`,
with everything beside and below it, into `installdir`. Here that is the
same folder a person dragging the zip onto the stick by hand would get.

## Releases

Pushing a tag starting with `v` (for example, `v1.0.0`) builds the demo,
packages it as a ZIP and publishes a GitHub release automatically.

For your own app, use whatever build process you prefer. PSPDX needs
a `.pspdx` in the repository root and a published release with exactly
one ZIP containing exactly one `EBOOT.PBP`.
