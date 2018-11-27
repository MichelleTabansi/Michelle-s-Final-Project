//Click to make it rain
// mouse mouse over cloud to strike ball with lightning
int scared = 800;
int jump =600;
int count =0;;
Cloud test;
void setup(){
  size(1000,1000);
 test = new Cloud(400,200, true);
}

void draw(){
    background(30,30,70);
       fill(0,20,0);
  rect(0,400, 1000,600);
    backGround();

  if(mouseX>190&&mouseX<260 && mouseY >115 && mouseY< 185){
       // count++;
       stroke(255);
       strokeWeight(10);
       line(260,185,200,230);
       line(200,230,280,300);
       line(280,300,260,380);
       line(260,380,400,450);
       line(400,450,330,570);
       line(330,570,480,660);
      
       triangle(480,665,485,670,482,665);
       noStroke();
       fill(200,0,0);
       stroke((int)random(0,255));
       strokeWeight(5);
       ellipse(random(525,530),random(735,740),100,100);
       fill(255);
       ellipse(random(505,510),random(715,720),30,50);
       ellipse(random(540,545),random(715,720),30,50);
       fill(0);
       strokeWeight(1);
       ellipse(random(505,510),random(715,720),20,20);
       ellipse(random(540,545),random(715,720),20,20);
  }
  else{
      stroke(0);
  
  fill(150,0,0);
  noStroke();
      ellipse(530,740,100,100);
      fill(0);
      stroke(255);
      strokeWeight(1);
      ellipse(510,720,10,10);
      ellipse(540,720,10,10);
      
  }
    test.display();

  //niceNight();

  
  foreground(); 
  //lightning();
 
  
      if(count%2 == 1){
          storm();
    }
    noStroke();
}
void lightning(){
  boolean button = true;
  for(int i =0;i<20;i++){
    if(scared == 430){
        if(button){
          background(0,0,150);
          button = !button;
        }
        else{
         background(255);
         button = !button;
        }
                      }
                    }
}

void niceNight(){
  fill(255);
  ellipse(scared,jump,70,70);
  
  if(scared>=430){
    scared--;
    
  }
  if(scared<430){
    
    //jump-100;
    //jump+100;
    lightning();
    storm();
   scared-=10; 
  }
 
}

void backGround(){
  stroke(0);
  noStroke();

  fill(0);
  rect(20,0, 50,600);
  rect(360,0, 50,500);
  rect(750,0, 50,600);

}

void foreground(){
    fill(0);
  rect(900,0, 100,1000);
  rect(600,0, 80,900);
  rect(100,0, 80,970);
  
}

void storm(){
 for(int i =0;i<800;i++){
  rain();
 }
}
void rain(){
  float rainX = random(0,1000);
  float rainY = random(0,1000);
  rainDrop(rainX, rainY);
  rainY--;
}

void rainDrop(float x, float y){
   stroke(150,120);
   strokeWeight(5);
   line(x,y, x,y+7);
}

void mousePressed(){
 if(mousePressed == true){
  count ++; 
 }
  
}
