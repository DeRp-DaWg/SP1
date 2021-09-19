DiceCup cup;
Die[] dice;

void setup() {
  size(1920, 1000);
  cup = new DiceCup();
  spawnDice(6, cup);
  noLoop();
}

void draw() {
  background(255);
  cup.draw(0, 0, 100);
  cup.drawLines();
}


void keyPressed() {
  if (key == ENTER) {
    cup.shake();
    redraw();
  }
}

void spawnDice(int amount, DiceCup c) {
  dice = new Die[amount];
  for (int i = 0; i < amount; i++) {
    dice[i] = new Die(int(random(#000000)),int(random(#000000)));
    c.addDie(dice[i]);
  }
}
