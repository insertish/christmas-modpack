# 2022 Modpack

- [Mod List](mods.md)

## Applied Patches

- Disabled Quark's "Automatic Recipe Unlock" tweak.

  This causes the server to hang as hundreds of recipes are unlocked on first user join.

- Adjust Total Darkness mod:

  1. Disabled in Nether
  2. Disabled in End

- Disable Advanced Peripherals's "Scientist Village" generations as it caused crashes last year.

- Disabled teleporation commands in FTB Essentials.

- Disabled land protection and chunk claiming in FTB Chunks. (used only for showing claims)

- Disabled Radium's AI Point of Interest optimisations as they were causing null pointer exceptions.

- Adjust Pneumatic Craft explosing crafting with TNT from 80% to 25% yield.

- Disable Immersive Engineering Garden Cloche as it can be used to exploit Mystical Agriculture.

- Disable certain tech mods. (this is for gradual progression)

- Disabled most of ProjectE.

## Additional Configuration

The following should be configured on the server:

- Disable spawn protection
- Enforce whitelist if needed
- Change `max-players`
- Enable command blocks if required
- Set `allow-flight` to `true`
- Configure [Discord Integration](https://erdbeerbaerlp.de/projects/discord-integration/quick-setup) for providing a Discord bridge
