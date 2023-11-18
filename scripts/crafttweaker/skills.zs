#modloaded compatskills reskillable
#priority 750

import mods.compatskills.Skill;
import mods.compatskills.MaterialLock;
import mods.compatskills.ModifierLock;

var skills = [
	<skill:reskillable:agility>,
	<skill:reskillable:attack>,
	<skill:reskillable:building>,
	<skill:reskillable:defense>,
	<skill:reskillable:farming>,
	<skill:reskillable:gathering>,
	<skill:reskillable:magic>,
	<skill:reskillable:mining>,
	<skill:dimhoppertweaks:void>,
	<skill:dimhoppertweaks:research>
] as Skill[];

for skill in skills {
	skill.setEnabled(true);
	skill.setBaseLevelCost(9999);
    skill.setCap(1024);
	skill.setSkillPointInterval(2);
}

//tinker material locks
MaterialLock.addMaterialLock("copper", "reskillable:mining|8", "reskillable:attack|8", "reskillable:magic|24");
MaterialLock.addMaterialLock("osmium", "reskillable:attack|16", "reskillable:defense|16", "reskillable:magic|24");
MaterialLock.addMaterialLock("obsidian", "reskillable:mining|16", "reskillable:gathering|16", "reskillable:defense|16");
MaterialLock.addMaterialLock("auroriansteel", "reskillable:mining|24", "reskillable:attack|24", "reskillable:magic|24");
MaterialLock.addMaterialLock("end_steel", "reskillable:mining|20", "reskillable:magic|16");
MaterialLock.addMaterialLock("terrasteel", "reskillable:magic|32");
MaterialLock.addMaterialLock("elementium", "reskillable:magic|24", "reskillable:mining|16");
MaterialLock.addMaterialLock("manasteel", "reskillable:magic|16");
MaterialLock.addMaterialLock("livingwood_plustic", "reskillable:magic|16", "dimhoppertweaks:void|16");
MaterialLock.addMaterialLock("mirion", "reskillable:mining|32", "reskillable:magic|16", "reskillable:attack|24");
MaterialLock.addMaterialLock("aethium", "reskillable:mining|64", "reskillable:attack|64");
MaterialLock.addMaterialLock("ionite", "reskillable:mining|56", "reskillable:attack|56");
MaterialLock.addMaterialLock("pladium", "reskillable:mining|40", "reskillable:attack|48");
MaterialLock.addMaterialLock("kyronite", "reskillable:mining|32", "reskillable:attack|40", "reskillable:gathering|32");
MaterialLock.addMaterialLock("erodium", "reskillable:mining|28", "reskillable:attack|32", "reskillable:gathering|32");
MaterialLock.addMaterialLock("litherite", "reskillable:mining|16", "reskillable:attack|16", "reskillable:gathering|16");
MaterialLock.addMaterialLock("mica", "reskillable:attack|24");
MaterialLock.addMaterialLock("fluixcrystal_plustic", "reskillable:gathering|24", "dimhoppertweaks:void|24");
MaterialLock.addMaterialLock("certusquartz_plustic", "reskillable:mining|16");
MaterialLock.addMaterialLock("titanium", "reskillable:mining|16", "reskillable:defense|16");
MaterialLock.addMaterialLock("desh", "reskillable:magic|32", "dimhoppertweaks:void|32");
MaterialLock.addMaterialLock("psigem", "reskillable:magic|24", "reskillable:gathering|24", "dimhoppertweaks:void|24");
MaterialLock.addMaterialLock("psimetal", "reskillable:magic|24", "reskillable:gathering|16", "dimhoppertweaks:void|16");
MaterialLock.addMaterialLock("diamatine_actadd_plustic", "reskillable:magic|32", "reskillable:attack|32");
MaterialLock.addMaterialLock("emeradic_actadd_plustic", "reskillable:attack|32");
MaterialLock.addMaterialLock("restonia_actadd_plustic", "reskillable:magic|24", "reskillable:gathering|24", "reskillable:defense|24");
MaterialLock.addMaterialLock("palis_actadd_plustic", "reskillable:agility|32");
MaterialLock.addMaterialLock("enori_actadd_plustic", "reskillable:magic|24", "reskillable:defense|24", "dimhoppertweaks:void|24");
MaterialLock.addMaterialLock("void_actadd_plustic", "reskillable:attack|28");
MaterialLock.addMaterialLock("blackquartz_plustic", "reskillable:attack|24");
MaterialLock.addMaterialLock("enderium_plustic", "reskillable:magic|28", "reskillable:attack|24", "reskillable:gathering|24", "reskillable:mining|24", "dimhoppertweaks:void|28");
MaterialLock.addMaterialLock("platinum_plustic", "reskillable:magic|28", "reskillable:attack|32", "reskillable:gathering|26", "reskillable:mining|26", "reskillable:defense|24", "dimhoppertweaks:void|28");
MaterialLock.addMaterialLock("signalum_plustic", "reskillable:attack|28", "reskillable:gathering|24");
MaterialLock.addMaterialLock("lumium_plustic", "reskillable:magic|16", "reskillable:mining|16");
MaterialLock.addMaterialLock("osmiridium", "reskillable:attack|24", "reskillable:defense|24");
MaterialLock.addMaterialLock("osgloglas", "reskillable:magic|40", "reskillable:attack|40", "reskillable:gathering|32", "reskillable:mining|40", "dimhoppertweaks:void|40");
MaterialLock.addMaterialLock("cerulean", "reskillable:agility|12", "reskillable:mining|12");
MaterialLock.addMaterialLock("moonstone", "reskillable:agility|8", "reskillable:mining|8");
MaterialLock.addMaterialLock("silentwood", "reskillable:agility|4", "reskillable:mining|4", "reskillable:gathering|6");
MaterialLock.addMaterialLock("aurorianstone", "reskillable:agility|6", "reskillable:mining|6", "reskillable:gathering|8");
MaterialLock.addMaterialLock("darkmatter", "reskillable:agility|64", "reskillable:attack|64", "reskillable:mining|64");
MaterialLock.addMaterialLock("redmatter", "reskillable:agility|96", "reskillable:attack|96", "reskillable:mining|96");
MaterialLock.addMaterialLock("emerald_plustic", "reskillable:gathering|24", "reskillable:mining|24");
MaterialLock.addMaterialLock("bloodwood_plustic", "reskillable:attack|16", "reskillable:gathering|16", "reskillable:mining|24");
MaterialLock.addMaterialLock("fusewood_plustic", "reskillable:attack|24", "reskillable:gathering|16", "reskillable:mining|16");
MaterialLock.addMaterialLock("ghostwood_plustic", "reskillable:magic|16", "reskillable:gathering|16", "reskillable:mining|16");
MaterialLock.addMaterialLock("darkwood_plustic", "reskillable:attack|24", "reskillable:gathering|16", "reskillable:mining|16");
MaterialLock.addMaterialLock("wyvern_plustic", "reskillable:magic|64", "reskillable:attack|64", "reskillable:gathering|64", "reskillable:mining|70", "dimhoppertweaks:void|64", "reskillable:agility|24");
MaterialLock.addMaterialLock("awakened_plustic", "reskillable:magic|64", "reskillable:attack|128", "reskillable:gathering|64", "reskillable:mining|96", "dimhoppertweaks:void|64", "reskillable:agility|32");
MaterialLock.addMaterialLock("chaotic_plustic", "reskillable:attack|160", "reskillable:mining|128", "reskillable:agility|48");
MaterialLock.addMaterialLock("wood", "reskillable:gathering|2");
MaterialLock.addMaterialLock("stone", "reskillable:gathering|2", "reskillable:defense|4");
MaterialLock.addMaterialLock("flint", "reskillable:attack|2", "reskillable:defense|4");
MaterialLock.addMaterialLock("bone", "reskillable:attack|4", "reskillable:defense|6");
MaterialLock.addMaterialLock("nagascale", "reskillable:attack|6", "reskillable:mining|6");
MaterialLock.addMaterialLock("steeleaf", "reskillable:gathering|8", "reskillable:mining|8");
MaterialLock.addMaterialLock("firewood", "reskillable:mining|1025");
MaterialLock.addMaterialLock("emberstone", "reskillable:mining|1025");
MaterialLock.addMaterialLock("fierymetal", "reskillable:mining|1025");
MaterialLock.addMaterialLock("construction_alloy", "reskillable:mining|2");
MaterialLock.addMaterialLock("knightmetal", "reskillable:mining|1025");
MaterialLock.addMaterialLock("soularium", "reskillable:mining|8");
MaterialLock.addMaterialLock("dark_steel", "reskillable:mining|20", "dimhoppertweaks:void|20", "reskillable:gathering|16");
MaterialLock.addMaterialLock("pulsating_iron", "dimhoppertweaks:void|24");
MaterialLock.addMaterialLock("conductive_iron", "reskillable:agility|16", "reskillable:mining|12", "reskillable:attack|12");
MaterialLock.addMaterialLock("redstone_alloy", "reskillable:magic|16", "reskillable:mining|12", "reskillable:attack|12");
MaterialLock.addMaterialLock("vibrant_alloy", "dimhoppertweaks:void|16", "reskillable:gathering|16", "reskillable:mining|24");
MaterialLock.addMaterialLock("energetic_alloy", "reskillable:gathering|16", "reskillable:mining|20", "reskillable:attack|12");
MaterialLock.addMaterialLock("electrical_steel", "reskillable:agility|16", "reskillable:mining|12", "reskillable:attack|12");
MaterialLock.addMaterialLock("cactus", "reskillable:attack|12");
MaterialLock.addMaterialLock("prismarine", "reskillable:agility|16", "reskillable:attack|12");
MaterialLock.addMaterialLock("endstone", "dimhoppertweaks:void|24", "reskillable:mining|16", "reskillable:magic|16");
MaterialLock.addMaterialLock("paper", "reskillable:magic|16");
MaterialLock.addMaterialLock("sponge", "reskillable:mining|24");

