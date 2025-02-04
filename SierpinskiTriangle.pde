int depth = 0; 
void setup() {
  size(800, 800);
  background(255);
  noLoop(); 
}

void draw() {
  background(255); 
  int x = width / 2;     
  int y = 50;            
  int len = 700;         
  sierpinski(x, y, len,depth); 
}
public void mouseClicked(){
  if (depth < 7){
  depth++;
  redraw(); 
  }
  
}
void sierpinski(int x, int y, int len, int depth) {
  if (depth == 0){
    triangle(x,y,x-len/2,y+len, x + len/2, y+len);
  }
    else{
    int halfLen = len/2;
    sierpinski(x, y,halfLen, depth-1);
    sierpinski(x - halfLen / 2, y + halfLen, halfLen, depth-1);
    sierpinski(x + halfLen / 2, y + halfLen, halfLen, depth-1);
    
  }
}
