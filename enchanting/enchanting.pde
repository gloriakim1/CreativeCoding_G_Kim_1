  PShape ground, ground1, ground2;     //variables for created shapes
  PShape grass;
  

void setup(){
  size(600, 600);
  background(69, 100, 116);
  // created shape for the ground
  ground = createShape(QUAD, 0, 600, 560, 600, 300, 250, 0, 200);      //shapes for the cliff
  ground.setFill(color(103, 83, 62));
  ground.setStroke(false);
  ground1 = createShape(TRIANGLE, 400, 400, 510, 420, 560, 600);
  ground1.setFill(color(103, 83, 62));
  ground1.setStroke(false);
  ground2 = createShape(TRIANGLE, 300, 250, 330, 250, 310, 265);
  ground2.setFill(color(103, 83, 62));
  ground2.setStroke(false);

}

void draw(){
  
 shape(ground);
 shape(ground1);
 shape(ground2);
 //gate();

 
  
}

/*
void gate(){
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

void top(){        // function for the top of the left gate

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

void top2(){        // function for the top of the right gate

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

void bars2(){     // function for the horizontal bars of the gate
   line(15, 580, 285, 580);
   line(15, 200, 285, 200);
}

void bars(){    // function for the bars of the gate
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
