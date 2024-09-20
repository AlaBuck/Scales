void setup(){
 size(500,500);
}
void draw(){
  boolean shift=true;
 for(float y = 0;  y <= 500; y+=25){
    for(float x = 0; x<=500; x+=10){
      if(shift==true){
        blue_snake(x,y);
      }
      else {
        blue_snake(x+5,y+5);
      }
     }
     if(shift==true){
     shift=false;
 }
 else {
   shift = true;
 }
  }
}
void blue_snake(float x, float y){
  int r = 111+(int)(Math.random()*36);
  int g = 204+(int)(Math.random()*36);
  int b = 211+(int)(Math.random()*36);
  fill(r,g,b);
  float side_length=20;
  float root=sqrt(3)/2;
  beginShape();
  vertex(x,y);
  vertex(x,y+side_length);
  vertex(x+10*(root),y+1.5*side_length);
  vertex(x+20*(root),y+side_length);
  vertex(x+20*(root),y);
  vertex(x+10*(root),y-0.5*side_length);
  endShape(CLOSE);
}
