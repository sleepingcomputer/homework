// Generative Gestaltung, ISBN: 978-3-87439-759-9 First Edition, Hermann Schmidt, Mainz, 2009


/*
 * homework LImuze
 * 	 
 * abstract pixcel from photo
 * generate different size of circle for regenerating image

  */
PImage img;
// float diameter; 
float angle = 0;
int j=8;
int m=1;

void setup(){
  //setup frame rate ,increasing frameRate number will speed up image generation.
 frameRate(4);
  size(600, 600);
  img=loadImage("estn.png");
  //diameter = height - 10;
 // imageMode(CENTER);
  noStroke();
  background(200);
 // translate(300,300);
 //abstract center pix from img
  color pix = img.get(300,300);
  fill(pix,255); //setup ellispe fill color and transparent. the 1st point has no transparency because of only refreshing one time
  ellipse(300, 300, 10, 10);
}



void draw() {  
  // translate(300,300);
  /* setup pixels increased 8 pcs for each circle, loop times rely on angle quantity*/
  for (int i=1;i<=j;i++){
    int x= 300+int (10*m* cos(2*i*PI/j));//coordination translation to center (300,300). 10 pixels distance.
  //   println(x);
    int y= 300-int (10*m* sin(2*i*PI/j));
  //  println(y);
    color pix = img.get(x,y);
     fill(pix,100);//transparecy setup . less will be more transperent
     ellipse(x, y, 10, 10);}
     if (j>=300) {j=0;}
     j=j+8;
     if (m>=30) {m=0;}
     m=m+1;
      
    }
 
