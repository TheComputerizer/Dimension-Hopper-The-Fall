#reloadable

import crafttweaker.data.IData;
import crafttweaker.item.IItemStack;
import scripts.crafttweaker.util as Util;

Util.shapedTransform(<huntingdim:frame>,<ore:logWood>,Util.corners(<ore:arrow>,<ore:logWood>,<thermalfoundation:material:128>),
    function(marked as IItemStack) as IData {
        return {BaseBlock: {id: marked.definition.id as string, Count: 1 as byte, Damage: marked.metadata as short}};
    });