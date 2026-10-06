# homebrew-tap

This is my Homebrew tap for [shotfleet](https://shotfleet.com), the tool I make for localized App Store and Google Play screenshots.

```sh
brew install noloman/tap/shotfleet
```

That's it. It installs the same signed and notarized build you get from the site, for Apple silicon Macs on macOS 13 or newer.

Then run `shotfleet doctor --fix`. It installs Maestro and Java for you, so Homebrew doesn't have to.

A few things worth knowing:

- shotfleet is closed source, so this is a cask, not a formula. Homebrew's own docs say a prebuilt, binary-only program belongs in a cask.
- Use the full name above. Homebrew asks you to trust a tap before it loads it, and the full name trusts just this one cask.
- The installer at `curl -fsSL https://shotfleet.com/install.sh | sh` is still the main way, and it's what I test first. Pick one of the two. If you already used the installer, it put a `shotfleet` link in `/opt/homebrew/bin`, so remove that link before `brew install`.
- `brew upgrade` gets you new versions once I update the cask here, usually on release day.
- `check` is free without a key. For everything else: `shotfleet activate <key>`.

Questions or problems: hello@shotfleet.com.
