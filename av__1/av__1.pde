int mode=0;
int a=0;
float theta;
float b = 0;
PImage pic, img01, img02, img03, img04;
PFont myFont;

void setup() {
  fullScreen();
  textAlign(CENTER);
  textSize(50);
  pic=loadImage("1.png");
  img01=loadImage("01.jpg");
  img02=loadImage("02.png");
  img03=loadImage("03.jpg");
  img04=loadImage("04.png");

  myFont=createFont("ziti.ttf", 40);
  textFont(myFont);
  setupSerial();
}
void draw() {
  runSerial();
  switch(mode) {
  case 0:
    loadMode();
    break;
  case 1 : 
    startMode();
    break;
  case 2 :
    gameMode();
    break;
  case 3:
    endMode();
    break;
  }
}

void grow() {
  if (!boolean(val)) { // arduino boolean
    image(img04, mouseX-100, mouseY+100, 100, 100);
    image(pic, mouseX, mouseY, 200, 200);
    b=b+0.09;
  }else{
    image(pic, mouseX, mouseY, 200, 200);
  }
}