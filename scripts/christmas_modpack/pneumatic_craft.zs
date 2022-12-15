# Taken from https://docs.blamejared.com/1.16/en/mods/PneumaticCraft-Repressurized/ExplosionCrafting
# Changes explosion crafting from 20% to 75% loss rate

<recipetype:pneumaticcraft:explosion_crafting>.removeAll();

<recipetype:pneumaticcraft:explosion_crafting>.addRecipe(
    "hard_compressed_iron_ingot",
    <tag:items:forge:ingots/iron>,
    [<item:pneumaticcraft:ingot_iron_compressed>],
    95
);

<recipetype:pneumaticcraft:explosion_crafting>.addRecipe(
    "hard_compressed_iron_block",
    <tag:items:forge:storage_blocks/iron>,
    [<item:pneumaticcraft:compressed_iron_block>],
    95
);
