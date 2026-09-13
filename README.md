# PSPDX Demo

A small PSP hello-world app showing how to publish homebrew for
[PSPDX](https://github.com/chriopter/pspdx). You can [browse its catalog page](https://chriopter.github.io/pspdx-catalog/apps/io.github.chriopter.pspdxdemo/)
or install it through the PSPDX app.

## Make your app available

Put a `.pspdx` file in the root of your repository. It tells PSPDX what the
app is, where to install it and where to look for releases. This demo uses:

```json
{
  "schema": "https://github.com/chriopter/pspdx/blob/master/schema/v1.pspdx",
  "source": "https://github.com/chriopter/pspdx-demo",
  "name": "PSPDX Demo",
  "author": "chriopter",
  "summary": "Hello, PSP. A demo listing for PSPDX.",
  "category": "demo",
  "license": "MIT",
  "installdir": "PSP/GAME/PSPDXDemo"
}
```

Publish a GitHub release containing exactly one ZIP with exactly one
`EBOOT.PBP`. PSPDX installs the folder containing the EBOOT, including its
other files. EBOOT icons, pictures, video and sound are optional.

This repository builds and publishes a release when you push a tag starting
with `v`, such as `v1.0.0`. Use your own build process for your app; you do not
need to edit `.pspdx` for every release. See the [format specification](https://github.com/chriopter/pspdx#the-pspdx-standard)
for all fields and rules.
