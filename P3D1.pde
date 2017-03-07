import queasycam.*;

QueasyCam cam;

float x = 0.1;
float y = 0.1;
float z = 0.1;

PImage img;

float a = 0;

void setup()
{
  fullScreen(P3D);

  noCursor();
  
  camera(0, a, 0, 0, a, 0, 0, 0, 0);

  cam = new QueasyCam(this);
  cam.speed = 1;
  cam.sensitivity = 0.5;

  img = loadImage("VW.jpeg");
}

void draw()
{
  background(0);
  
  

  if(key == 'k')
  {
    a+=10;
  }

  print(mouseX, mouseY);
  println(" ");
  
  beginShape();
  texture(img);
  vertex(400, 400, 0, 0, 0);
  vertex( 600, 400, 0, 900, 0);
  vertex( 600, 600, 0, 900, 900);
  vertex(400, 600, 0, 0, 900);
  endShape();

  directionalLight(0, mouseX, 0, 0, 0, -1);
  directionalLight(0, 0, mouseY, -1, 0, -1);

  pushMatrix();
  sphere(200);
  popMatrix();

  pushMatrix();
  translate(-220, -200, 0);

  rotateX(radians(frameCount*3));
  rotateY(radians(frameCount*2));
  rotateZ(radians(frameCount*4));  

  directionalLight(mouseX, 0, 0, -1, -1, -1);
  sphere(100);
  popMatrix();

  pushMatrix();
  translate(150, -200, 0);

  rotateX(radians(frameCount*3));
  rotateY(radians(frameCount*3));

  directionalLight(mouseX, 0, mouseX, -1, -1, -1);
  sphere(50);
  popMatrix();

  pushMatrix();
  translate (500, 30, 0);

  rotateX(x);
  rotateY(y);
  rotateZ(z);

  fill(185, 213, 131);
  box(125);

  x += random(.1);
  y += random(.1);
  z += random(.1);
  popMatrix();

  pushMatrix();
  translate (700, 30, 0);

  rotateX(x);
  rotateY(y);
  rotateZ(z);

  fill(185, 213, 131);
  box(125);

  x += random(.1);
  y += random(.1);
  z += random(.1);
  popMatrix();

  pushMatrix();
  translate (500, 235, 0);

  rotateX(x);
  rotateY(y);
  rotateZ(z);

  fill(185, 213, 131);
  box(125);

  x += random(.1);
  y += random(.1);
  z += random(.1);
  popMatrix();

  pushMatrix();
  translate (700, 235, 0);

  rotateX(x);
  rotateY(y);
  rotateZ(z);

  fill(185, 213, 131);
  box(125);

  x += random(.1);
  y += random(.1);
  z += random(.1);
  popMatrix();

  beginShape();
  vertex(200, 200, 200);
  vertex(400, 200, 200);
  vertex(300, 300, 400);

  vertex(400, 200, 200);
  vertex(400, 400, 200);
  vertex(300, 300, 400);

  vertex(400, 400, 200);
  vertex(200, 400, 200);
  vertex(300, 300, 400);

  vertex(200, 400, 200);
  vertex(200, 200, 200);
  vertex(300, 300, 400);
  endShape();

  beginShape();
  vertex(100, 485, -50);
  vertex(100, 485, 800);

  vertex(769, 485, 800);
  vertex(769, 485, -50);
  endShape();

  beginShape();
  for (int i=0; i<100; i++)
  {
    vertex(i * 5, i * 10, i * 3);
  }
  endShape();

  stroke(0, 255, 0);
}