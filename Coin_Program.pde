class Coin {
  
  //what does a coin have?
    // two sides => heads and tails
    // x and y position
  boolean isHeads;
  int myX, myY;
  
  //initialize member variable with the CONSTRUCTOR "fancy initalizer"
  Coin (int x, int y){
   isHeads = true;
   myX = x;
   myY = y;
  }
  
  //what do coins do? MEMBER FUNCTIONS
    // flip
    // show the coin
    
    void flip(){
      if(Math.random() < .5)
       {
          isHeads = true;
       }
       else
       {
          isHeads = false;
       }
    } //end flip()
    
    void show(){
      fill(255,255,255);
      ellipse(myX, myY, 50, 50);
      
      //adding text
      if(isHeads == true)
      {
        fill(0);
        text("Heads", myX, myY);
      }
      else 
      {
        fill(0);
        text("Tails", myX, myY);
      }
    }
}
//end of Coin class


//declearing bob to be of type Coin
Coin bob;

void setup(){
  size(600,300);
  noLoop();
}

void draw(){
  
  for (int i = 0; i < 8; i++){
    bob = new Coin(i*60+60, 150); // initialize bob, new keyword
    bob.flip();
    bob.show();
  }
  
  
}

void mousePressed (){
  redraw();
}
