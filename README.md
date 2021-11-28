## Applied Patches

- Disabled Quark's "Automatic Recipe Unlock" tweak.

  This would cause the server to hang between 30 seconds to over 60 seconds causing server to crash.

## Additional Configuration

The following should be configured on the server:
- Set `world-type` to `biomesop`
- Set `allow-flight` to `true`
- Configure [Simple Voice Chat](https://modrepo.de/minecraft/voicechat/wiki?t=setup)
- Use [Magma for 1.16](https://github.com/magmafoundation/Magma-1.16.x) instead of just Forge
- Install [DiscordSRV Spigot plugin](https://docs.discordsrv.com/Installation/) for providing a Discord bridge
- Edit `commands.yml` and replace `aliases` section with:
  
  ```
  aliases:
    icanhasbukkit:
    - version $1-
    trashcan:
    - []
    leaderboard:
    - []
    rec:
    - []
    hat:
    - []
    nick:
    - []
    back:
    - []
    spawn:
    - []
    rtp:
    - []
    home:
    - []
    sethome:
    - []
    delhome:
    - []
    listhomes:
    - []
    warp:
    - []
    setwarp:
    - []
    delwarp:
    - []
    listwarps:
    - []
    tpa:
    - []
    tpahere:
    - []
    tpaccept:
    - []
    tpadeny:
    - []
    tpadeny:
    - []
  ```

  This disables any default commands for players from FTB Essentials, I personally find them quite cheaty and would not recommend playing with them as they defeat the purpose of a lot of mods. Especially teleportation.
