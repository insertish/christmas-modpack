#!/usr/bin/env zx

import fs from "fs-extra";
import toml from "toml";

const listing = [
    '# Mods\n',
    '|Name|Side||',
    '|---|---|---|'
];

const mods = await fs.readdir("mods");
for (const mod of mods) {
    if (mod.endsWith('.toml')) {
        const contents = await fs.readFile("mods/" + mod);
        const data = toml.parse(contents);

        let url;
        if (mod === 'optifine.toml') {
            url = "https://optifine.net";
        } else {
            url = "https://www.curseforge.com/minecraft/mc-mods/" + mod.split('.')[0];
        }

        listing.push(`|${data.name}|${data.side}|[CurseForge](${url})|`);
    }
}

await fs.writeFile('mods.md', listing.join('\n'));
