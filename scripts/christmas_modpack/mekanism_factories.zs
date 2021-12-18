import crafttweaker.api.item.IIngredient;
import crafttweaker.api.item.IItemStack;

var redstone = <item:minecraft:redstone>;
var wood = <tag:items:minecraft:planks>;
var circuit = <tag:items:forge:circuits/basic>;
var compressed_iron = <item:pneumaticcraft:ingot_iron_compressed>;

function compressFactoryRecipe(name as string, in_machine as IIngredient, out_factory as IItemStack) as void {
    var redstone = <item:minecraft:redstone>;
    var wood = <tag:items:minecraft:planks>;
    var circuit = <tag:items:forge:circuits/basic>;
    var compressed_iron = <item:pneumaticcraft:ingot_iron_compressed>;

    craftingTable.removeRecipe(out_factory);
    craftingTable.addShaped(name,
        out_factory,
        [
            [redstone, circuit, redstone],
            [compressed_iron, in_machine, compressed_iron],
            [redstone, circuit, redstone]
        ],
        (out as IItemStack, inputs as IItemStack[][]) as IItemStack => {
            return out.withTag(inputs[1][1].tag);
        });
}

compressFactoryRecipe("compressed_smelting_factory", <item:mekanism:energized_smelter>, <item:mekanism:basic_smelting_factory>);
compressFactoryRecipe("compressed_enriching_factory", <item:mekanism:enrichment_chamber>, <item:mekanism:basic_enriching_factory>);
compressFactoryRecipe("compressed_crushing_factory", <item:mekanism:crusher>, <item:mekanism:basic_crushing_factory>);
compressFactoryRecipe("compressed_compressing_factory", <item:mekanism:osmium_compressor>, <item:mekanism:basic_compressing_factory>);
compressFactoryRecipe("compressed_combining_factory", <item:mekanism:combiner>, <item:mekanism:basic_combining_factory>);
compressFactoryRecipe("compressed_purifying_factory", <item:mekanism:purification_chamber>, <item:mekanism:basic_purifying_factory>);
compressFactoryRecipe("compressed_injecting_factory", <item:mekanism:chemical_injection_chamber>, <item:mekanism:basic_injecting_factory>);
compressFactoryRecipe("compressed_infusing_factory", <item:mekanism:metallurgic_infuser>, <item:mekanism:basic_infusing_factory>);
compressFactoryRecipe("compressed_sawing_factory", <item:mekanism:precision_sawmill>, <item:mekanism:basic_sawing_factory>);

// compressed iron for the basic installer (right click on machine, it upgrades in place)
craftingTable.removeRecipe(<item:mekanism:basic_tier_installer>);
craftingTable.addShaped("compressed_basic_tier_installer",
        <item:mekanism:basic_tier_installer>,
        [
            [redstone, circuit, redstone],
            [compressed_iron, wood, compressed_iron],
            [redstone, circuit, redstone]
        ]);
