bacterias[] colony;    
void setup()    
 {                
size(600, 600);
    colony = new bacterias[10];   
for(int i=0; i < colony.length;i++)
    {
      colony[i]= new bacterias();  
    }
     }    
void draw()    
     {                     
background(69);
for(int i=0; i < colony.length;i++){
         colony[i].walk();
         colony[i].show();
         }    
         }   
class bacterias   
{              
int myX, myY;
    bacterias()
    {
        myX = myY = 250;
    }
void walk()
 { 
  myX=myX+(int)(Math.random()*11)-5;
  myY=myY+(int)(Math.random()*11)-5;
if(myX>600)
 {
 myX = 0;
 }
if(myX < 0)
 {
 myX = 200;
 }
if(myY > 700)
 {
 myY = 0;
 }
if(myY < 0)
 {
 myY = 700;
 }
 }   
void show()
{
fill(100,175,0);
ellipse(myX,myY,75,75);
    }
}    
