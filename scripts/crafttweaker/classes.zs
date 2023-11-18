#priority 1250
#reloadable

import crafttweaker.entity.IEntity;
import crafttweaker.player.IPlayer;

zenClass entityClass {
    var entity as IEntity;
    zenConstructor(entity as IEntity) {
        this.entity = entity;
    }
    function get() as IEntity {
        return entity;
    }
	function set(arg as IEntity) as IEntity {
		this.entity = arg;
    }
}

zenClass playerClass {
    var player as IPlayer;
    zenConstructor(player as IPlayer) {
        this.player = player;
    }
    function get() as IPlayer {
        return player;
    }
	function set(arg as IPlayer) as IPlayer {
		this.player = arg;
    }
}