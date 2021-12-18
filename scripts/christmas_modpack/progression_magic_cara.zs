# Contributed by Cara
var AIR = <item:minecraft:air>;
var REDSTONE = <item:minecraft:redstone>;

var STONE = <tag:items:forge:stone>;
var GLASS = <tag:items:forge:glass>;
var PANES = <tag:items:forge:glass_panes>;

var arcane_gold = <item:eidolon:arcane_gold_ingot>;
var ironwood = <item:twilightforest:ironwood_ingot>;
var silver_dust = <tag:items:forge:dusts/silver>;
var obsidian_dust = <tag:items:forge:dusts/obsidian>;
var end_stone_dust = <tag:items:forge:dusts/end_stone>;
var BOOK = <item:minecraft:writable_book>;
var ink = <item:occultism:purified_ink>;
var IRON = <item:minecraft:iron_ingot>;
var GEM = <item:occultism:spirit_attuned_gem>;

# Undergarden 
craftingTable.removeRecipe(<item:undergarden:catalyst>);
craftingTable.addShaped("undergarden_catalyst",
    <item:undergarden:catalyst>,
    [
        [arcane_gold, ironwood, arcane_gold],
        [ironwood, GEM, ironwood],
        [arcane_gold, ironwood, arcane_gold]
    ]);

# Occultism
craftingTable.removeRecipe(<item:occultism:chalk_white_impure>);
craftingTable.removeRecipe(<item:occultism:chalk_purple_impure>);
craftingTable.removeRecipe(<item:occultism:chalk_red_impure>);

craftingTable.addShaped("occultism_chalk_white_impure",
    <item:occultism:chalk_white_impure>,
    [
        [<item:occultism:burnt_otherstone>, <item:occultism:otherworld_ashes>, silver_dust],
        [<item:occultism:burnt_otherstone>, <item:occultism:otherworld_ashes>, silver_dust],
        [<item:occultism:burnt_otherstone>, <item:occultism:otherworld_ashes>, silver_dust]
    ]);

craftingTable.addShaped("occultism_chalk_purple_impure",
    <item:occultism:chalk_purple_impure>,
    [
        [obsidian_dust, obsidian_dust, obsidian_dust],
        [<item:astralsorcery:stardust>, <item:occultism:chalk_gold_impure>, <item:astralsorcery:stardust>],
        [end_stone_dust, end_stone_dust, end_stone_dust]
    ]);

craftingTable.addShaped("occultism_chalk_red_impure",
    <item:occultism:chalk_red_impure>,
    [
        [<item:occultism:chalk_purple_impure>, <item:occultism:afrit_essence>, AIR],
        [<item:occultism:afrit_essence>, <item:occultism:afrit_essence>, AIR],
        [AIR, AIR, AIR]
    ]);

craftingTable.removeRecipe(<item:occultism:book_of_binding_foliot>);
craftingTable.removeRecipe(<item:occultism:book_of_binding_djinni>);
craftingTable.removeRecipe(<item:occultism:book_of_binding_afrit>);
craftingTable.removeRecipe(<item:occultism:book_of_binding_marid>);

craftingTable.addShaped("occultism_book_of_binding_foliot",
    <item:occultism:book_of_binding_foliot>,
    [
        [ink, IRON, REDSTONE],
        [IRON, BOOK, IRON],
        [REDSTONE, IRON, REDSTONE]
    ]);

craftingTable.addShaped("occultism_book_of_binding_djinni",
    <item:occultism:book_of_binding_djinni>,
    [
        [ink, arcane_gold, GEM],
        [arcane_gold, BOOK, arcane_gold],
        [GEM, arcane_gold, GEM]
    ]);

craftingTable.addShaped("occultism_book_of_binding_afrit",
    <item:occultism:book_of_binding_afrit>,
    [
        [ink, <item:minecraft:redstone_block>, <item:eidolon:pewter_block>],
        [<item:minecraft:redstone_block>, BOOK, <item:minecraft:redstone_block>],
        [<item:eidolon:pewter_block>, <item:minecraft:redstone_block>, <item:minecraft:anvil>]
    ]);


craftingTable.removeRecipe(<item:occultism:magic_lamp_empty>);
craftingTable.addShaped("occultism_magic_lamp_empty",
    <item:occultism:magic_lamp_empty>,
    [
        [<item:occultism:iesnium_ingot>, <item:chunkloaders:basic_chunk_loader>, <item:minecraft:diamond_block>],
        [<item:chunkloaders:basic_chunk_loader>, <item:occultism:iesnium_ingot>, <item:chunkloaders:basic_chunk_loader>],
        [<item:minecraft:diamond_block>, <item:chunkloaders:basic_chunk_loader>, <item:occultism:iesnium_ingot>]
    ]);

craftingTable.removeRecipe(<item:occultism:otherstone_pedestal>);
