# cdot65/homebrew-prisma-airs-cli

Homebrew formula for [airs-cli](https://crates.io/crates/airs-cli), the Prisma AIRS
command line (the `airs` command).

```sh
brew tap cdot65/prisma-airs-cli
brew install airs-cli
brew upgrade airs-cli        # later releases
```

The formula builds `airs` from the published crates.io crate `airs-cli` (Rust is a
build dependency only) and links `airs-cli-rs`, the 1.x compatibility name, to it.
The tap carries stable releases only.

`Formula/airs-cli.rb` is rendered by `scripts/homebrew-formula.sh` in the airs-cli
repository (docs/RELEASING.md §6); edit the template there, not the formula here.
