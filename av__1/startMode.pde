 void startMode(){
  image(img01,0,0);
  fill(255);
  noStroke();
  text("Loading...", width/2, height/2);
  text(a + "%", width/2, height/2 + 80);
 
  rect(225,height/2+120,800,50);
  fill(0); 
  image(img02,200+7.2*a,height/2+50);
  if (a < 100) {
    a ++;
  }
  if (a == 100) mode = 2;
}