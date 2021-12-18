var AIR = <item:minecraft:air>;
var REDSTONE = <item:minecraft:redstone>;
var ENDER_PEARL = <item:minecraft:ender_pearl>;
var ENDER_EYE = <item:minecraft:ender_eye>;
var BLAZE_ROD = <item:minecraft:blaze_rod>;
var BLAZE_POWDER = <item:minecraft:blaze_powder>;
var LEATHER = <item:minecraft:leather>;

var REDSTONE_BLOCK = <tag:items:forge:storage_blocks/redstone>;
var GOLD_BLOCK = <tag:items:forge:storage_blocks/gold>;

var LOGS = <tag:items:minecraft:logs>;
var PLANKS = <tag:items:minecraft:planks>;

var STONE = <tag:items:forge:stone>;
var GLASS = <tag:items:forge:glass>;
var WOOL = <tag:items:forge:wool>;
var OBSIDIAN = <tag:items:forge:obsidian>;
var PANES = <tag:items:forge:glass_panes>;
var TREATED_WOOD = <tag:items:forge:treated_wood>;

var IRON = <tag:items:forge:ingots/iron>;
var GOLD = <tag:items:forge:ingots/gold>;
var COPPER = <tag:items:forge:ingots/copper>;
var STEEL = <tag:items:forge:ingots/steel>;
var OSMIUM = <tag:items:forge:ingots/osmium>;
var LEAD = <tag:items:forge:ingots/lead>;
var NETHERITE = <tag:items:forge:ingots/netherite>;
var LAPIS = <tag:items:forge:gems/lapis>;
var DIAMOND = <tag:items:forge:gems/diamond>;
var EMERALD = <tag:items:forge:gems/emerald>;

var FLUIX = <tag:items:appliedenergistics2:crystals/fluix>;

var TIN_GEAR = <tag:items:forge:gears/tin>;

#region ----- Mekanism -----
craftingTable.removeRecipe(<item:mekanism:teleportation_core>);

craftingTable.addShaped("mekanism_tp_core",
    <item:mekanism:teleportation_core>,
    [
        [LAPIS, <item:mekanism:alloy_atomic>, ENDER_EYE],
        [NETHERITE, DIAMOND, NETHERITE],
        [ENDER_EYE, <item:mekanism:alloy_atomic>, LAPIS]
    ]);

# Pneumatic Craft (Compressed Iron) + Create (Induction Heater)
#                             -> Mekanism (Metallurgic Infuser)
craftingTable.removeRecipe(<item:mekanism:metallurgic_infuser>);
craftingTable.removeRecipe(<item:mekanismgenerators:heat_generator>);

var compressed_iron = <item:pneumaticcraft:ingot_iron_compressed>;

craftingTable.addShaped("mekanism_metallurgic_infuser",
    <item:mekanism:metallurgic_infuser>,
    [
        [compressed_iron, <item:minecraft:furnace>, compressed_iron],
        [REDSTONE, OSMIUM, REDSTONE],
        [compressed_iron, <item:createaddition:heater>, compressed_iron]
    ]);

craftingTable.addShaped("mekanism_heat_generator",
    <item:mekanismgenerators:heat_generator>,
    [
        [compressed_iron, compressed_iron, compressed_iron],
        [PLANKS, OSMIUM, PLANKS],
        [COPPER, <item:createaddition:heater>, COPPER]
    ]);

# Pneumatic Craft (Compressed Iron) -> Mekanism (Thermal Evaporation Block)
craftingTable.addShaped("mekanism_thermal_evaporation_block",
    <item:mekanism:thermal_evaporation_block>,
    [
        [compressed_iron, STEEL, compressed_iron],
        [STEEL, COPPER, STEEL],
        [compressed_iron, STEEL, compressed_iron]
    ]);

# Pneumatic Craft (Compressed Iron) -> Mekanism (Induction Casing)
craftingTable.addShaped("mekanism_induction_casing",
    <item:mekanism:induction_casing>,
    [
        [compressed_iron, STEEL, compressed_iron],
        [STEEL, <item:mekanism:energy_tablet>, STEEL],
        [compressed_iron, STEEL, compressed_iron]
    ]);

