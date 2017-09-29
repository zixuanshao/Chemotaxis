Bacteria [] duck;
Boo ha = new Boo();
 void setup()   
 {     
   size(900, 900);
   duck = new Bacteria[20];
   for(int i=0; i<duck.length; i++)   
   {
     duck[i] = new Bacteria();
   }
 }   
 void draw()   
 {   
   background(0);
   for(int i=0; i<duck.length; i++)   
   {
     duck[i].move();
     duck[i].show();
     ha.show();
   }
 }  
 class Bacteria    
 {     
   int myX, myY;
   Bacteria ()
   {
     myX=(int)(Math.random()*900);
     myY=(int)(Math.random()*900);
   }
   void show()
   {
     for(int i=0; i<duck.length; i++)
     {
       fill(int(random(256)), int(random(256)), int(random(256)));
       ellipse(myX, myY, 10, 10);
       fill(255,255,255);
       ellipse(myX,myY-100,50,40);
       fill(255, 255, 0);
       ellipse(myX,myY, 200, 200);
       fill(255,182,193);
       ellipse(myX+70, myY+30, 80, 80);
       ellipse(myX-70, myY+30, 80, 80);
       fill(0,0,0);
       ellipse(myX+30, myY-10, 15, 15);
       ellipse(myX-30, myY-10, 15, 15);
       fill(255,182,19);
       ellipse(myX, myY+22, 50, 25);
       ellipse(myX, myY+7, 60, 25);
     }
   }
   void move()
   {
    if(myX<mouseX)
     {
       myX=myX+(int)(Math.random()*60-20);
     }
     else
     {
         myX=myX+(int)(Math.random()*60-40);  
     }
     if(myY<mouseY)
     {
       myY=myY+(int)(Math.random()*60-20);
     }
     else
     {
         myY=myY+(int)(Math.random()*60-40);  
     }
     if(myX==mouseX && myY==mouseY)
     {
       myX=myX+(int)(Math.random()*100-50);
       myY=myY+(int)(Math.random()*100-50);
     }
   }
 }  
 
class Boo
{
   void show()
   {
     fill(int(random(256)),int(random(256)),int(random(256)));
     ellipse(mouseX, mouseY, 50, 50);
   }
}  