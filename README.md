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

## Additional Configuration

The following should be configured on the server:
- Set `world-type` to `biomesop`
- Set `allow-flight` to `true`
- Configure [Simple Voice Chat](https://modrepo.de/minecraft/voicechat/wiki?t=setup)
- Configure [Discord Integration](https://github.com/ErdbeerbaerLP/DiscordIntegration-Forge/wiki/Quick-Setup) for providing a Discord bridge
