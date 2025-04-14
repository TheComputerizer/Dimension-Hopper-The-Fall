#reloadable

import mods.tconstruct.Casting;

function run() {
    Casting.addTableRecipe(<theaurorian:aurorianiteingot>, <theaurorian:crystal>, <liquid:aurorian_alloy>, 500, true);
    Casting.addTableRecipe(<silentgems:food:3>, <minecraft:bowl>, <liquid:protein>, 1000, true);

    //ch2 moon glass
    Casting.addBasinRecipe(<theaurorian:moonglass>, <midnight:archaic_glass>, <liquid:tamoonwater>, 16000);

    //zinc
    Casting.addTableRecipe(<extraplanets:tier8_items:5>, <tconstruct:cast_custom>, <liquid:zinc>, 144, false);
    Casting.addBasinRecipe(<extraplanets:neptune:7>, null, <liquid:zinc>, 1296);
    Casting.addTableRecipe(<extraplanets:tier8_items:5>, <tconstruct:cast_custom>, <liquid:zinc>, 144, false);

    //nova frame
    Casting.addTableRecipe(<extrabees:hive_frame.debug>, <magicbees:frames.oblivion>, <liquid:binnie.dna.raw>, 729000, true);

    //genetic waste duping
    Casting.addTableRecipe(<gendustry:waste>, <forestry:bee_drone_ge>.anyDamage(), <liquid:genetic_chaos_fluid>, 60, true);
    Casting.addTableRecipe(<gendustry:waste>, <forestry:bee_princess_ge>.anyDamage(), <liquid:genetic_chaos_fluid>, 55, true);
    Casting.addTableRecipe(<gendustry:waste>, <forestry:bee_queen_ge>.anyDamage(), <liquid:genetic_chaos_fluid>, 50, true);
}
