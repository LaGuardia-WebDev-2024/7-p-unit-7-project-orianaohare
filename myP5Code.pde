//🟢Setup Procedure - Runs Once to Set The Canvas
void setup() {
    size(400, 400); 
}

//🎯Variable Declarations Go Here
var fireworkSize = 10;
var sparkX = 200;

//🟢Draw Procedure - Runs on Repeat
draw = function(){
 
    noStroke();
    
    // the dark night sky
    background(10, 10, 50);
    
    // The firework explosion,
    fill(300, 0, 150); 
// bright red explosion
    ellipse(200, 200, fireworkSize, fireworkSize);
    
    // The ground below
    fill(50, 168, 82); // grass
    rect(0, 300, 400, 100);
    
    // A spark flying away
    fill(255, 255, 0); // yellow spark
    ellipse(sparkX, 250, 5, 5);
    
    fireworkSize = fireworkSize + 10; 
    sparkX = sparkX + 2;

   if(mousePressed){
    showXYPositions();
  }
  


}

//🟡Extra FUN Features Ms. Hall Added
//Proceed with Caution (and Curiosity!)

showXYPositions = function(){
    fill(255,255,255)
    rect(270,300,150,100)
    fill(0,0,0)
    textSize(30)
    text("x = " + mouseX + "\ny = " +mouseY, 290, 350)
    fill(255,0,255)
    ellipse(mouseX, mouseY, 10, 10);
    fill(255,255,255)
}
