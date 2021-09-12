### Table of Contents
- [Project: SMP's Resource Pack](#project-smps-resource-pack)
- [How does it work?](#how-does-it-work)
  - [Commits with no changes](#commits-with-no-changes)
- [Packs included](#packs-included)
  - [PMC Packs](#pmc-packs)
  - [ItemsAdder](#itemsadder)
- [Contributing](#contributing)
  - [Texture compression](#texture-compression)

# Project: SMP's Resource Pack
This is the repository responsible for the creation of the **Resource Pack of Project: SMP**.

# How does it work?
Every pushed commit triggers *build action* that *zips entire repo and creates a new release*.
Then, admin runs manually `/updateresourcepack` in-game, which downloads the built pack and reloads it for all players
## Commits with no changes
The commits which don't change any texture or model *(like `Updated README.md` or `Actions` changes commits)* need to have **`[ci skip]`** in the name.
System then skips the build process and doesn't build a totally empty commit *(when comparing with commits that actually change some pack files)*
# Packs included
Most of the textures aren't by me! They were found on [PlanetMinecraft](https://planetminecraft.com) and put in the pack.
Some are from sites and organizations such as [VanillaTweaks](https://vanillatweaks.net), [VanillaExtract](https://vanilla-extract.tk) or [Little Improvements](https://littleimprovementscustom.beatso1.repl.co/).
## PMC Packs
Packs from PMC were compiled into a one, big collection, which is available [here](https://www.planetminecraft.com/collection/117897/project-smp-textures/)
Everyone is free to download them, since we own not even 1 texture from here
## ItemsAdder
ItemsAdder has some of its own textures, all are outside of `minecraft` namespace
# Contributing
You can edit any texture to your liking and contribute with new ones!
In order to do so, just download those, edit and open a pull request!
## Texture compression
Before you open a PR, make sure to compress the textures you made
There are many websites that offer this, such as [TinyPNG](https://tinypng.com).
If you want to go for maximum compression though, on every level with NO quality loss, then you should look into [FileOptimizer](https://nikkhokkho.sourceforge.io/static.php?page=FileOptimizer). It is free and open-source, so why not give it a shot?