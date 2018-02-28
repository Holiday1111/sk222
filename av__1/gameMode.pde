void gameMode() { 
  image(img01, 0, 0);
  fill(255);
  textSize(80);
  text("给小树浇水，使小树快快成长!", width/2, height/4);
  frameRate(30);
  stroke(#6FAD05);
  //float a = (mouseX / (float) width) * 90f;
  b += 0;
  println(b);
  theta = radians(b);
  pushMatrix();
  translate(width/2, height);
  line(0, 0, 0, -120);
  translate(0, -120);
  branch(120);
  popMatrix();
  grow();
  if (b>25) mode = 3;
}
void branch(float h) {
  h *= 0.66;
  if (h > 2) {
    pushMatrix();
    rotate(theta);   
    line(0, 0, 0, -h); 
    translate(0, -h);
    branch(h);   
    popMatrix();
    pushMatrix();
    rotate(-theta);
    line(0, 0, 0, -h);
    translate(0, -h);
    branch(h);
    popMatrix();
  }
}