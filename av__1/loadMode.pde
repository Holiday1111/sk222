void loadMode() {
  image(img01,0,0);
    fill(255);
  text("现如今，由于对森林树木的砍伐，使森山沙漠化越来越严重!", width/2, height/2-40);
  text("中国荒漠化形势十分严峻 根据1998年国家林业局防治荒漠化办公室", width/2, height/2);
  text("等政府部门发表的材料指出，中国是世界上荒漠化严重的国家之一。", width/2, height/2+40);
  text("拯救地球从每一次浇水开始", width/2, height/2+80);
   fill(random(255),random(255),random(255));
  text("按任意键继续",width/2+350, height/2+340);
}


void keyPressed() {
  if (mode == 0) {
    mode = 1;
  }
}