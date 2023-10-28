//function. 
//f(angle)=300*sin(4*angle).
//f(angle)=240*sin(4*angle).
//f(angle)=180*sin(4*angle).
//f(angle)=120*sin(4*angle).
//f(angle)=60*sin(4*angle).


//import processing.pdf.*;

int j=1200;
float x;
float y;
int i=0;


void setup(){
  //frameRate(4);
  size(800, 800);
// size(800,800,PDF,"curve.pdf");
  background(200); 
    translate(400,400);
  for (int i=1;i<=12;i++)
  {stroke(223,233,237);
  noFill();
  ellipse(0,0,60*i,60*i);}
 
   for (int i=0;i<=19;i++)
  {stroke(223,233,237);
  noFill();
  line(0,0,720*cos(i*2*PI/20),720*sin(i*2*PI/20));}
}

void draw() {  
      translate(400,400);
   
     
  //  for (int i=0;i<=j;i++){
    
    noStroke();
    x=300*sin(4*2*PI*i/j)*cos(2*PI*i/j);
    y=300*sin(4*2*PI*i/j)*sin(2*PI*i/j);
    fill(180);
    ellipse(x, y, 3, 3);
     
   // stroke(255,0,255);
    x=240*sin(4*2*PI*i/j)*cos(2*PI*i/j);
    y=240*sin(4*2*PI*i/j)*sin(2*PI*i/j);
    fill(150);
    ellipse(x, y, 3, 3);
    
   
    //stroke(0,0,255);
    x=180*sin(4*2*PI*i/j)*cos(2*PI*i/j);
    y=180*sin(4*2*PI*i/j)*sin(2*PI*i/j);
     fill(120);
    ellipse(x, y, 3, 3);
        
     
   // stroke(255,0,200);
    x=120*sin(4*2*PI*i/j)*cos(2*PI*i/j);
    y=120*sin(4*2*PI*i/j)*sin(2*PI*i/j);
    fill(90);
    ellipse(x, y, 3, 3);
   
     
   // stroke(200,0,255);
    x=60*sin(4*2*PI*i/j)*cos(2*PI*i/j);
    y=60*sin(4*2*PI*i/j)*sin(2*PI*i/j);
    fill(60);
    ellipse(x, y, 3, 3);
    
    i=i+1;
    if (i>j) {i=0; 
//    exit();
  }
     
}
