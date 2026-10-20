# cdot/homebrew-tap

Homebrew formulae for [airs-cli](https://git.cdot.io/cdot/prisma-airs-cli-rs), the
Prisma AIRS command line (the `airs` command).

```sh
brew tap cdot/tap ssh://git@git-ssh.cdot.io/cdot/homebrew-tap.git
brew install cdot/tap/airs-cli
brew upgrade airs-cli        # later releases
```

The formula builds `airs` from the published crates.io crate `airs-cli` (Rust is a
build dependency only) and links `airs-cli-rs`, the 1.x compatibility name, to it.
The tap carries stable releases only. Tapping needs ssh access to this repository.

`Formula/airs-cli.rb` is rendered by `scripts/homebrew-formula.sh` in the airs-cli
repository (docs/RELEASING.md §6); edit the template there, not the formula here.
