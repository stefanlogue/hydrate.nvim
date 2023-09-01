# Contributing

Thanks for considering contributing! Please read this document to learn the various steps you should take before submitting a pull request.

## Keeping the CHANGELOG up-to-date

This project tries hard to adhere to [Semantic Versioning](https://semver.org/spec/v2.0.0.html), and we maintain a [`CHANGELOG`](https://github.com/stefanlogue/hydrate.nvim/blob/main/CHANGELOG.md) with a format based on [Keep a Changelog](https://keepachangelog.com/en/1.0.0/). 
If your PR addresses a bug or makes any other substantial change, please be sure to add an entry under the "Unreleased" section at the top of `CHANGELOG.md`.
Entries should always be in the form of a list item under a level-3 header of either "Added", "Fixed", "Changed", or "Removed" for the most part.
If the corresponding level-3 header for your item does not already exist in the "Unreleased" section, you should add it.

## Formatting code

Lua code should be formatted using [StyLua](https://github.com/JohnnyMorganz/StyLua). Once you have StyLua installed, you can run `stylua .` to automatically apply styling to all of the Lua files in this repo.

## Linting code

We use [luacheck](https://github.com/mpeterv/luacheck) to lint the Lua code. Once you have `luacheck` installed, you can run `luacheck .` to get a report.

## Building the Vim documentation

The Vim documentation lives at `docs/hydrate.nvim.txt`, which is automatically generated from the README using [panvimdoc](https://github.com/kdheepak/panvimdoc). **So please only commit documentation changes to the README, not `docs/hydrate.nvim.txt`.**

However you can test how changes to the README will affect the Vim doc by running panvimdoc locally.
To do this you'll need install `pandoc` (e.g. `brew install pandoc` on Mac) and clone [panvimdoc](https://github.com/kdheepak/panvimdoc). Then from the panvimdoc repo root, run:

```bash
./panvimdoc.sh --project-name hydrate.nvim --input-file ../../stefanlogue/hydrate.nvim/README.md --description 'reminders to keep hydrated while you code' --toc 'false' --vim-version 'NVIM >= v0.8.0' --demojify 'false' --dedup-subheadings 'false' --shift-heading-level-by '-1' && mv doc/hydrate.nvim.txt /tmp/
```

This will build the Vim documentation to `/tmp/hydrate.nvim.txt`.

> ❗ NOTE: *the exact arguments to `./panvimdoc.sh` may change over time. Please see `.github/workflows/docs.yml` for reference.*
