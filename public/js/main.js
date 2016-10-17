console.log('hi mom');

function Character() {

}

var $loadout = $("#loadout")


$('#userInput').keypress(function(event) {
  var searchString = $('#userInput').val();
    if (event.which == 13) {
        getMyCharacter(searchString);
        // return false;
    }
});

// GET loadout for a character

function getMyCharacter(searchString) {
  $.ajax({
    method: 'GET',
    url: '/api/my-character?search=' + encodeURIComponent(searchString),
    datatype: 'json',
    success: (function(data){

      console.log(data);


      var charName = data.character.name,
          weakSpell = data.character.loadout.weakSpell.name,
          weakSpellPower = data.character.loadout.weakSpell.power,
          weakSpellTimer = data.character.loadout.weakSpell.speed,
          standardSpell = data.character.loadout.standardSpell.name,
          standardSpellPower = data.character.loadout.standardSpell.power,
          standardSpellTimer = data.character.loadout.standardSpell.speed,
          strongSpell = data.character.loadout.strongSpell.name,
          strongSpellPower = data.character.loadout.strongSpell.power,
          strongSpellTimer = data.character.loadout.strongSpell.speed;

        $(".charName").append("<h3>" + charName + " </h3>");
        $("#weak-spell").append("<li>" + "Spell ≈ " + weakSpell + " </li>");
        $("#weak-spell").append("<li>" + "Power ≈ " + weakSpellPower + " </li>");
        $("#weak-spell").append("<li>" + "Timer ≈ " + weakSpellTimer + " </li>");
        $("#standard-spell").append("<li>" + "Spell ≈ " + standardSpell + " </li>");
        $("#standard-spell").append("<li>" + "Power ≈ " + standardSpellPower + " </li>");
        $("#standard-spell").append("<li>" + "Timer ≈ " + standardSpellTimer + " </li>");
        $("#strong-spell").append("<li>" + "Spell ≈ " + strongSpell + " </li>");
        $("#strong-spell").append("<li>" + "Power ≈ " + strongSpellPower + " </li>");
        $("#strong-spell").append("<li>" + "Timer ≈ " + strongSpellTimer + " </li>");
        $(".allCharData").fadeIn(1000);
        $(".swap").fadeIn(5000);
        $(".charInfo").fadeIn(3000);
      })
  });
}



// module.exports = Calculator;

// $('#userInput').keypress(function(event) {
//     var searchString = $('#userInput').val();
//     if (event.which == 13) {
//         characterSearch(searchString);
//         return false;
//     }
// });
// // search bar requests
// function characterSearch(searchString) {
//   var searchbar = $("#userInput").val("");
//   $.ajax({
//       method: 'GET',
//       url: 'api/character-spells?search=' + encodeURIComponent(searchString),
//       data: {},
//       datatype: 'json',
//     }).done(function(characterData){
//     characterData.forEach(function(spells){
//       console.log('hi');
//       // $("<li>").attr('id', ).text(weapon.weapon_name + ' ' + weapon.weapon_type).appendTo($loadout);
//     });
//   });
// }
// characterSearch();
// if you have trouble wrap it in a function

// GET character from full character list
// function getCharName(searchString) {
//   var searchbar = $("#userInput").val("");
//   $.ajax({
//     method: 'GET',
//     url: '/api/character-list?search=' + encodeURIComponent(searchString),
//     data: {},
//     datatype: 'json',
//   }).done(function(character) {
//     new CharacterDetails(character[0]); //had [0] after character inside brackets
//     console.log(character);
//   }).fail(function(xhr, text, status) {
//     if (xhr.status == 404)
//     console.log('help me, computer!', text, status, xhr.status);
//   });
// }
// getCharName();

// Constructor for character information
function CharacterDetails(characterObject) {
  // console.log(characterObject);
    this.info = {
        charName: characterObject.name,
    };

    var charContainer = $("<div>").attr("class", this.info.charName);
    var charName = $("<p>").addClass('character').attr("id", this.info.charName).html(this.info.charName).appendTo(charContainer);

    $(charContainer).insertAfter("header");

    this.MagicElements = function(characterObject) {
        var context = {
            charName: this.info.name,
        };
    };
    this.MagicElements(characterObject);
}




// function Character() {
//
// }
//
//
// Character.prototype.characterSearch = function(variable) {
//
// };
//

//
// function Calculator() {
//
// }
//
// Calculator.prototype.calculate = function(expr) {
//   var splitExpr = expr.split(' ');
//   var operator = splitExpr[0];
//   var result = parseInt(splitExpr[1]);
//
//   for (var index = 2; index < splitExpr.length; index++) {
//     var operand = parseInt(splitExpr[index]);
//     if (operator == '+') {
//       result += operand;
//     }
//     if (operator == '-') {
//       result -= operand;
//     }
//     if (operator == '*') {
//       result *= operand;
//     }
//     if (operator == '/') {
//       result /= operand;
//     }
//   }
//
//
//   return result;
//
// };
//
// module.exports = Calculator;
//
//
