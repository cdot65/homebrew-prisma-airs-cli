# cdot65/homebrew-prisma-airs-cli

Homebrew formula for [airs-cli](https://crates.io/crates/airs-cli), the Prisma AIRS
command line (the `airs` command). Documentation:
<https://cdot65.github.io/prisma-airs-cli/>.

```sh
brew tap cdot65/prisma-airs-cli
brew trust cdot65/prisma-airs-cli
brew install airs-cli
brew upgrade airs-cli        # later releases
```

The formula builds `airs` from the published crates.io crate `airs-cli` (Rust is a
build dependency only) and links `airs-cli-rs`, the compatibility name, to it; from
8.0.0 it also links `airs-cli`, the name of the TypeScript CLI that the Rust CLI
replaces. The tap carries stable releases only. Install `airs` through one channel
(Homebrew, npm, cargo or a release tarball): Homebrew's Node puts npm's global commands
in the same `bin` directory, and `airs doctor` warns when another copy comes first on
`PATH`.

`Formula/airs-cli.rb` is rendered by `scripts/homebrew-formula.sh` in the airs-cli
repository, `cdot/prisma-airs-cli` (mirrored to
<https://github.com/cdot65/prisma-airs-cli>; docs/RELEASING.md §6). Edit the template
there, not the formula here.
