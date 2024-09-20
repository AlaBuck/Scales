void setup(){
 size(500,500);
}
void draw(){
  boolean shift=true;
 for(float y = 0;  y <= 500; y+=25){
    for(float x = 0; x<=500; x+=10){
      if(shift==true){
        hex_tile(x,y);
      }
      else {
        hex_tile(x+5,y+5);
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
void hex_tile(float x, float y){
  //head of smiley
  fill(#836060);
  //int sideLength = 20;
  beginShape();
  vertex(x,y);
  vertex(x,y+20);
  vertex(x+10*(sqrt(3)/2),y+30);
  vertex(x+20*(sqrt(3)/2),y+20);
  vertex(x+20*(sqrt(3)/2),y);
  vertex(x+10*(sqrt(3)/2),y-10);
  endShape(CLOSE);
}
