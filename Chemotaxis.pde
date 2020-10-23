Bacteria[] bob = new Bacteria[50];
void setup()   
 {     
   size(400,400);
   for(int i = 0; i < bob.length; i++)
   {
     bob[i] = new Bacteria();
   }
 }   
 void draw()   
 {    
   background(0);
   for(int i = 0; i < bob.length; i++)
   {
     bob[i].move();
     bob[i].show();
   }
 }  
 class Bacteria    
 {     
   int myX, myColor, mySize;
   float myY;
   float mySpeed;
   boolean popCheck;
   Bacteria()
   {
     popCheck = false;
     myX = (int)(Math.random()*400);
     myY = (int)(Math.random()*400);
     myColor = color((int)(Math.random()*256)+1, (int)(Math.random()*256)+1, (int)(Math.random()*256)+1, (int)(Math.random()*256)+1);
     mySize = (int)(Math.random()*80)+20;
     mySpeed = mySize/50.0;
 } 
 void move()
 {
  myY = myY + mySpeed;
  myX = myX + (int)(Math.random()*3)-1;
  if(myY > 600)
  {
    myY = -200;
  }
 }
 void show()
 {
   if (dist(mouseX, mouseY, myX, myY) < mySize/2) {
     popCheck = true;
  }
   if (popCheck == false) {
   fill(myColor);
   stroke(myColor);
   ellipse(myX,myY,mySize,mySize);
   }
 }
 }
