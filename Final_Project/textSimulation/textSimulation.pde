  FadingLine first;
  FadingLine second;
  Poem bluebird;
  FadingLine[] firstScene = new FadingLine[2];
  Scene scene1;

void setup(){ 
  size(1000,700);
  frameRate(20);
  background(0);
    bluebird = new Poem();
    first = new FadingLine(0,50,bluebird.getLine(0));
    second = new FadingLine(600,600,bluebird.getLine(1));
    scene1 = new Scene(firstScene,50);
    
}

void draw(){
   background(0);
  firstPage();
}

void firstPage(){
      firstScene[0] = first;
      firstScene[1] = second;
       scene1.display();
       scene1.update();
}
