const fs = require("fs");

console.log("-------------------------------------------------------------------");

fs.writeFileSync("palette.json", JSON.stringify({
    uwu: "owo"
}));