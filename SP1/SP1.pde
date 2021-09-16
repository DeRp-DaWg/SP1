Die die1;
DiceCup cup;
DiceCup cup2;
Die[] dice;

void setup() {
  size(1920, 1000);
  die1 = new Die(0,0);
  cup = new DiceCup();
  cup2 = new DiceCup();
  spawnDice(6, cup);
  //spawnDice(6, cup2);
  //cup.addDie(die1);
  noLoop();
}

void draw() {
  background(255);
  cup.draw(0, 0, 100);
  cup.drawLines();
  cup2.draw(width/2, 0, 100);
  cup2.drawLines();
}


void keyPressed() {
  if (key == ENTER) {
    cup.shake();
    cup2.shake();
    redraw();
  }
}

void mousePressed() {
  if(mouseButton == LEFT){
    //cup.addDie(die);
  }
  if(mouseButton == RIGHT){
    //cup.removeDie(die);
  }
  redraw();
}

void spawnDice(int amount, DiceCup c) {
  dice = new Die[amount];
  for (int i = 0; i <= amount-1; i++) {
    dice[i] = new Die(int(random(#000000)),int(random(#000000)));
    c.addDie(dice[i]);
  }
}
