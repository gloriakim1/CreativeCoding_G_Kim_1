  PShape mountain, ground, ground1, ground2;       //variables for created shapes
  PShape grass, g, g1, g2;       
  PShape stream, s1, s2, s3, s4;
  PShape stream2, s2_1, s2_2;
  PShape butterfly, w1, w2, w3, w4, m;
  int yaxis = 1;                         //gradient background
  int xaxis = 2;
  color b1, b2, c1, c2;
  int[] move= new int[20];
  boolean fuzzy = true;      // to switch screens
  boolean clear = false;
  
  //passed parameters in mushroom top and sunlight
  //array used for moving stream 
  

void setup(){
  size(600, 600);

  // created shape for the grass
  grass = createShape(GROUP);
    g = createShape(QUAD, 300, 300, 300, 600, 600, 600, 600, 300);
    g.setFill(color(87, 95, 62));
    g.setStroke(false);
    g1 = createShape(TRIANGLE, 350, 300, 450, 300, 400, 290);
    g1.setFill(color(87, 95, 62));
    g1.setStroke(false);
    g2 = createShape(TRIANGLE, 500, 300, 520, 300, 513, 285);
    g2.setFill(color(87, 95, 62));
    g2.setStroke(false);
  grass.addChild(g);
  grass.addChild(g1);
  grass.addChild(g2);
  
  // mountain
  mountain = createShape(GROUP);
    ground = createShape(QUAD, -5, 600, 560, 600, 300, 250, -5, 200);     
    ground.setFill(color(64, 42, 20));
    ground.setStroke(false);
    ground1 = createShape(TRIANGLE, 400, 400, 510, 420, 560, 600);
    ground1.setFill(color(64, 42, 20));
    ground1.setStroke(false);
    ground2 = createShape(TRIANGLE, 300, 250, 330, 250, 310, 265);
    ground2.setFill(color(64, 42, 20));
    ground2.setStroke(false);
  mountain.addChild(ground);
  mountain.addChild(ground1);
  mountain.addChild(ground2);
  
  // stream
  stream = createShape(GROUP);
    s1 = createShape(QUAD, 0, 210, 300, 260, 310, 290, 0, 240);
    s1.setFill(color(129, 233, 250));
    s1.setStroke(false);
    s2 = createShape(QUAD, 330, 325, 338, 310, 410, 410, 420, 440);
    s2.setFill(color(129, 233, 250));
    s2.setStroke(false);
    s3 = createShape(QUAD, 420, 440, 410, 410, 510, 435, 518, 465);
    s3.setFill(color(129, 233, 250));
    s3.setStroke(false);
    s4 = createShape(QUAD, 515, 460, 517, 460, 552, 600, 550, 600);
    s4.setFill(color(129, 233, 250));
    s4.setStroke(false);
  stream.addChild(s1);
  stream.addChild(s2);
  stream.addChild(s3);
  stream.addChild(s4);
  
  // stream 2
  stream2 = createShape(GROUP);
    s2_1 = createShape(QUAD, 520, 300, 420, 350, 470, 350, 570, 300);
    s2_1.setFill(color(129, 233, 250));
    s2_1.setStroke(false);
    s2_2 = createShape(QUAD, 420, 350, 470, 350, 460, 500, 410, 500);
    s2_2.setFill(color(129, 233, 250));
    s2_2.setStroke(false);
  stream2.addChild(s2_1);
  stream2.addChild(s2_2);
  
  //butterfly
  butterfly = createShape(GROUP);
    w1 = createShape(QUAD, 40, 55, 66, 50, 55, 20, 20, 6);
    w1.setFill(color(230, 109, 240));
    w1.setStroke(0);
    w2 = createShape(QUAD, 40, 61, 66, 50, 55, 73, 30, 86);
    w2.setFill(color(230, 109, 240));
    w2.setStroke(0);
    w3 = createShape(QUAD, 100, 61, 74, 50, 85, 73, 110, 86);
    w3.setFill(color(230, 109, 240));
    w3.setStroke(0);
    w4 = createShape(QUAD, 100, 55, 74, 50, 85, 20, 115, 6);
    w4.setFill(color(230, 109, 240));
    w4.setStroke(0);
    m = createShape(ELLIPSE, 70, 50, 5, 50);
    m.setFill(color(224, 240, 109));
    m.setStroke(3);
  butterfly.addChild(w1);
  butterfly.addChild(w2);
  butterfly.addChild(w3);
  butterfly.addChild(w4);
  butterfly.addChild(m);
    
  
  b1 = color(255);           //gradient colors
  b2 = color(0);
  c1 = color(69, 100, 116);
  c2 = color(47, 178, 146);
  //noLoop();                  
  
  //stars
for (int i = 20; i < 400; i += random(500, 500)) {
    fill(255);
    ellipse(random(width), random(height), 3, 3);
}

  //stream movement
for(int i = 0; i<20; i++){
      move[i] = int(random(-200, 0));
   rect(i*40, height/2, 5, 20);             // 40 controls the distance between the raindrops
  }
 println(move);

}