# Pneumatic Craft (Compressed Iron) -> Mekanism (Dynamic Tank)
craftingTable.addShaped("mekanism_dynamic_tank",
    <item:mekanism:dynamic_tank>,
    [
        [compressed_iron, STEEL, compressed_iron],
        [STEEL, <item:minecraft:bucket>, STEEL],
        [compressed_iron, STEEL, compressed_iron]
    ]);
#endregion

#region ----- Project Red -----
# Minecraft (Smooth Stone) -[Create Presser]-> Project Red (Circuit Plate)
<recipetype:minecraft:smelting>.removeRecipe(<item:projectred-core:plate>);
<recipetype:create:pressing>.addRecipe("pressing_circuit_plate", [<item:projectred-core:plate>], <item:minecraft:smooth_stone>);

#region ----- CC: Tweaked -----
# Project Red (Energized Silicon Chip + Cathode + Bundled Plate) -> CC: Tweaked (Computer)
craftingTable.removeRecipe(<item:computercraft:computer_normal>);
craftingTable.removeRecipe(<item:computercraft:computer_advanced>);
craftingTable.removeRecipe(<item:computercraft:pocket_computer_normal>);
craftingTable.removeRecipe(<item:computercraft:pocket_computer_advanced>);

craftingTable.addShaped("cc_tweaked_computer",
    <item:computercraft:computer_normal>,
    [
        [STONE, STONE, STONE],
        [<item:projectred-core:energized_silicon_chip>, <item:projectred-core:bundled_plate>, <item:projectred-core:cathode>],
        [STONE, PANES, STONE]
    ]);

craftingTable.addShaped("cc_tweaked_computer_advanced",
    <item:computercraft:computer_advanced>,
    [
        [GOLD, GOLD, GOLD],
        [<item:projectred-core:energized_silicon_chip>, <item:computercraft:computer_normal>, <item:projectred-core:cathode>],
        [GOLD, <item:projectred-core:bundled_plate>, GOLD]
    ]);

<recipetype:create:pressing>.addRecipe("pressing_computer", [<item:computercraft:pocket_computer_normal>], <item:computercraft:computer_normal>);
<recipetype:create:pressing>.addRecipe("pressing_adv_computer", [<item:computercraft:pocket_computer_advanced>], <item:computercraft:computer_advanced>);

# CC: Tweaked (Turtle) -> Pretty Pipes (Item Terminal)
craftingTable.removeRecipe(<item:prettypipes:item_terminal>);
craftingTable.addShaped("pretty_pipes_item_terminal",
    <item:prettypipes:item_terminal>,
    [
        [<item:minecraft:diamond>, ENDER_PEARL, <item:minecraft:iron_block>],
        [<item:prettypipes:high_retrieval_module>, <item:computercraft:turtle_normal>, <item:prettypipes:high_extraction_module>],
        [<item:minecraft:iron_block>, ENDER_PEARL, <item:minecraft:diamond>]
    ]);

#region ----- FTB Industrial Contraptions -----
<recipetype:minecraft:smelting>.removeRecipe(<item:ftbic:industrial_grade_metal>);
<recipetype:minecraft:blasting>.removeRecipe(<item:ftbic:industrial_grade_metal>);
<recipetype:create:pressing>.addRecipe("pressing_industrial_metal", [<item:ftbic:industrial_grade_metal>], <item:create:iron_sheet>);

#region ----- Eidolon -----
var ironwood = <item:twilightforest:ironwood_ingot>;

craftingTable.removeRecipe(<item:eidolon:pewter_blend>);

craftingTable.addShapeless("eidolon_pewter_blend",
    <item:eidolon:pewter_blend> * 2,
    [ LEAD, ironwood ]);

#region ----- Blood Magic -----
# Eidolon (Arcane Gold) -> Blood Magic (Blood Altar + Sacrificial Dagger)
var arcane_gold = <item:eidolon:arcane_gold_ingot>;

