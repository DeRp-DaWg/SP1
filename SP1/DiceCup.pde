import java.util.Collections;

class DiceCup {
  ArrayList<Die> cup;
  int dieSize = 0;
  int x;
  int y;
  int colNum;
  int rowNum;
  DiceCup() {
    cup = new ArrayList<Die>();
  }
  void addDie(Die die) {
    cup.add(die);
  }
  void removeDie(Die die) {
    cup.remove(die);
  }
  void shake() {
    for (Die die : cup) {
      die.roll();
    }
  }
  void sort() {
    Collections.sort(cup, new DieComparator());
  }
  void draw(int tempX, int tempY, int tempDieSize) {
    if(cup.isEmpty()){
      return;
    }
    x = tempX;
    y = tempY;
    dieSize = tempDieSize;
    colNum = 0;
    sort();
    int maxNumber;
    maxNumber = cup.get(cup.size()-1).result;
    int[] count = new int[maxNumber];
    int rowCurrent = 0;
    int prevRes = cup.get(0).result;
    for (Die die : cup) {
      if (die.result > prevRes) {
        rowCurrent++;
      }
      prevRes = die.result;
      int paddingX = dieSize/2;
      int paddingY = dieSize/2;
      int locationX = count[die.result-1]*int(dieSize*1.5);
      int locationY = (rowCurrent)*int(dieSize*1.5);
      println();
      die.draw(x+paddingX+locationX, y+paddingY+locationY, dieSize);
      count[die.result-1]++;
    }
    rowNum = rowCurrent;
    for (int i = 0; i < count.length; i++) {
      if (count[i] > colNum) {
        colNum = count[i];
      }
    }
  }
  void drawLines() {
    for (int i = 1; i <= rowNum+1; i++) {
      line(x, y-dieSize/4+i*dieSize*1.5, x+dieSize*1.5*colNum-dieSize*0.5, y-dieSize/4+i*dieSize*1.5);
    }
  }
}
