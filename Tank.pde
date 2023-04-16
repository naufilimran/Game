PImage img;  
PImage img_2; 


class Tank{
  int tank_length;
  int tank_width;
  int tank_blood;
  int tank_xpos;
  int tank_ypos;
  int x_change = 30; // this is moveing amout per click on keyboard
  int y_change = 30;
  int tanktype; // this is a static variable to be able to initiate two different tank in two opposite position
  boolean tank_life;
  color c;
  int hp;
  Tank(int tanktype){ // this is the default constructor
    this.tanktype = tanktype; 
    c = color(random(255),random(255),random(255));
    tank_length = 40; 
    tank_width = 15;
    tank_xpos = (tanktype-1)*400; // if the tanktype is 1, the position will be 0,200; if the tanktype is 2, the position will be 400,200 
    tank_ypos = 200;
    tank_blood = 5;
    tank_life = true;
    tanktype = tanktype + 1;
    hp=100;  
}
  
  
  void display(){
    stroke(0);
    fill(c);
    rectMode(CENTER);
    rect(tank_xpos,tank_ypos,tank_length,tank_width);
  }
  
  void moveleft(int tanktype){
    this.tanktype = tanktype;
    tank_xpos = tank_xpos-x_change;
    if(tanktype == 1){
      tank_xpos = constrain(tank_xpos,0,75);
      tank_ypos = constrain(tank_ypos, 0, 400);}
    else{
      tank_xpos = constrain(tank_xpos,325,400);
      tank_ypos = constrain(tank_ypos,0,400);}
    }
    
   void moveright(int tanktype){
    this.tanktype = tanktype;
    tank_xpos = tank_xpos+x_change;
    if(tanktype == 1){
      tank_xpos = constrain(tank_xpos,0,75);
      tank_ypos = constrain(tank_ypos, 0, 400);}
    else{
      tank_xpos = constrain(tank_xpos,325,400);
      tank_ypos = constrain(tank_ypos,0,400);}
    }
    
   void moveup(int tanktype){
    this.tanktype = tanktype;
    tank_ypos = tank_ypos-y_change;
    if(tanktype == 1){
      tank_xpos = constrain(tank_xpos,0,75);
      tank_ypos = constrain(tank_ypos, 0, 400);}
    else{
      tank_xpos = constrain(tank_xpos,325,400);
      tank_ypos = constrain(tank_ypos,0,400);}
    }
    
   void movedown(int tanktype){
    this.tanktype = tanktype;
    tank_ypos = tank_ypos+y_change;
    if(tanktype == 1){
      tank_xpos = constrain(tank_xpos,0,75);
      tank_ypos = constrain(tank_ypos, 0, 400);}
    else{
      tank_xpos = constrain(tank_xpos,325,400);
      tank_ypos = constrain(tank_ypos,0,400);}
    }
    
    void hp(int tanktype){
      this.tanktype=tanktype;
      if(tanktype == 1){
        t1.hp-= 5;
       }    
       else{
         t2.hp-=5;
}
