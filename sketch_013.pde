import processing.svg.*;


int x = 0, y = 0, spacing = 15;

void setup() {

  //size(400, 400);
  size(500, 700, SVG, "digitalboneyard013-k.svg");
  //background(0);
}


void draw() {
  //background(255);
  stroke(0);
  strokeWeight(1);
  for (int y = 0; y < height; y+=spacing) {
    for (int x = 0; x < width; x+=spacing) {
      float r = random(1);

      if (r < 0.7 && r > 0.6) {

        noFill();
        beginShape();
        curveVertex(x, y);
        curveVertex(x, y);
        curveVertex(x, y + spacing);
        curveVertex(x + spacing, y + spacing);
        curveVertex(x + spacing, y + spacing);
        endShape();
      }

      if (r > 0.7 && r < 0.8) {
        noFill();
        beginShape();
        curveVertex(x, y);
        curveVertex(x, y);
        curveVertex(x + spacing, y);
        curveVertex(x + spacing, y + spacing);
        curveVertex(x + spacing, y + spacing);
        endShape();
      }
      if (r > 0.8 && r < 0.9) {
        noFill();
        beginShape();
        curveVertex(x, y + spacing);
        curveVertex(x, y + spacing);
        curveVertex(x, y);
        curveVertex(x + spacing, y);
        curveVertex(x + spacing, y);
        endShape();
      }

      if (r > 0.9 && r < 1) {
        noFill();
        beginShape();
        curveVertex(x + spacing, y);
        curveVertex(x + spacing, y);
        curveVertex(x + spacing, y + spacing);
        curveVertex(x, y + spacing);
        curveVertex(x, y + spacing);
        endShape();
      }
    }
    x = 0;
  }
  
  stroke(0);
  //rect(0,0,width,height);
  //noLoop();
  exit();
}