craftingTable.removeRecipe(<item:bloodmagic:altar>);
craftingTable.removeRecipe(<item:bloodmagic:sacrificialdagger>);

craftingTable.addShaped("blood_magic_altar",
    <item:bloodmagic:altar>,
    [
        [STONE, AIR, STONE],
        [STONE, <item:minecraft:furnace>, STONE],
        [arcane_gold, arcane_gold, arcane_gold]
    ]);

craftingTable.addShaped("blood_magic_knife",
    <item:bloodmagic:sacrificialdagger>,
    [
        [GLASS, GLASS, GLASS],
        [AIR, arcane_gold, GLASS],
        [ironwood, AIR, GLASS]
    ]);

#region ----- Astral Sorcery -----
var raw_marble = <item:astralsorcery:marble_raw>;
var aquamarine = <item:astralsorcery:aquamarine>;
var soul_shard = <item:eidolon:soul_shard>;

craftingTable.removeRecipe(<item:astralsorcery:wand>);

craftingTable.addShaped("astral_sorcery_wand",
    <item:astralsorcery:wand>,
    [
        [AIR, aquamarine, ENDER_PEARL],
        [soul_shard, raw_marble, aquamarine],
        [raw_marble, soul_shard, AIR]
    ]);

#region ----- Ars Nouveau -----
craftingTable.removeRecipe(<item:ars_nouveau:novice_spell_book>);

craftingTable.addShapeless("novice_spell_book",
    <item:ars_nouveau:novice_spell_book>,
    [
        <item:minecraft:book>,
        <item:twilightforest:ironwood_shovel>,
        <item:twilightforest:ironwood_pickaxe>,
        <item:twilightforest:ironwood_axe>,
        <item:twilightforest:ironwood_sword>,
    ]);

#region ----- Scannable -----
craftingTable.removeRecipe(<item:scannable:scanner>);

craftingTable.addShaped("scannable_scanner",
    <item:scannable:scanner>,
    [
        [ IRON, <item:advancedperipherals:ar_goggles>, IRON ],
        [ <item:minecraft:iron_bars>, <item:computercraft:pocket_computer_advanced>, <item:minecraft:iron_bars> ],
        [ GOLD, <item:minecraft:quartz>, GOLD ]
    ]);

#region ----- Hostile Neural Networks -----
craftingTable.removeRecipe(<item:hostilenetworks:sim_chamber>);
craftingTable.removeRecipe(<item:hostilenetworks:loot_fabricator>);

craftingTable.addShaped("hnn_sim_chamber",
    <item:hostilenetworks:sim_chamber>,
    [
        [ OBSIDIAN, PANES, OBSIDIAN ],
        [ ENDER_PEARL, <item:computercraft:computer_advanced>, ENDER_PEARL ],
        [ LAPIS, <item:minecraft:comparator>, LAPIS ]
    ]);

craftingTable.addShaped("hnn_loot_fabricator",
    <item:hostilenetworks:loot_fabricator>,
    [
        [ OBSIDIAN, NETHERITE, OBSIDIAN ],
        [ DIAMOND, <item:computercraft:computer_advanced>, DIAMOND ],
        [ GOLD, <item:minecraft:comparator>, GOLD ]
    ]);

#region ----- Building Gadgets -----
craftingTable.removeRecipe(<item:buildinggadgets:gadget_building>);
craftingTable.removeRecipe(<item:buildinggadgets:gadget_exchanging>);
craftingTable.removeRecipe(<item:buildinggadgets:gadget_copy_paste>);
craftingTable.removeRecipe(<item:buildinggadgets:gadget_destruction>);

craftingTable.addShaped("gadget_building",
    <item:buildinggadgets:gadget_building>,
    [
        [ IRON, REDSTONE, IRON ],
        [ DIAMOND, <item:computercraft:pocket_computer_advanced>, DIAMOND ],
        [ IRON, <item:projectred-integration:not_gate>, IRON ]
    ]);

