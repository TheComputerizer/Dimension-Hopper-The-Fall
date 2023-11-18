#reloadable

import crafttweaker.data.IData;
import crafttweaker.item.IItemStack;
import scripts.crafttweaker.util as Util;

Util.shapelessTransform(<randomthings:timeinabottle>,<randomthings:timeinabottle>,[<environmentaltech:lonsdaleite_crystal>,<randomthings:timeinabottle>],
    function(marked as IItemStack) as IData {
        return {timeData: {storedTime: marked.tag.timeData.storedTime+1200}};
    });