void draw(){
  
 if (fuzzy){
  
 //background
 gradient(0, 0, width/2, height, b1, b2, xaxis);
 gradient(0, 0, 600, 300, c1, c2, yaxis);
 
 //grass
 shape(grass);
 
 shape(stream2);
 
 //objects on grass
 
 mushroom(); 
 pushMatrix();
 translate(-110, -50);
 mushroom();
 popMatrix();
 rock();
 pushMatrix();
 translate(-180, -150);
 rock();
 popMatrix();
 pushMatrix();
 translate(15, -180);
 rock();
 popMatrix();
 
 //grass details
 details4();
 pushMatrix();
 translate(-100, -50);
 details4();
 popMatrix();
 pushMatrix();
 translate(-34, 83);
 details4();
 popMatrix(); 
 pushMatrix();
 translate(-300, -50);
 scale(1.5);
 mushroom();
 popMatrix();
 
 //trees
 trunks();
 branches();
 pushMatrix();
 translate(-75, 10);
 branches();
 popMatrix();
 pushMatrix();
 translate(77, 50);
 branches();
 popMatrix();
 pushMatrix();
 translate(95, 170);
 branches();
 popMatrix();
 
 //mountain
 shape(mountain);
 pushMatrix();
 translate(6, 50);
 ground.setFill(color(100, 66, 31));
 ground1.setFill(color(100, 66, 31));
 ground2.setFill(color(100, 66, 31));
 shape(mountain);
 popMatrix();
  
 // mountain details
 details();
 pushMatrix();
 translate(width/2, height/2.5);
 rotate(PI/5.0);
 details();
 popMatrix();
 pushMatrix();
 translate(width/1, height/2);
 rotate(PI/2);
 details();
 popMatrix();
 details2();
 details3();
 pushMatrix();
 translate(-300, 40);
 details4();
 popMatrix();
 pushMatrix();
 translate(-425, -55);
 details4();
 popMatrix();
 
 shape(stream);

 
 pushMatrix();
 translate(-270, -230);
 rock();
 popMatrix();

  
//stream momvement

  pushMatrix();
 // loop();
  noStroke();
  fill(255);
  translate(30, 240);
  scale(1, .2);
  rotate(PI/-4);
  for(int i = 0; i<10; i++){
    move[i]= move[i] +4;
    rect(i*10, move[i], 4, 200);
    if (move[i] >= height/10){
      move[i] = int(random(-100,0));
    }
  }
  popMatrix();
  
  pushMatrix();
 // loop();
  noStroke();
  fill(255);
  translate(440, 440);
  scale(.3, .2);
  rotate(PI/-2.5);
  for(int i = 0; i<10; i++){
    move[i]= move[i] +4;
    rect(i*10, move[i], 4, 200);
    if (move[i] >= height/50){
      move[i] = int(random(-100,0));
    }
  }
  popMatrix();

 pushMatrix();
 translate(-245, -160);
 scale(1.2);
 rock();
 popMatrix();
 
 //sparkles
 
 pushMatrix();
 noStroke();
 fill(0,10);
 rect(0, 0, width, height);
  for (int i = 50; i < 500; i += random(50, 50)) {
    fill(246, 247, 200);
    frameRate(7);
    translate(230, 100);
    scale(.7);
    ellipse(random(width/2), random(height), 7, 7);  
  }
 popMatrix();
 
 pushMatrix();
 fill(0,10);
 rect(0, 0, width, height);
  for (int i = 50; i < 500; i += random(50, 50)) {
    fill(246, 247, 200);
    frameRate(7);
    translate(230, 50);
    scale(.7);
    ellipse(random(width/2), random(height), 7, 7);  
  }
 popMatrix();
 
 pushMatrix(); 
 fill(0,10);
 rect(0, 0, width, height); 
  for (int i = 50; i < 500; i += random(50, 50)) {
    fill(246, 247, 200);
    frameRate(3);
    translate(260, 100);
    scale(.8);
    ellipse(random(width/3), random(height/2), 20, 20); 
  }
  popMatrix();
 
  gate();
 
  // glowing orb
  noStroke();
  fill(215, 237, 242);
  ellipse(mouseX,mouseY,45,45);
  filter( BLUR, 6 );
  fill(120, 249, 252);
  ellipse(mouseX,mouseY,30,30);
  
  }
  
  if (clear){
  
 //background
 gradient(0, 0, width/2, height, b1, b2, xaxis);
 gradient(0, 0, 600, 300, c1, c2, yaxis);
 
 //grass
 shape(grass);
 
 shape(stream2);
 
 //objects on grass
 
 mushroom(); 
 rock();
 pushMatrix();
 translate(-180, -150);
 rock();
 popMatrix();
 pushMatrix();
 translate(15, -180);
 rock();
 popMatrix();
 
 //grass details
 details4();
 pushMatrix();
 translate(-100, -50);
 details4();
 popMatrix();
 pushMatrix();
 translate(-34, 83);
 details4();
 popMatrix(); 
 pushMatrix();
 translate(-300, -50);
 scale(1.5);
 mushroom();
 popMatrix();
 
 //trees
 trunks();
 branches();
 pushMatrix();
 translate(-75, 10);
 branches();
 popMatrix();
 pushMatrix();
 translate(77, 50);
 branches();
 popMatrix();
 pushMatrix();
 translate(95, 170);
 branches();
 popMatrix();
 
 //sparkles
 
 pushMatrix();
 noStroke();
 fill(0,10);
 rect(0, 0, width, height);
  for (int i = 50; i < 500; i += random(50, 50)) {
    fill(246, 247, 200);
    frameRate(4);
    translate(300, 50);
    scale(.7);
    ellipse(random(width/10), random(height), 7, 7);  
  }
 popMatrix();
 
 pushMatrix();
 fill(0,10);
 rect(0, 0, width, height);
  for (int i = 50; i < 500; i += random(50, 50)) {
    fill(246, 247, 200);
    frameRate(4);
    translate(300, 100);
    scale(.7);
    ellipse(random(width/3), random(height), 7, 7);  
  }
 popMatrix();
 
 sunlight(200, 300, 500, 600);
 
 //mountain
 shape(mountain);
 pushMatrix();
 translate(6, 50);
 ground.setFill(color(100, 66, 31));
 ground1.setFill(color(100, 66, 31));
 ground2.setFill(color(100, 66, 31));
 shape(mountain);
 popMatrix();
  
 // mountain details
 details();
 pushMatrix();
 translate(width/2, height/2.5);
 rotate(PI/5.0);
 details();
 popMatrix();
 pushMatrix();
 translate(width/1, height/2);
 rotate(PI/2);
 details();
 popMatrix();
 details2();
 details3();
 pushMatrix();
 translate(-300, 40);
 details4();
 popMatrix();
 pushMatrix();
 translate(-425, -55);
 details4();
 popMatrix();
 
 shape(stream);
 
 pushMatrix();
 translate(-270, -230);
 rock();
 popMatrix();
  
//stream momvement

  pushMatrix();
  noStroke();
  fill(255);
  translate(30, 240);
  scale(1, .5);
  rotate(PI/-2.5);
  for(int i = 0; i<10; i++){
    move[i]= move[i] +4;
    rect(i*5, move[i], 4, 200);
    if (move[i] >= height/10){
      move[i] = int(random(-100,0));
    }
  }
  popMatrix();
  
  pushMatrix();
  noStroke();
  fill(255);
  translate(440, 440);
  scale(.3, .2);
  rotate(PI/-2.5);
  for(int i = 0; i<10; i++){
    move[i]= move[i] +4;
    rect(i*10, move[i], 4, 200);
    if (move[i] >= height/50){
      move[i] = int(random(-100,0));
    }
  }
  popMatrix();
  
  pushMatrix();
  noStroke();
  fill(255);
  translate(500, 315);
  rotate(PI/2.8);
  scale(.5, .1);
  for(int i = 0; i<7; i++){
    move[i]= move[i] +4;
    rect(i*5, move[i], 4, 400);
    if (move[i] >= height/50){
      move[i] = int(random(-300,0));
    }
  }
  popMatrix();
  
  pushMatrix();
  translate(-110, -50);
  mushroom();
  popMatrix();

 pushMatrix();
 translate(-245, -160);
 scale(1.2);
 rock();
 popMatrix();
 
//butterfly
    pushMatrix();
    rotate(PI/4);
    scale(.5);
    shape(butterfly, mouseX+200, mouseY-300);
    popMatrix();

  }
}