craftingTable.addShaped("gadget_exchanging",
    <item:buildinggadgets:gadget_exchanging>,
    [
        [ IRON, REDSTONE, IRON ],
        [ DIAMOND, <item:computercraft:pocket_computer_advanced>, DIAMOND ],
        [ IRON, <item:projectred-integration:xor_gate>, IRON ]
    ]);

craftingTable.addShaped("gadget_copy_paste",
    <item:buildinggadgets:gadget_copy_paste>,
    [
        [ IRON, REDSTONE, IRON ],
        [ EMERALD, <item:computercraft:pocket_computer_advanced>, EMERALD ],
        [ IRON, <item:projectred-integration:and_gate>, IRON ]
    ]);

craftingTable.addShaped("gadget_destruction",
    <item:buildinggadgets:gadget_destruction>,
    [
        [ IRON, REDSTONE, IRON ],
        [ ENDER_PEARL, <item:computercraft:pocket_computer_advanced>, ENDER_PEARL ],
        [ IRON, <item:projectred-integration:not_gate>, IRON ]
    ]);

#region ----- Applied Energistics 2 -----
var cable = <item:appliedenergistics2:fluix_glass_cable>;
var eng_processor = <item:appliedenergistics2:engineering_processor>;

craftingTable.removeRecipe(<item:appliedenergistics2:inscriber>);
craftingTable.removeRecipe(<item:appliedenergistics2:drive>);
craftingTable.removeRecipe(<item:appliedenergistics2:quartz_growth_accelerator>);

craftingTable.addShaped("ae2_inscriber",
    <item:appliedenergistics2:inscriber>,
    [
        [ IRON, <item:minecraft:sticky_piston>, IRON ],
        [ FLUIX, <item:computercraft:computer_advanced>, IRON ],
        [ IRON, <item:minecraft:sticky_piston>, IRON ],
    ]);

craftingTable.addShaped("ae2_drive",
    <item:appliedenergistics2:drive>,
    [
        [ IRON, eng_processor, IRON ],
        [ cable, <item:computercraft:disk_drive>, cable ],
        [ IRON, eng_processor, IRON ],
    ]);

craftingTable.addShaped("ae2_growth_accelerator",
    <item:appliedenergistics2:quartz_growth_accelerator>,
    [
        [ STEEL, cable, STEEL ],
        [ <item:appliedenergistics2:quartz_glass>, <item:appliedenergistics2:fluix_block>, <item:appliedenergistics2:quartz_glass> ],
        [ STEEL, cable, STEEL ],
    ]);

#region ----- Psi -----
craftingTable.removeRecipe(<item:psi:cad_assembly_iron>);
craftingTable.removeRecipe(<item:psi:cad_assembly_gold>);
craftingTable.removeRecipe(<item:psi:cad_assembly_psimetal>);
craftingTable.removeRecipe(<item:psi:cad_assembly_ivory_psimetal>);
craftingTable.removeRecipe(<item:psi:cad_assembly_ebony_psimetal>);
craftingTable.removeRecipe(<item:psi:cad_assembler>);
craftingTable.removeRecipe(<item:psi:programmer>);

var psimetal = <item:psi:psimetal>;
var ivory_psimetal = <item:psi:ivory_psimetal>;
var ebony_psimetal = <item:psi:ebony_psimetal>;

craftingTable.addShaped("psi_cad_assembly_iron",
    <item:psi:cad_assembly_iron>,
    [
        [ <item:advancedperipherals:ar_goggles>, AIR, AIR ],
        [ IRON, IRON, IRON ],
        [ IRON, <item:ars_nouveau:dominion_wand>, <item:mekanism:atomic_disassembler> ],
    ]);

craftingTable.addShaped("psi_cad_assembly_gold",
    <item:psi:cad_assembly_gold>,
    [
        [ AIR, AIR, AIR ],
        [ <item:psi:cad_assembly_iron>, GOLD, GOLD ],
        [ GOLD, AIR, AIR ],
    ]);

craftingTable.addShaped("psi_cad_assembly_psimetal",
    <item:psi:cad_assembly_psimetal>,
    [
        [ AIR, AIR, AIR ],
        [ <item:psi:cad_assembly_gold>, psimetal, psimetal ],
        [ psimetal, AIR, AIR ],
    ]);

