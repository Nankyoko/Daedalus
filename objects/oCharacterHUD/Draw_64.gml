/// @description Draws a UI almost as ugly as my first ex wife, Sharron

//Draw the base ugly UI
UICharBackWheel();
UIEllipse(sTestUICircle, 25,625, 125, 725);
UICharHealth(currentCharacter.maxHP, currentCharacter.currentHP);

//Draw the ugly sprite
draw_sprite(sStiffSprites, ChangeSprite(currentCharacter.name, "Happy"), 55, 665);