#reloadable

recipes.addShapeless("alltransmuationknowledge", <projecte:item.pe_tome>, [<projecte:item.pe_philosophers_stone>, <minecraft:writable_book>, 
    <minecraft:potion>.withTag({Potion: "apotheosis:strong_knowledge"}), <forge:bucketfilled>.withTag({FluidName: "experience", Amount: 1000})]);

recipes.addShaped("transmutationtablet", <projecte:item.pe_transmutation_tablet>, [
[<projectex:matter:2>, <projectex:matter:2>, <projectex:matter:2>],
[<projectex:matter:2>, <projecte:transmutation_table>, <projectex:matter:2>],
[<projectex:matter:2>, <projectex:matter:2>, <projectex:matter:2>]
]);