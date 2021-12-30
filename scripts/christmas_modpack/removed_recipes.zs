# Remove copper wire recipe in Immersive Engineering
# Force use of Create roller
craftingTable.removeRecipe(<item:immersiveengineering:wire_copper>);

# Disable ProjectE
craftingTable.removeRecipe(<item:projecte:alchemical_chest>);
craftingTable.removeRecipe(<item:projecte:philosophers_stone>);
craftingTable.removeRecipe(<item:projecte:repair_talisman>);

# Disable access to Mine Colonies
craftingTable.removeRecipe(<item:minecolonies:supplychestdeployer>);
craftingTable.removeRecipe(<item:minecolonies:supplycampdeployer>);

# Remove IE recipe for induction heater
craftingTable.removeRecipe(<item:createaddition:heater>);
craftingTable.addShaped("create_heater",
    <item:createaddition:heater>,
    [
        [ <item:minecraft:air>, <item:createaddition:capacitor>, <item:minecraft:air> ],
        [ <item:createaddition:copper_spool>, <tag:items:forge:rods/iron>, <item:createaddition:copper_spool> ],
        [ <tag:items:forge:ingots/brass>, <item:create:copper_sheet>, <tag:items:forge:ingots/brass> ]
    ]);
