Tank t1;
Tank t2;
Bullet b1;
Bullet b2;
import processing.sound.*;
SoundFile ding;
PImage img;  
PImage img_2; 

void setup(){
  size(400,400);
  t1 = new Tank(1);
  t2 = new Tank(2);
  b1 = new Bullet(22,2);
  b2 = new Bullet(379,2);
  ding = new SoundFile(this,"ding.mp3");
  img = loadImage("tank_2.jpeg");
  img_2= loadImage("tank_4.jpeg");
}
void draw(){
   background(255,255,255);
   size(400, 400);
   line(95, 0, 95, 400);
   stroke(0);
   line(305, 0, 305, 400);
   stroke(255);
   line(340, 300, 120, 300);
   image(img, 0, 200);
   image(img_2, 430, 200);
   
   t1.display();
   t2.display();
   if(keyPressed){
    if(key == ' '){
      b1.drawBullet();
      b1.update(t1.x);
    }
    if(key == '1'){
      b2.drawBullet(t2.x);  
      b2.update();
    }
  }   
   if(b1.getHit(t2.x)){
      t2.hp(2);
   }
   if(b2.getHit(t1.x)){
      t1.hp(1);
      
}

void keyPressed(){
  if (keyPressed){  
    if (key == 'w')
      t1.moveup(1);
    else if (key == 's')
      t1.movedown(1);
    else if (key == 'd')
      t1.moveright(1);
    else if (key == 'a')
      t1.moveleft(1);
    else if (key == 'o')
      t2.moveup(2);
    else if (key == 'l')
      t2.movedown(2);
    else if (key == ';')
      t2.moveright(2);
    else if (key == 'k')
      t2.moveleft(2);
   
  }
}
}
