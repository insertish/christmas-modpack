#!/usr/bin/env zx

import fs from "fs-extra";
import toml from "toml";

const listing = [];

const mods = await fs.readdir("mods");
for (const mod of mods) {
  if (mod.endsWith(".toml")) {
    const contents = await fs.readFile("mods/" + mod);
    const data = toml.parse(contents);

    let url;
    if (mod === "optifine.toml") {
      url = "[Optifine](https://optifine.net)";
    } else if (data?.update?.curseforge) {
      url =
        "[CurseForge](https://www.curseforge.com/minecraft/mc-mods/" +
        mod.split(".")[0] +
        ")";
    } else if (data?.update?.modrinth) {
      url = "[Modrinth](https://modrinth.com/mod/" + mod.split(".")[0] + ")";
    } else {
      url = "Static";
    }

    listing.push(`|${data.name}|${data.side}|${url}|`);
  }
}

await fs.writeFile(
  "MODS.md",
  `# ${listing.length} Mods\n\n|Name|Side||\n|---|---|:-:|\n` +
    listing.join("\n")
);
