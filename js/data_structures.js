var color = ["blue", "red", "purple", "pink"];
var horse_name = ["Ed", "Sea Biscuit", "Tom", "Mr. H"];

color.push("Orange");
horse_name.push("Sky");
var horses = {};
for (var i = 0; i <= color.length - 1; i++){
horses[horse_name[i]] = color[i];
}

console.log(horses);
