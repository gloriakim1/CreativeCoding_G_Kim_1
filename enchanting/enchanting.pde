  PShape gate, top, bars;    // creating a shape for the ground

void setup(){
  size(600, 600);
  background(69, 100, 116);
  gate = createShape(GROUP);
  noFill();
  stroke(240, 224, 77);
  top = createShape(ARC, 50, 55, 50, 50, 0, HALF_PI);
  bars = createShape(LINE, 30, 20, 85, 75);
  gate.addChild(top);
  gate.addChild(bars);
  

}



void draw(){
  
  noStroke();
  fill(77, 63, 49);
  ellipse(300, 450, 700, 200);
  ellipse(500, 450, 700, 400);
  ellipse(200, 430, 700, 400);
 
  shape(gate);
  
  
}