//function for gradient background
void gradient(int x, int y, float w, float h, color c1, color c2, int axis){
  noFill();
  if(axis == yaxis){
    for(int i = y; i <= y+h; i++){
      float inter = map(i, y, y+h, 0, 1);
      color c = lerpColor(c1, c2, inter);
      stroke(c);
      line(x, i, x+w, i);
    }
  }
}

void details(){          // mountain details
  beginShape();
  noFill();
  stroke(64, 42, 20);
  strokeWeight(3);
  vertex(50, 300);
  vertex(60, 290);
  vertex(65, 310);
  vertex(75, 305);
  endShape();
}
  
void details2(){          // mountain details
  beginShape();
  noFill();
  stroke(64, 42, 20);
  strokeWeight(5);
  vertex(30, 380);
  vertex(30, 370);
  vertex(200, 460);
  vertex(220, 455);
  vertex(310, 455);
  vertex(305, 440);
  vertex(500, 550);
  vertex(480, 560);
  endShape();
}

void details3(){          // mountain details
  beginShape();
  noFill();
  stroke(64, 42, 20);
  strokeWeight(5);
  vertex(115, 360);
  vertex(177, 355);
  vertex(174, 367);
  vertex(245, 340);
  vertex(225, 320);
  endShape();
  
}

void details4(){           // grass details
  beginShape();
  noFill();
  stroke(61, 67, 40);
  strokeWeight(3);
  vertex(550, 410);
  vertex(560, 400);
  vertex(565, 410);
  vertex(575, 400);
  vertex(580, 410);
  endShape();
  
}
 
