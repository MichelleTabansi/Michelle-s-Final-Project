class FadingLine{
 PFont help;
  int x;
  int y;
  String line;
  int fade=0;
  int tracker =0;
  FadingLine(int xCor, int yCor, String poemLine){
    x = xCor;
    y = yCor;
    line = poemLine;
    help = createFont("ITCBLKAD.TTF",100);
    textFont(help,40);
  }
  
    void display(){
      fill(fade);
      text(line,x,y);
      tracker++;
  }
  
  void update(){
    if(tracker<101){
       if(tracker<50){
         fade+=5; 
      }
     if(tracker>50){
        fade-=5;
     }
     if(fade<=0){
        fade=0;
     }
     }
      
  }
}
