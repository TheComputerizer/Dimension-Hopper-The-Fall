#loader contenttweaker

import mods.contenttweaker.VanillaFactory;
import mods.contenttweaker.Fluid;
import mods.contenttweaker.Color;

var aurorianAlloy = VanillaFactory.createFluid("aurorian_alloy", Color.fromHex("74A3FF"));
aurorianAlloy.rarity = "UNCOMMON";
aurorianAlloy.luminosity = 15;
aurorianAlloy.density = 100;
aurorianAlloy.viscosity = 100;
aurorianAlloy.material = <blockmaterial:lava>;
aurorianAlloy.register();

var geneticCatalyst = VanillaFactory.createFluid("genetic_chaos_fluid", Color.fromHex("000000"));
geneticCatalyst.rarity = "EPIC";
geneticCatalyst.luminosity = 3;
geneticCatalyst.density = 10;
geneticCatalyst.viscosity = 10;
geneticCatalyst.material = <blockmaterial:lava>;
geneticCatalyst.register();

var geneticFluid = VanillaFactory.createFluid("genetic_waste_fluid", Color.fromHex("006B2B"));
geneticFluid.rarity = "UNCOMMON";
geneticFluid.luminosity = 0;
geneticFluid.density = 10;
geneticFluid.viscosity = 10;
geneticFluid.material = <blockmaterial:lava>;
geneticFluid.register();