void mushroom(){
  mushroomstem();
  mushroomtop(558, 390, 564, 386);
}

void mushroomstem(){
  stroke(219, 192, 142);
  strokeWeight(7);
  curve(565, 410, 570, 405, 565, 390, 575, 308);
  smooth();
}

void mushroomtop(int e_xLoc, int e_yLoc, int e2_xLoc, int e2_yLoc){
  pushMatrix();
  fill(237, 93, 218);
  noStroke();
  translate(470,310);
  beginShape();
  curveVertex(505, 405);
  curveVertex(450, 350);
  curveVertex(400, 400); 
  curveVertex(520, 405);
  curveVertex(0, 0);
  scale(.2);
  endShape();
  popMatrix();
  fill(86, 78, 203);
  ellipse(e_xLoc, e_yLoc, 5, 5);
  ellipse(e2_xLoc, e2_yLoc, 5, 5);
}

void rock(){
  pushMatrix();
  translate(280, 250);
  fill(162, 164, 180);
  noStroke();
  beginShape();
  vertex(540, 500);
  vertex(524, 480);
  vertex(540, 450);
  vertex(575, 480);
  vertex(570, 500);
  vertex(540, 500);
  scale(.5);
  endShape();
  popMatrix();
  beginShape();
  noFill();
  stroke(75, 76, 88);
  strokeWeight(2);
  vertex(550, 490);
  vertex(555, 485);
  vertex(561, 490);
  endShape();
  beginShape();
  noFill();
  stroke(75, 76, 88);
  strokeWeight(2);
  vertex(558, 493);
  vertex(563, 496);
  endShape();
}

void trunks(){              
  fill(126, 106, 93);
  noStroke();
  beginShape();
  vertex(480, 330);
  vertex(500, 290);
  vertex(500, 270);
  vertex(480, 250);
  vertex(490, 290);
  endShape();
  beginShape();
  vertex(550, 300);
  vertex(560, 320);
  vertex(550, 330);
  vertex(565, 325);
  vertex(540, 380);
  vertex(520, 380);
  endShape();
  beginShape();
  vertex(400, 250);
  vertex(390, 280);
  vertex(395, 300);
  vertex(390, 305);
  vertex(405, 410);
  vertex(410, 410);
  endShape();
  beginShape();
  vertex(573, 420);
  vertex(565, 430);
  vertex(570, 435);
  vertex(565, 450);
  vertex(570, 500);
  vertex(565, 540);
  vertex(570, 590);
  endShape();
  
}

