# Christmas Server Modpack

- [Mod List](mods.md)

## Applied Patches

- Disabled Quark's "Automatic Recipe Unlock" tweak.

  This would cause the server to hang between 30 seconds to over 60 seconds causing server to crash.

- Disabled Quark's "Gold Bars" building.

  Would cause the server to crash when going into the Nether.

- Disable Optifine nag screen in Twilight Forest.

  This modpack is intended for a server, OF shouldn't mess with worldgen.

- Pollution of the Realms changes:

  1. Dropped global emission rate from 100% to 5%.
  2. Disabled emission on entity death.
  3. Limited pollution to overworld dimension only.

- Mekanism config changes:

  1. Changed Digital Miner "per operation tick" energy usage to `2000 J` (20x the default)
  2. Changed Digital Miner energy storage to `500,000 J` (10x the default)
  3. Nerf wind generator (max) base energy generation from `480 J/t` to `200 J/t`
  4. Buff basic solar generator (peak) energy generation from `50 J/t` to `120 J/t`
  5. Buff advanced solar generator (peak) energy generation from `300 J/t` to `720 J/t`

## Additional Configuration

The following should be configured on the server:
- Set `world-type` to `biomesop`
- Set `allow-flight` to `true`
- Configure [Simple Voice Chat](https://modrepo.de/minecraft/voicechat/wiki?t=setup)
- Configure [Discord Integration](https://github.com/ErdbeerbaerLP/DiscordIntegration-Forge/wiki/Quick-Setup) for providing a Discord bridge
