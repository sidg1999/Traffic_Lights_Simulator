int startTime = 0;
int timeBtwn;
int carNum = 0;
void setup() {
  size(370, 370);  
  background(152, 157, 156);
  startTime = millis();
  timeBtwn = (int)(random(60, 20));
}

boolean car1Done = true;

//array stores starting X positions of cars L,R
float carsX[] = {
  0, 345
};
//stores starting Y positions cars UP, DWN
float carsY[] = {
  0, 345
};

float incr[] = {
  1.25, 1.25, 1.25, 1.25
};
float stopT = 0;
boolean stopped = false;

void draw() {  

  //make it so a random car is selected at a random time  
  /* if (startTime-timeBtwn>=0) {
   carNum = (int)(random(0, 3));
   timeBtwn = (int)(random(60, 20))*100;
   startTime = millis();
   }*/

  //draw base landscape  
  //draw roads
  fill(152, 157, 156);
  rect(0, 150, 370, 70);
  rect(150, 0, 220, 370);
  //draw grass sections
  fill(10, 137, 53);
  rect(0, 0, 130, 130);
  rect(240, 0, 130, 130);
  rect(0, 240, 130, 130);
  rect(240, 240, 130, 130);
  //draws sidewalks
  //top left
  fill(224, 220, 220);
  rect(0, 130, 150, 20);
  rect(130, 0, 20, 150);
  //top right
  rect(220, 130, 150, 20);
  rect(220, 0, 20, 150);
  //bottom left
  rect(0, 220, 150, 20);
  rect(130, 220, 20, 150);
  //bottom right
  rect(220, 220, 150, 20);
  rect(220, 220, 20, 150);
  //draw lines dividing roads
  fill(209, 207, 207);
  //left
  rect(0, 182, 150, 5);
  //right
  rect(182, 0, 5, 150);
  //up
  rect(182, 220, 5, 150);
  //down
  rect(220, 182, 150, 5);
  //draw crosswalks
  //left
  fill(240, 237, 237);
  rect(145, 150, 5, 70);
  rect(130, 150, 5, 70);
  //bottom
  rect(150, 220, 70, 5);
  rect(150, 235, 70, 5);
  //right
  rect(220, 150, 5, 70);
  rect(235, 150, 5, 70);
  //top
  rect(150, 130, 70, 5);
  rect(150, 145, 70, 5);

  //draw stoplights
  //left stoplight
  fill(250, 197, 20);
  rect(100, 172, 50, 20);
  fill(193, 157, 35);
  ellipse(110, 182, 12, 12);
  ellipse(125, 182, 12, 12);
  ellipse(140, 182, 12, 12);

  //right
  fill(250, 197, 20);
  rect(220, 170, 50, 20);
  fill(193, 157, 35);
  ellipse(230, 180, 12, 12);
  ellipse(245, 180, 12, 12);
  ellipse(260, 180, 12, 12);

  //bottom
  fill(250, 197, 20);
  rect(175, 220, 20, 50);
  fill(193, 157, 35);
  ellipse(185, 230, 12, 12);
  ellipse(185, 245, 12, 12);
  ellipse(185, 260, 12, 12);
  //top
  fill(250, 197, 20);
  rect(175, 100, 20, 50);
  fill(193, 157, 35);
  ellipse(185, 110, 12, 12);
  ellipse(185, 125, 12, 12);
  ellipse(185, 140, 12, 12); 

  delay(25);
  //controls the leftmost car
  if (stopped==true) {
    fill(224, 45, 45);
    rect(carsX[0], 200, 25, 15);
    fill(234, 31, 31);
    ellipse(230, 180, 12, 12);
  }
  if ((millis()-4000)>stopT || stopped==false) {
    if (stopped==true) {
      incr[0] = 1.25;
      stopped=false;
      stopT = 0;
    }
    if (carNum==0) { 
      carsX[0]+=incr[0];
      fill(224, 45, 45);
      rect(carsX[0], 200, 25, 15);
      if((carsX[0]>=0 && carsX[0]<=50) || carsX[0]>105.5){
         fill(0, 233, 62);
         ellipse(260, 180, 12, 12);
         incr[0] = 1.25;
      }
      //if its in yellow zone, slow down
      if (carsX[0]>=50 && carsX[0]<=105) {
        incr[0]=0.5;
        fill(255, 233, 62);
        ellipse(245, 180, 12, 12);
      }
      //if in red zone, stop.
      else if (carsX[0]==105.5) {
        println(carsX[0]);
        incr[0]=0;
        fill(234, 31, 31);
        ellipse(230, 180, 12, 12);
        stopT = millis();  
        stopped = true;
      }
    }
  }
  
  
  /*else if (carNum==1) {
   }
   else if (carNum==2) {
   }
   else if (carNum==3) {
   }*/








  /*if (car2>=0 && car2<50) {
   fill(0, 233, 62);
   ellipse(260, 180, 12, 12);
   //ellipse(230,180,12,12);
   println(car2);
   }
   if (car2>=50 && car2<=105) {
   fill(255, 233, 62);
   ellipse(245, 180, 12, 12);
   println(car2);
   }
   else if (car2>=105) {
   fill(234, 31, 31);
   //ellipse(260,180,12,12);
   ellipse(230, 180, 12, 12);
   }*/
   
  /* //draw moving car
   delay(25);
   //car1-=1;
   car2+=incr;
   //car3+=1;
   //car4-=1;
   fill(224, 45, 45);
   rect(car2, 200, 25, 15);
   if (car2>=50 && car2<=105) {
   incr=0.5;
   }
   else if (car2>=105) {
   incr=0;
   }*/
}

