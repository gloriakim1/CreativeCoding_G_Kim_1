  PShape mountain, ground, ground1, ground2;       //variables for mountain
  PShape grass, g, g1, g2;                              //grass
  int yaxis = 1;                         //gradient background
  int xaxis = 2;
  color b1, b2, c1, c2;
  

void setup(){
  size(600, 600);
  
  
  // grass
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
  
  
  
  // created shape for the mountain
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
  
  b1 = color(255);           //gradient colors
  b2 = color(0);
  c1 = color(69, 100, 116);
  c2 = color(40, 51, 90);
  
 
  noLoop();
  
}

void draw(){
  
 //background
 gradient(0, 0, width/2, height, b1, b2, xaxis);
 gradient(0, 0, 600, 300, c1, c2, yaxis);
 
 //grass
 shape(grass);
  
 //mountain
 shape(mountain);
 pushMatrix();
 translate(6, 15);
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

  
 //gate();

  
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

void details(){
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
  
void details2(){
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

/*
void gate(){       // function for the whole gate
  bars();
  bars2();
  top();
  pushMatrix();
  translate(300,0);
  bars();
  bars2();
  top();
  popMatrix();
  
}

void top(){        // top of the left gate

  noFill();
  curve(15, -50, 15, 185, 280, 165, 100, 400);
  smooth();
  pushMatrix();
  translate(245, 190);
  rotate(PI/3);
  strokeWeight(5);
  beginShape();
    for(int i=-4;i<20;i++){
      curveVertex((i*2)*sin(i/5.0),(i*3)*cos(i/4.5));
    }
  endShape(); 
  popMatrix();
  
}

void top2(){        // top of the right gate

  noFill();
  curve(15, -50, 15, 185, 280, 165, 100, 400);
  smooth();
  pushMatrix();
  translate(245, 190);
  rotate(PI/3);
  strokeWeight(5);
  beginShape();
    for(int i=-4;i<20;i++){
      curveVertex((i*2)*sin(i/5.0),(i*3)*cos(i/4.5));
    }
  endShape(); 
  popMatrix();
  
}

void bars2(){     // horizontal bars of the gate
   line(15, 580, 285, 580);
   line(15, 200, 285, 200);
}

void bars(){    // bars of the gate
   stroke(240, 224, 77);
   strokeWeight(5);
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
*/