//tinker modifier locks
ModifierLock.addModifierLock("harvestwidth", "reskillable:mining|24");
ModifierLock.addModifierLock("harvestheight", "reskillable:mining|24");
ModifierLock.addModifierLock("luck", "reskillable:gathering|16");
ModifierLock.addModifierLock("haste", "reskillable:mining|16");
ModifierLock.addModifierLock("sharp", "reskillable:attack|16");
ModifierLock.addModifierLock("diamond", "reskillable:attack|24", "reskillable:mining|24");
ModifierLock.addModifierLock("emerald", "reskillable:magic|16");
ModifierLock.addModifierLock("silktouch", "reskillable:mining|24");
ModifierLock.addModifierLock("reinforced", "reskillable:defense|24");
ModifierLock.addModifierLock("beheading", "reskillable:gathering|12", "reskillable:attack|16");
ModifierLock.addModifierLock("smite", "reskillable:attack|16");
ModifierLock.addModifierLock("bane_of_arthopods", "reskillable:attack|16");
ModifierLock.addModifierLock("fiery", "reskillable:magic|16");
ModifierLock.addModifierLock("necrotic", "reskillable:attack|24", "reskillable:magic|24");
ModifierLock.addModifierLock("knockback", "reskillable:defense|8");
ModifierLock.addModifierLock("soulbound", "dimhoppertweaks:void|32");
ModifierLock.addModifierLock("blasting", "reskillable:mining|24");
ModifierLock.addModifierLock("glowing", "reskillable:magic|8", "reskillable:building|16");
ModifierLock.addModifierLock("shulking", "reskillable:magic|32");
ModifierLock.addModifierLock("webbed", "reskillable:agility|16");
ModifierLock.addModifierLock("fins", "reskillable:agility|16");
ModifierLock.addModifierLock("autosmelt", "reskillable:mining|1025");
ModifierLock.addModifierLock("extratraitfierymetalautosmeltflammablesuperheattwilit", "reskillable:mining|1025");
ModifierLock.addModifierLock("extratraitemberstoneautosmeltblazing", "reskillable:mining|1025");