import java.util.Comparator;

public class Die {
  color colorDie;
  color colorEye;
  int result;
  int maxNumber = 6;
  Die(color tempColorDie, color tempColorEye) {
    colorDie = tempColorDie;
    colorEye = tempColorEye;
    result = roll();
  }
  int roll() {
    result = int(random(1,maxNumber+1));
    return result;
  }
  void draw(int x, int y, int size) {
    float eyeSize = size * 0.2;
    rectMode(CENTER);
    fill(colorDie);
    rect(x,y,size,size);
    ellipseMode(CENTER);
    fill(colorEye);
    switch(result) {
      case 1:
        ellipse(x,y,eyeSize,eyeSize);
        break;
      case 2:
        ellipse(x-size*0.25,y-size*0.25,eyeSize,eyeSize);
        ellipse(x+size*0.25,y+size*0.25,eyeSize,eyeSize);
        break;
      case 3:
        ellipse(x,y,eyeSize,eyeSize);
        ellipse(x-size*0.25,y-size*0.25,eyeSize,eyeSize);
        ellipse(x+size*0.25,y+size*0.25,eyeSize,eyeSize);
        break;
      case 4:
        ellipse(x-size*0.25,y-size*0.25,eyeSize,eyeSize);
        ellipse(x-size*0.25,y+size*0.25,eyeSize,eyeSize);
        ellipse(x+size*0.25,y-size*0.25,eyeSize,eyeSize);
        ellipse(x+size*0.25,y+size*0.25,eyeSize,eyeSize);
        break;
      case 5:
        ellipse(x,y,eyeSize,eyeSize);
        ellipse(x-size*0.25,y-size*0.25,eyeSize,eyeSize);
        ellipse(x-size*0.25,y+size*0.25,eyeSize,eyeSize);
        ellipse(x+size*0.25,y-size*0.25,eyeSize,eyeSize);
        ellipse(x+size*0.25,y+size*0.25,eyeSize,eyeSize);
        break;
      case 6:
        ellipse(x-size*0.25,y-size*0.25,eyeSize,eyeSize);
        ellipse(x-size*0.25,y+size*0.25,eyeSize,eyeSize);
        ellipse(x+size*0.25,y-size*0.25,eyeSize,eyeSize);
        ellipse(x+size*0.25,y+size*0.25,eyeSize,eyeSize);
        ellipse(x,y-size*0.25,eyeSize,eyeSize);
        ellipse(x,y+size*0.25,eyeSize,eyeSize);
        break;
      case 7:
        ellipse(x-size*0.25,y-size*0.25,eyeSize,eyeSize);
        ellipse(x-size*0.25,y+size*0.25,eyeSize,eyeSize);
        ellipse(x+size*0.25,y-size*0.25,eyeSize,eyeSize);
        ellipse(x+size*0.25,y+size*0.25,eyeSize,eyeSize);
        ellipse(x,y-size*0.25,eyeSize,eyeSize);
        ellipse(x,y+size*0.25,eyeSize,eyeSize);
        ellipse(x,y,eyeSize,eyeSize);
        break;
      case 8:
        ellipse(x-size*0.25,y-size*0.25,eyeSize,eyeSize);
        ellipse(x-size*0.25,y+size*0.25,eyeSize,eyeSize);
        ellipse(x+size*0.25,y-size*0.25,eyeSize,eyeSize);
        ellipse(x+size*0.25,y+size*0.25,eyeSize,eyeSize);
        ellipse(x,y-size*0.25,eyeSize,eyeSize);
        ellipse(x,y+size*0.25,eyeSize,eyeSize);
        ellipse(x-size*0.25,y,eyeSize,eyeSize);
        ellipse(x+size*0.25,y,eyeSize,eyeSize);
        break;
      case 9:
        ellipse(x-size*0.25,y-size*0.25,eyeSize,eyeSize);
        ellipse(x-size*0.25,y+size*0.25,eyeSize,eyeSize);
        ellipse(x+size*0.25,y-size*0.25,eyeSize,eyeSize);
        ellipse(x+size*0.25,y+size*0.25,eyeSize,eyeSize);
        ellipse(x,y-size*0.25,eyeSize,eyeSize);
        ellipse(x,y+size*0.25,eyeSize,eyeSize);
        ellipse(x-size*0.25,y,eyeSize,eyeSize);
        ellipse(x+size*0.25,y,eyeSize,eyeSize);
        ellipse(x,y,eyeSize,eyeSize);
        break;
      default:
        textSize(size);
        textAlign(CENTER,CENTER);
        text(result, x, y);
        break;
    }
  }
  void drawEye(int x, int y, int size) {
    if (result == 1 || result == 3 || result == 5) {
      ellipse(x-size*0.25,y-size*0.25,size,size);
    }
    if (result >= 2) {
      
    }
  }
}
public class DieComparator implements Comparator<Die> {
  //@Override
  public int compare(Die d1, Die d2) {
    return d1.result-d2.result;
  }
};
