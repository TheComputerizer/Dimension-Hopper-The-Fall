import mods.jmapstages.JMapStages;
import scripts.crafttweaker.gamestagesinit.overworldStage;

function load() {
	JMapStages.setWaypointStage(overworldStage.stage);
	JMapStages.setDeathpointStage(overworldStage.stage);
	JMapStages.setMinimapStage(overworldStage.stage);
	JMapStages.setFullscreenStage(overworldStage.stage);
}