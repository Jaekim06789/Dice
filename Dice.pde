void setup()
{
  noLoop();
  size(300, 300);
}
void draw()
{
  for(int r = 20; r <= 270; r += 30){
    for(int c = 20; c <= 270; c += 30){
      Die one = new Die(c,r);
      one.show();
      one.roll();
    }
  }
  
}
void mousePressed()
{
  redraw();
}
class Die //models one single dice cube
{
  //variable declarations here
  int myX;
  int myY;
  int myNum;
  int sum; 
  Die(int x, int y) //constructor
  {
    //variable initializations here
    myX = x;
    myY = y; 
  }
  void roll()
  {
    myNum = (int)(Math.random()*6+1);
    if(myNum == 1){
      fill(0);
      ellipse(myX+15,myY+15,4,4);
      sum = sum + 1;
    }else if(myNum == 2){
      fill(0);
      ellipse(myX+5, myY+5,4,4);
      ellipse(myX+25,myY+25,4,4);
      sum = sum + 2;
    }else if(myNum == 3){
      fill(0);
      ellipse(myX+5,myY+5,4,4);
      ellipse(myX+25,myY+25,4,4);
      ellipse(myX+15,myY+15,4,4);
      sum = sum + 3;
    }else if(myNum == 4){
      fill(0);
      ellipse(myX+5,myY+5,4,4);
      ellipse(myX+25,myY+5,4,4);
      ellipse(myX+5,myY+25,4,4);
      ellipse(myX+25,myY+25,4,4);
      sum = sum + 4; 
    }else if(myNum == 5){
      fill(0);
      ellipse(myX+5,myY+5,4,4);
      ellipse(myX+25,myY+5,4,4);
      ellipse(myX+5,myY+25,4,4);
      ellipse(myX+25,myY+25,4,4);
      ellipse(myX+15,myY+15,4,4);
      sum = sum + 5; 
    }else if(myNum == 6){
      fill(0);
      ellipse(myX+10,myY+5,4,4);
      ellipse(myX+10,myY+15,4,4);
      ellipse(myX+10,myY+25,4,4);
      ellipse(myX+20,myY+5,4,4);
      ellipse(myX+20,myY+15,4,4);
      ellipse(myX+20,myY+25,4,4);
      sum = sum + 6; 
    }
  }
  void show()
  {
    fill(255);
    rect(myX, myY, 30, 30, 5, 5, 5, 5);
  }
}