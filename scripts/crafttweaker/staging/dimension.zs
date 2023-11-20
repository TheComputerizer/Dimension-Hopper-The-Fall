import scripts.crafttweaker.staging.init as Stages;

//progression dimensions
static progression as int[][string] = {
	"twilight": [
		7
	],
	"bridgeone": [
		0
	],
	"overworld": [
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
	],
	"labyrinth": [
		-50,
		17,
		44,
		45,
		76,
		77,
		84,
		428
	],
	"cavern": [
		-60,
		-59,
		-58,
		-57,
		-56,
		-55,
		-54,
		-53,
		-52,
		-51,
		1,
		20
	],
	"planets": [
		-31,
		-30,
		-29,
		-6,
		120,
		121,
		123
	],
	"advent": [
		800,
		801,
		802,
		803,
		804,
		805,
		806,
		807,
		808,
		809,
		810,
		811,
		812,
		813,
		814,
		815,
		816,
		817,
		818,
		819,
		820,
		821
	],
	"bridgesix": [
		-9999
	],
	"deepdown": [
		-9,
		66
	],
	"bedrockfinal": [
		2
	]
} as int[][string];

//purchaseable dimensions
static shop as int[string] = {
	"redsandstone": 9901,		//1
	"sandstone": 9902,			//1
	"wool": 9903,				//1
	"wood": 9904,				//1
	"tnt": 9905,				//3
	"stonebrick": 9906,			//1
	"stone": 9907,				//1
	"stickypiston": 9908,		//3
	"sponge": 9909,				//4
	"soulsand": 9910,			//2
	"snow": 9911,				//1
	"alternatereality": 9912,	//2
	"beacon": 9913,				//5
	"bedrock": 9914,			//???
	"bone": 9915,				//1
	"bookshelf": 9916,			//4
	"melon": 9918,				//2
	"interdimensional": 9920,	//6
	"coal": 9921,				//2
	"concrete": 9922,			//2
	"clay": 9923,				//1
	"greenery": 9924,			//1
	"endstone": 9928,			//3
	"prismarine": 9929,			//3
	"netherwart": 9930,			//2
	"haybale": 9931,			//1
	"sealantern": 9932,			//3
	"flint": 9933,				//1
	"netherbrick": 9934,		//2
	"purpur": 9937,				//3
	"redretherbrick": 9938,		//2
	"slime": 9940,				//2
	"redstonelamp": 9941,		//3
	"normalclay": 9942,			//1
	"glass": 9944,				//1
	"jackolantern": 9946,		//2
	"pumpkin": 9947,			//2
	"endstonebricks": 9948,		//3
	"cobblestone": 9949,		//1
	"craftingtable": 9954,		//1
	"quartz": 9957,				//2
	"magma": 9959,				//1
	"noteblock": 9961,			//4
	"cauldron": 9962,			//3
	"shulkerbox": 9965,			//4
	"glazedterracotta": 9966,	//2
	"dispenser": 9967,			//3
	"jukebox": 9968,			//4
	"piston": 9970,				//3
	"hopper": 9972,				//3
	"dropper": 9973,			//3
	"observer": 9974,			//4
	"fence": 9977,				//1
	"ironbars": 9978,			//2
	"glasspane": 9979,			//1
	"cobblestonewall": 9990,	//1
	"diamond": 9993,			//5
	"emerald": 9994,			//5
	"glowstone": 9995,			//2
	"gold": 9996,				//4
	"iron": 9997,				//3
	"lapis": 9998,				//3
	"obsidian": 9999,			//5
	"redstone": 99911,			//3
	"ice": 99914,				//1
	"brick": 99917,				//2
	"brewingstand": 999199		//4
} as int[string];

function load() {
	for name, dimensions in progression {
		for dim in dimensions {
			Stages.get(name).addDimension(dim);
		}
	}
	for name, dim in shop {
		Stages.get(name).addDimension(dim);
	}
}