craftingTable.addShaped("psi_cad_assembly_ivory_psimetal",
    <item:psi:cad_assembly_ivory_psimetal>,
    [
        [ AIR, AIR, AIR ],
        [ <item:psi:cad_assembly_psimetal>, ivory_psimetal, ivory_psimetal ],
        [ ivory_psimetal, AIR, AIR ],
    ]);

craftingTable.addShaped("psi_cad_assembly_ebony_psimetal",
    <item:psi:cad_assembly_ebony_psimetal>,
    [
        [ AIR, AIR, AIR ],
        [ <item:psi:cad_assembly_psimetal>, ebony_psimetal, ebony_psimetal ],
        [ ebony_psimetal, AIR, AIR ],
    ]);

craftingTable.addShaped("psi_cad_assembler",
    <item:psi:cad_assembler>,
    [
        [ IRON, <item:minecraft:piston>, IRON ],
        [ IRON, <item:computercraft:computer_normal>, IRON ],
        [ AIR, IRON, AIR ],
    ]);

craftingTable.addShaped("psi_programmer",
    <item:psi:programmer>,
    [
        [ IRON, <item:psi:psidust>, IRON ],
        [ IRON, <item:computercraft:computer_advanced>, IRON ],
        [ AIR, IRON, AIR ],
    ]);

#region ----- Thermal Series -----
craftingTable.removeRecipe(<item:thermal:machine_frame>);
craftingTable.removeRecipe(<item:thermal:rf_coil>);

craftingTable.addShaped("thermal_frame",
    <item:thermal:machine_frame>,
    [
        [ compressed_iron, GLASS, compressed_iron ],
        [ GLASS, TIN_GEAR, GLASS ],
        [ compressed_iron, GLASS, compressed_iron ],
    ]);

craftingTable.addShaped("thermal_rf_coil",
    <item:thermal:rf_coil>,
    [
        [ AIR, AIR, REDSTONE ],
        [ AIR, <item:create:golden_sheet>, AIR ],
        [ REDSTONE, AIR, AIR ],
    ]);

#region ----- Powah -----
craftingTable.removeRecipe(<item:powah:capacitor_basic>);
craftingTable.removeRecipe(<item:powah:capacitor_niotic>);
craftingTable.removeRecipe(<item:powah:capacitor_spirited>);
craftingTable.removeRecipe(<item:powah:capacitor_nitro>);
craftingTable.removeRecipe(<item:powah:dielectric_casing>);

var paste = <item:powah:dielectric_paste>;
var niotic_crystal = <item:powah:crystal_niotic>;
var spirited_crystal = <item:powah:crystal_spirited>;
var nitro_crystal = <item:powah:crystal_nitro>;

craftingTable.addShaped("powah_cap_basic",
    <item:powah:capacitor_basic>,
    [
        [ AIR, IRON, paste ],
        [ IRON, <item:mekanism:alloy_infused>, IRON ],
        [ paste, IRON, AIR ],
    ]);

craftingTable.addShaped("powah_cap_niotic",
    <item:powah:capacitor_niotic>,
    [
        [ paste, niotic_crystal, <item:mekanism:alloy_reinforced> ],
        [ niotic_crystal, <item:powah:capacitor_hardened>, niotic_crystal ],
        [ <item:mekanism:alloy_reinforced>, niotic_crystal, paste ],
    ]);

craftingTable.addShaped("powah_cap_spirited",
    <item:powah:capacitor_spirited>,
    [
        [ paste, spirited_crystal, <item:mekanism:alloy_atomic> ],
        [ spirited_crystal, <item:powah:capacitor_hardened>, spirited_crystal ],
        [ <item:mekanism:alloy_atomic>, spirited_crystal, paste ],
    ]);

craftingTable.addShaped("powah_cap_nitro",
    <item:powah:capacitor_nitro>,
    [
        [ paste, nitro_crystal, <item:mekanism:alloy_atomic> ],
        [ nitro_crystal, <item:powah:capacitor_hardened>, nitro_crystal ],
        [ <item:mekanism:alloy_atomic>, nitro_crystal, paste ],
    ]);

