### Table of Contents
- [Project: SMP's Resource Pack](#project-smps-resource-pack)
  - [This is the repository responsible for the creation of the **Resource Pack of Project: SMP**.](#this-is-the-repository-responsible-for-the-creation-of-the-resource-pack-of-project-smp)
- [How does it work?](#how-does-it-work)
  - [Commits with no changes](#commits-with-no-changes)
- [Packs included](#packs-included)
  - [PMC Packs](#pmc-packs)
  - [ItemsAdder](#itemsadder)
- [Contributing](#contributing)
  - [Texture compression](#texture-compression)

# Project: SMP's Resource Pack
![GitHub repo file count](https://img.shields.io/github/directory-file-count/Project-SMP/Resource-Pack?color=red&logo=files&logoColor=yellow&style=for-the-badge)
![GitHub repo size](https://img.shields.io/github/repo-size/Project-SMP/Resource-Pack?color=red&label=Repo%20Size&logo=weightsandbiases&style=for-the-badge)
![GitHub release (latest by date)](https://img.shields.io/github/downloads/Project-SMP/Resource-Pack/latest/total?color=darkcyan&label=Latest%20Downloads&logo=githubactions&logoColor=white&style=for-the-badge)
![GitHub all releases](https://img.shields.io/github/downloads/Project-SMP/Modpack/total?logo=minecraft&logoColor=white&style=for-the-badge)
![GitHub forks](https://img.shields.io/github/forks/Project-SMP/Resource-Pack?color=black&logo=github&logoColor=white&style=for-the-badge)

This is the repository responsible for the creation of the **Resource Pack of Project: SMP**.
----------

# How does it work?
Every pushed commit triggers *series of actions*.

**Action** is then scheduled, which first *zips the entire repo* and then *creates a new release*.

Then, admin runs manually `/updateresourcepack` in-game, which downloads the built pack and reloads it for all players

If they also wish for **ItemsAdder support**, all they have to do is run `/iaimport`. This process is further explained in the [source code](https://github.com/Project-SMP/Project-SMP/blob/main/Scripts/Utility/ResourcePack.sk)
## Commits with no changes
The commits which don't change any texture or model *(like `Updated README.md` or `Actions` changes commits)* need to have **`[ci skip]`** in the name.
System then skips the build process and doesn't build a totally empty commit *(when comparing with commits that actually change some pack files)*
# Packs included
![GitHub repo size](https://img.shields.io/github/repo-size/Project-SMP/Resource-Pack?color=red&label=Repo%20Size&logo=weightsandbiases&style=for-the-badge)

Most of the textures aren't by me! 

They were found on [PlanetMinecraft](https://planetminecraft.com) and put in the pack.

Some are from sites and organizations such as [VanillaTweaks](https://vanillatweaks.net), [VanillaExtract](https://vanilla-extract.tk) or [Little Improvements](https://littleimprovementscustom.beatso1.repl.co/).
## PMC Packs
Packs from PMC were compiled into a one, big collection, which is available [here](https://www.planetminecraft.com/collection/117897/project-smp-textures/)

Everyone is free to download them, since we own not even 1 texture from here
## ItemsAdder
ItemsAdder has some of its own textures, all are outside of `minecraft` namespace
# Contributing
![GitHub forks](https://img.shields.io/github/forks/Project-SMP/Resource-Pack?color=black&logo=github&logoColor=white&style=for-the-badge)

You can edit any texture to your liking and contribute with new ones!
In order to do so, just download those, edit and open a pull request!
## Texture compression
Before you open a PR, **make sure to compress the textures you made**!
There are many *websites* that offer this, such as [TinyPNG](https://tinypng.com). This is propably the easiest method to do so.

If you want to go for maximum compression though, on every level with NO quality loss, then you should look into [FileOptimizer](https://nikkhokkho.sourceforge.io/static.php?page=FileOptimizer). It is free and open-source, so why not give it a shot?