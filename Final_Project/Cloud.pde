class Cloud{
  
  float x,y;
  boolean check;
  Cloud(float xPos, float yPos, boolean checkIt){
    x = xPos;
    y = yPos;
    checkIt = true;
  }
  void display(){
    rainCloud();
  }
  
  void clickedCloud(){
    
    
  }
  
  void rainCloud(){
    fill(70);
    noStroke();
    ellipse(260,150,80,80);
    ellipse(300,150,80,60);
    ellipse(330,150,50,30);
    ellipse(220,150,80,60);
    ellipse(190,150,50,30);
  }
}