void branches(){              
  noFill();
  stroke(126, 106, 93);
  strokeWeight(4);
  beginShape();         //branch 1
  vertex(495, 235); 
  vertex(505, 235);
  vertex(510, 240);
  vertex(480, 250);
  endShape();
  beginShape();         //branch 2
  vertex(480, 250);
  vertex(495, 255);
  vertex(515, 250);
  vertex(550, 260);
  endShape();
  beginShape();         //branch 3
  vertex(480, 250);
  vertex(470, 255);
  vertex(465, 250);
  vertex(410, 260);
  endShape();
  beginShape();        //branch 4
  vertex(480, 250);
  vertex(470, 245);
  vertex(475, 230);
  vertex(440, 220);
  endShape();
  beginShape();        //branch 5
  vertex(480, 250);
  vertex(485, 245);
  vertex(465, 230);
  vertex(425, 230);
  vertex(430, 220);
  endShape();
  beginShape();        //branch 6
  vertex(480, 250);
  vertex(482, 245);
  vertex(484, 230);
  vertex(500, 220);
  endShape();
}


void gate(){       // function for the whole gate
  pushMatrix();
  translate(300,0);
  bars();
  bars2();
  top();
  popMatrix();
}

void top(){        // top of the left gate

  noFill();
  strokeWeight(7);
  curve(15, -50, 15, 185, 280, 165, 100, 400);
  smooth();
  pushMatrix();
  translate(245, 190);
  rotate(PI/3);
  strokeWeight(7);
  beginShape();
    for(int i=-4;i<20;i++){
      curveVertex((i*2)*sin(i/5.0),(i*3)*cos(i/4.5));
    }
  endShape(); 
  popMatrix();
  
}

void top2(){        // top of the right gate

  pushMatrix();
  noFill();
  strokeWeight(7);
  translate(-300,0);
  curve(320, 700, 320, 200, 500, 200, 550 , 300);
  beginShape();
  popMatrix();
  pushMatrix();
  translate(0, -50);
  curveVertex(550, 300);
  curveVertex(570, 290);
  curveVertex(580, 280);
  curveVertex(590, 270);
  endShape();
  smooth();
  popMatrix();
}

void bars2(){     // horizontal bars of the gate
   strokeWeight(10);
   line(15, 580, 285, 580);
   line(15, 200, 285, 200);
}

void bars(){    // bars of the gate
   stroke(240, 224, 77);
   strokeWeight(4);
   line(20, 200, 20, 580);
   pushMatrix();
   translate(20,0);
   line(20, 200, 20, 580);
   popMatrix();
   pushMatrix();
   translate(40,0);
   line(20, 200, 20, 580);
   popMatrix();
   pushMatrix();
   translate(60,0);
   line(20, 200, 20, 580);
   popMatrix();
   pushMatrix();
   translate(80,0);
   line(20, 200, 20, 580);
   popMatrix();
   pushMatrix();
   translate(100,0);
   line(20, 200, 20, 580);
   popMatrix();
   pushMatrix();
   translate(120,0);
   line(20, 200, 20, 580);
   popMatrix();
   pushMatrix();
   translate(140,0);
   line(20, 200, 20, 580);
   popMatrix();
   pushMatrix();
   translate(160,0);
   line(20, 200, 20, 580);
   popMatrix();
   pushMatrix();
   translate(180,0);
   line(20, 200, 20, 580);
   popMatrix();
   pushMatrix();
   translate(200,0);
   line(20, 200, 20, 580);
   popMatrix();
   pushMatrix();
   translate(220,0);
   line(20, 200, 20, 580);
   popMatrix();
   pushMatrix();
   translate(240,0);
   line(20, 200, 20, 580);
   popMatrix();
   pushMatrix();
   translate(260,0);
   line(20, 200, 20, 580);
   popMatrix();
}

void sunlight(int s1_width, int s1_height, int s2_width, int s2_height){
  fill(243, 245, 180, 100);
  noStroke();
  //triangle(0, 0, 300, 200, 200, 500);
 // triangle(0, 0, 500, 100, 450, 130);
  triangle(600, 0, s1_width, s1_height, 400, 500);
  triangle(600, 0, s2_width, s2_height, 550, 600);
}

void keyPressed(){
  if (key == '1'){
    fuzzy = true;
    clear = false;
  }
  else if (key == '2'){
    fuzzy = false;
    clear = true;
  }
}
