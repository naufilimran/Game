public class Bullet{  
  int loc, size,speed = 2, pause = 0;
  
  //constructor
  Bullet(int l, int s){
    loc = l;
    size = s;
  }
  
  void drawBullet(){ 
    if(pause == 0){
      square(loc,200,size);
      pause++;
    }else{
      pause++;
    }
  }
  
  boolean getHit(int tx){
    return loc+1 < tx+10 && loc-1 > tx-10;
  }
  
  void update(int tx){
    loc += speed;
    if(loc > 400||getHit(tx)){
      //delete it
    }
  }
}