var horiz_rod = <item:powah:dielectric_rod_horizontal>;
var verti_rod = <item:powah:dielectric_rod>;

craftingTable.addShaped("powah_casing",
    <item:powah:dielectric_casing>,
    [
        [ compressed_iron, horiz_rod, compressed_iron ],
        [ verti_rod, AIR, verti_rod ],
        [ compressed_iron, horiz_rod, compressed_iron ],
    ]);

#region ----- Ender Storage -----
craftingTable.removeRecipe(<item:enderstorage:ender_chest>);
craftingTable.removeRecipe(<item:enderstorage:ender_tank>);
craftingTable.removeRecipe(<item:enderstorage:ender_pouch>);

craftingTable.addShaped("enderstorage_chest",
    <item:enderstorage:ender_chest>,
    [
        [ BLAZE_ROD, WOOL, BLAZE_ROD ],
        [ OBSIDIAN, <item:immersiveengineering:reinforced_crate>, OBSIDIAN ],
        [ BLAZE_ROD, <item:mekanism:teleportation_core>, BLAZE_ROD ],
    ]);

craftingTable.addShaped("enderstorage_tank",
    <item:enderstorage:ender_tank>,
    [
        [ BLAZE_ROD, WOOL, BLAZE_ROD ],
        [ OBSIDIAN, <item:mekanism:basic_fluid_tank>, OBSIDIAN ],
        [ BLAZE_ROD, <item:mekanism:teleportation_core>, BLAZE_ROD ],
    ]);

craftingTable.addShaped("enderstorage_pouch",
    <item:enderstorage:ender_pouch>,
    [
        [ BLAZE_POWDER, LEATHER, BLAZE_POWDER ],
        [ LEATHER, <item:mekanism:teleportation_core>, LEATHER ],
        [ BLAZE_POWDER, WOOL, BLAZE_POWDER ],
    ]);

#region ----- Small Ships -----
var treated_planks = <item:immersiveengineering:treated_wood_horizontal>;
craftingTable.removeRecipe(<item:smallships:sail_item>);

craftingTable.addShaped("smallships_sail",
    <item:smallships:sail_item>,
    [
        [ TREATED_WOOD, TREATED_WOOD, TREATED_WOOD ],
        [ TREATED_WOOD, LOGS, TREATED_WOOD ],
        [ <item:minecraft:lead>, LOGS, <item:minecraft:lead> ],
    ]);

#region ----- Ultimate Car Mod -----
craftingTable.removeRecipe(<item:car:engine_3_cylinder>);
craftingTable.removeRecipe(<item:car:engine_6_cylinder>);
craftingTable.removeRecipe(<item:car:engine_truck>);

var flint = <item:minecraft:flint>;
var piston = <item:car:engine_piston>;
var compressed_iron_block = <item:pneumaticcraft:compressed_iron_block>;

craftingTable.addShaped("car_3_cylinder_engine",
    <item:car:engine_3_cylinder>,
    [
        [ flint, flint, flint ],
        [ piston, piston, piston ],
        [ compressed_iron_block, compressed_iron_block, compressed_iron_block ]
    ]);

craftingTable.addShaped("car_6_cylinder_engine",
    <item:car:engine_6_cylinder>,
    [
        [ compressed_iron, compressed_iron, compressed_iron ],
        [ <item:car:engine_3_cylinder>, compressed_iron, <item:car:engine_3_cylinder> ],
        [ compressed_iron, compressed_iron, compressed_iron ],
    ]);

craftingTable.addShaped("car_truck_engine",
    <item:car:engine_truck>,
    [
        [ flint, compressed_iron, flint ],
        [ piston, piston, piston ],
        [ compressed_iron_block, compressed_iron_block, compressed_iron_block ]
    ]);

