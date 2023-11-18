import mods.zenstages.ZenStager;
import scripts.crafttweaker.gamestagesinit.twilightStage;
import scripts.crafttweaker.gamestagesinit.overworldStage;
import scripts.crafttweaker.gamestagesinit.labyrinthStage;
import scripts.crafttweaker.gamestagesinit.cavernStage;
import scripts.crafttweaker.gamestagesinit.swampStage;
import scripts.crafttweaker.gamestagesinit.planetsStage;
import scripts.crafttweaker.gamestagesinit.adventStage;
import scripts.crafttweaker.gamestagesinit.deepspaceStage;
import scripts.crafttweaker.gamestagesinit.deepdownStage;
import scripts.crafttweaker.gamestagesinit.finalfrontierStage;
import scripts.crafttweaker.gamestagesinit.bedrockStage;
import scripts.crafttweaker.gamestagesinit.bridgeOne;
import scripts.crafttweaker.gamestagesinit.bridgeTwo;
import scripts.crafttweaker.gamestagesinit.bridgeThree;
import scripts.crafttweaker.gamestagesinit.bridgeFour;
import scripts.crafttweaker.gamestagesinit.bridgeFive;
import scripts.crafttweaker.gamestagesinit.bridgeSix;
import scripts.crafttweaker.gamestagesinit.bridgeSeven;
import scripts.crafttweaker.gamestagesinit.bridgeEight;
import scripts.crafttweaker.gamestagesinit.bridgeNine;
import scripts.crafttweaker.gamestagesinit.netherStage;

static dimensionStages as int[][string] = {
	twilightStage.stage: [
		7
	],
	bridgeOne.stage: [
		0
	],
	overworldStage.stage: [
		-127,
		-23,
		-1,
		49,
		69,
		685,
		686,
		687,
		688,
		28885
	]
};

function load() {
	for stageName, dimensions in dimensionStages {
		for dimension in dimensions {
			ZenStager.getStage(stageName).addDimension(dimension);
		}
	}
	labyrinthStage.addDimension(17);
	labyrinthStage.addDimension(84);
	labyrinthStage.addDimension(44);
	labyrinthStage.addDimension(45);
	labyrinthStage.addDimension(428);
	labyrinthStage.addDimension(76);
	labyrinthStage.addDimension(77);
	labyrinthStage.addDimension(-50);
	cavernStage.addDimension(-51);
	cavernStage.addDimension(-52);
	cavernStage.addDimension(-53);
	cavernStage.addDimension(-54);
	cavernStage.addDimension(-55);
	cavernStage.addDimension(-56);
	cavernStage.addDimension(-57);
	cavernStage.addDimension(-58);
	cavernStage.addDimension(-59);
	cavernStage.addDimension(-60);
	cavernStage.addDimension(1);
	cavernStage.addDimension(20);
	planetsStage.addDimension(-29);
	planetsStage.addDimension(-30);
	planetsStage.addDimension(-31);
	planetsStage.addDimension(120);
	planetsStage.addDimension(121);
	planetsStage.addDimension(123);
	planetsStage.addDimension(-6);
	adventStage.addDimension(800);
	adventStage.addDimension(802);
	adventStage.addDimension(805);
	adventStage.addDimension(807);
	adventStage.addDimension(815);
	adventStage.addDimension(818);
	adventStage.addDimension(801);
	adventStage.addDimension(803);
	adventStage.addDimension(804);
	adventStage.addDimension(806);
	adventStage.addDimension(808);
	adventStage.addDimension(809);
	adventStage.addDimension(810);
	adventStage.addDimension(811);
	adventStage.addDimension(812);
	adventStage.addDimension(813);
	adventStage.addDimension(814);
	adventStage.addDimension(816);
	adventStage.addDimension(817);
	adventStage.addDimension(819);
	adventStage.addDimension(820);
	adventStage.addDimension(820);
	bridgeSix.addDimension(-9999);
	deepdownStage.addDimension(-9);
	deepdownStage.addDimension(66);
	bedrockStage.addDimension(2);
}