#region ----- Simple Planes -----
craftingTable.removeRecipe(<item:simpleplanes:electric_engine>);
craftingTable.removeRecipe(<item:simpleplanes:furnace_engine>);
craftingTable.removeRecipe(<item:simpleplanes:charging_station>);
craftingTable.removeRecipe(<item:simpleplanes:plane_workbench>);

var pressure_plate = <item:minecraft:light_weighted_pressure_plate>;

craftingTable.addShaped("sp_electric_engine",
    <item:simpleplanes:electric_engine>,
    [
        [ LAPIS, <item:simpleplanes:propeller>, LAPIS ],
        [ BLAZE_ROD, <item:mekanism:basic_energy_cube>, BLAZE_ROD ],
        [ REDSTONE_BLOCK, LAPIS, REDSTONE_BLOCK ]
    ]);

craftingTable.addShaped("sp_furnace_engine",
    <item:simpleplanes:furnace_engine>,
    [
        [ compressed_iron, <item:simpleplanes:propeller>, compressed_iron ],
        [ REDSTONE, <item:mekanismgenerators:heat_generator>, REDSTONE ],
        [ pressure_plate, pressure_plate, pressure_plate ]
    ]);

craftingTable.addShaped("sp_charging_station",
    <item:simpleplanes:charging_station>,
    [
        [ LAPIS, <item:simpleplanes:propeller>, LAPIS ],
        [ BLAZE_ROD, <item:mekanism:basic_energy_cube>, BLAZE_ROD ],
        [ REDSTONE_BLOCK, LAPIS, REDSTONE_BLOCK ]
    ]);

craftingTable.addShaped("sp_plane_workbench",
    <item:simpleplanes:charging_station>,
    [
        [ <item:minecraft:iron_axe>, IRON, <item:minecraft:iron_pickaxe> ],
        [ OBSIDIAN, GOLD_BLOCK, OBSIDIAN ],
        [ REDSTONE, TREATED_WOOD, REDSTONE ]
    ]);

#region ----- Industrial Foregoing -----
craftingTable.removeRecipe(<item:industrialforegoing:machine_frame_pity>);

craftingTable.addShaped("if_machine_frame",
    <item:industrialforegoing:machine_frame_pity>,
    [
        [ LOGS, compressed_iron, LOGS ],
        [ compressed_iron, <item:mekanism:alloy_infused>, compressed_iron ],
        [ LOGS, compressed_iron, LOGS ]
    ]);

#region ----- Flux Networks -----
craftingTable.removeRecipe(<item:fluxnetworks:flux_core>);

var flux_dust = <item:fluxnetworks:flux_dust>;

craftingTable.addShaped("fn_flux_core",
    <item:fluxnetworks:flux_core>,
    [
        [flux_dust, OBSIDIAN, flux_dust],
        [OBSIDIAN, <item:mekanism:teleportation_core>, OBSIDIAN],
        [flux_dust, OBSIDIAN, flux_dust]
    ]);

#region ----- RFTools -----
craftingTable.removeRecipe(<item:rftoolsbase:machine_frame>);
craftingTable.removeRecipe(<item:rftoolsdim:dimension_builder>);

craftingTable.addShaped("rft_machine_frame",
    <item:rftoolsbase:machine_frame>,
    [
        [ compressed_iron, <item:minecraft:blue_dye>, compressed_iron ],
        [ <item:minecraft:gold_nugget>, AIR, <item:minecraft:gold_nugget> ],
        [ compressed_iron, <item:minecraft:blue_dye>, compressed_iron ],
    ]);

craftingTable.addShaped("rft_dimension_builder",
    <item:rftoolsdim:dimension_builder>,
    [
        [ <item:mekanism:teleportation_core>, <item:minecraft:emerald>, <item:mekanism:teleportation_core> ],
        [ DIAMOND, <item:rftoolsbase:machine_frame>, DIAMOND ],
        [ arcane_gold, arcane_gold, arcane_gold ],
    ]);

#region ----- Minecraft -----
craftingTable.removeRecipe(<item:minecraft:flint_and_steel>);

craftingTable.addShapeless("mc_flint_and_steel",
    <item:minecraft:flint_and_steel>,
    [ IRON, flux_dust ]);
