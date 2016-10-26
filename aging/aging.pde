int cx, cy;
float secondsRadius;
float minutesRadius;
float hoursRadius;
float clockDiameter;
int i = 100;
int u = 100;

void setup() {
  size(800, 800);
  stroke(255);
  
  int radius = min(width, height) / 2;
  secondsRadius = radius * 0.72;
  minutesRadius = radius * 0.60;
  hoursRadius = radius * 0.50;
  clockDiameter = radius * 1.8;
  
  cx = width / 2;
  cy = height / 2;
  
}

void draw() {
  background(0);
  
  // Draw the clock background
  fill(#030000);
  noStroke();
  ellipse(cx, cy, clockDiameter, clockDiameter);
 // Angles for sin() and cos() start at 3 o'clock;
  // subtract HALF_PI to make them start at the top
  float s = map(second(), 0, 60, 0, TWO_PI) - HALF_PI;
  float m = map(minute() + norm(second(), 0, 60), 0, 60, 0, TWO_PI) - HALF_PI; 
  float h = map(hour() + norm(minute(), 0, 60), 0, 24, 0, TWO_PI * 2) - HALF_PI;
  
int second = second(); 
 fill(#FFFFFF);
   textSize(32);
   text(nf(second+20) + " years old", 300, 750);
   text( "AGING", 350, 70);

  // Draw the hands of the clock
  stroke(255);
  strokeWeight(10);
  point(cx + cos(s) * secondsRadius, cy + sin(s) * secondsRadius);
 
  // Draw the minute ticks
  strokeWeight(2);
  beginShape(POINTS);
  for (int a = 0; a < 360; a+=6) {
    float angle = radians(a);
    float x = cx + cos(angle) * secondsRadius;
    float y = cy + sin(angle) * secondsRadius;
    vertex(x, y);
  }
  endShape();
    translate(i,u); {
  body(width/2, height/2);}
  
  //aging changing
  if (second >= 1 & second <= 4){
  fill(#8B8B8B);
  triangle(253,362,265,370,237,380); //beard1
  triangle(345,362,336,370,365,380); //beard2
  }
  
  if (second >= 5 & second <= 7){
    fill(#B2B2B2);
    quad(257, 380, 345,380,336,370,265,370);//beard3
  }  
  
   if (second >= 8 & second <= 9){
    quad(237, 380,369,380,355,370,249,370);//beard4
  }  
  
  if (second >= 10 & second <= 11){
    quad(237, 380,369,380,355,370,249,370);//beard4
    fill(#d8d8d8);
    quad(221, 510,380,511,355,446,247,447);//beard4
  }  
  
  if (second >= 12 & second <= 14){
    quad(238, 378,372,378,355,362,249,362);//beard4
    fill(#d8d8d8);
    quad(221, 510,380,511,355,446,247,447);//beard4
    fill(#E3D5D5);
    arc(219,262,61,42,0,PI); //pouch1
    arc(374,262,61,42,0,PI); //pouch2
  }  
  
   if (second >= 15 & second <= 17){
    quad(235, 378,372,378,355,362,249,362);//beard4
    fill(#777575);
    quad(221, 510,380,511,355,446,247,447);//beard4
    fill(#E3D5D5);
    arc(219,262,61,42,0,PI); //pouch1
    arc(374,262,61,42,0,PI); //pouch2
    stroke(124);
    strokeWeight(3);
    line(150,193,169,215);
    line(153,217,168,223);
    line(149,249,169,241);
    line(450,193,430,215);
    line(450,217,430,223);
    line(448,249,431,241);
    } 
    
    if (second >= 18 & second <= 21){
      noStroke();
    quad(232, 378,372,378,355,362,249,362);//beard4
    fill(#939393);
    quad(242, 510,357,510,355,446,247,447);//beard4
    fill(#E3D5D5);
    arc(219,262,61,42,0,PI); //pouch1
    arc(374,262,61,42,0,PI); //pouch2
    stroke(124);
    strokeWeight(3);
    line(150,193,169,215);
    line(153,217,168,223);
    line(149,249,169,241);
    line(450,193,430,215);
    line(450,217,430,223);
    line(448,249,431,241);
    }
    
    if (second >= 22 & second <= 24){
      noStroke();
    fill(#939393);
    quad(232, 378,372,378,355,362,249,362);//beard4
    fill(#939393);
    quad(242, 510,357,510,355,446,247,447);//beard4
    fill(#E3D5D5);
    arc(219,262,61,42,0,PI); //pouch1
    arc(374,262,61,42,0,PI); //pouch2
    stroke(124);
    strokeWeight(3);
    line(150,193,169,215);
    line(153,217,168,223);
    line(149,249,169,241);
    line(450,193,430,215);
    line(450,217,430,223);
    line(448,249,431,241);
    strokeWeight(2);
    line(212,143,391,143);
    stroke(#DBC3C3);
    line(231,345,277,324);
    line(371,345,317,324);
    }  
  
  if (second >= 25 & second <= 27){
      noStroke();
    fill(#FFFFFF);
    quad(232, 378,372,378,355,362,249,362);//beard4
    fill(#939393);
    quad(242, 510,357,510,355,446,247,447);//beard4
    fill(#E3D5D5);
    arc(219,262,61,42,0,PI); //pouch1
    arc(374,262,61,42,0,PI); //pouch2
    stroke(124);
    strokeWeight(3);
    line(150,193,169,215);//wrinkle for eyes
    line(153,217,168,223);//wrinkle for eyes
    line(149,249,169,241);//wrinkle for eyes
    line(450,193,430,215);//wrinkle for eyes
    line(450,217,430,223);//wrinkle for eyes
    line(448,249,431,241);//wrinkle for eyes
    strokeWeight(2);
    line(212,143,391,143);//wrinkle
    stroke(#DBC3C3);
    line(231,345,277,324);
    line(371,345,317,324);
    }  
    
      if (second >= 28 & second <= 30){
      noStroke();
    fill(#FFFFFF);
    quad(232, 378,372,378,355,362,249,362);//beard4
    fill(#F0F0F0);
    quad(242, 510,357,510,355,446,247,447);//beard4
    fill(#E3D5D5);
    arc(219,262,61,42,0,PI); //pouch1
    arc(374,262,61,42,0,PI); //pouch2
    stroke(124);
    strokeWeight(3);
    line(150,193,169,215);
    line(153,217,168,223);
    line(149,249,169,241);
    line(450,193,430,215);
    line(450,217,430,223);
    line(448,249,431,241);
    strokeWeight(2);
    line(212,143,391,143);
    stroke(#DBC3C3);
    line(231,345,277,324);
    line(371,345,317,324);
    } 
  
   if (second >= 28 & second <= 30){
      noStroke();
    fill(#FFFFFF);
    quad(232, 378,372,378,355,362,249,362);//beard4
    fill(#F0F0F0);
    quad(242, 510,357,510,355,446,247,447);//beard4
    fill(#E3D5D5);
    arc(219,262,61,42,0,PI); //pouch1
    arc(374,262,61,42,0,PI); //pouch2
    stroke(124);
    strokeWeight(3);
    line(150,193,169,215);
    line(153,217,168,223);
    line(149,249,169,241);
    line(450,193,430,215);
    line(450,217,430,223);
    line(448,249,431,241);
    strokeWeight(2);
    line(212,143,391,143);//wrinkle
    line(212,130,391,130);//wrinkle
    stroke(#DBC3C3);
    line(231,345,277,324);
    line(371,345,317,324);
    } 
    
    if (second >= 31 & second <= 32){
      noStroke();
    fill(#FFFFFF);
    quad(232, 378,372,378,355,362,249,362);//beard4
    fill(#F0F0F0);
    quad(242, 510,357,510,355,446,247,447);//beard4
    fill(#E3D5D5);
    arc(219,262,61,42,0,PI); //pouch1
    arc(374,262,61,42,0,PI); //pouch2
    stroke(124);
    strokeWeight(3);
    line(150,193,169,215);
    line(153,217,168,223);
    line(149,249,169,241);
    line(450,193,430,215);
    line(450,217,430,223);
    line(448,249,431,241);
    strokeWeight(2);
    line(212,143,391,143);//wrinkle
    line(212,130,391,130);//wrinkle
    line(212,117,391,117);//wrinkle
    stroke(#DBC3C3);
    line(231,345,277,324);
    line(371,345,317,324);
    } 
    
    if (second >= 33 & second <= 41){
      noStroke();
    fill(#FFFFFF);
    quad(232, 378,372,378,355,362,249,362);//beard4
    fill(#F0F0F0);
    quad(242, 510,357,510,355,446,247,447);//beard4
    fill(#E3D5D5);
    arc(219,262,61,42,0,PI); //pouch1
    arc(374,262,61,42,0,PI); //pouch2
    stroke(124);
    strokeWeight(3);
    line(150,193,169,215);
    line(153,217,168,223);
    line(149,249,169,241);
    line(450,193,430,215);
    line(450,217,430,223);
    line(448,249,431,241);
    strokeWeight(2);
    line(212,143,391,143);//wrinkle
    line(212,130,391,130);//wrinkle
    line(212,117,391,117);//wrinkle
    stroke(#DBC3C3);
    line(231,345,277,324);
    line(371,345,317,324);
    line(230,514,230,344); //wrinkle for mouth
    line(371,514,371,344); //wrinkle for mouth
    } 
    
    if (second >= 42 & second <= 44){
      noStroke();
    fill(#FFFFFF);
    quad(232, 378,372,378,355,362,249,362);//beard4
    fill(#F0F0F0);
    quad(242, 510,357,510,355,446,247,447);//beard4
    fill(#E3D5D5);
    arc(219,262,61,42,0,PI); //pouch1
    arc(374,262,61,42,0,PI); //pouch2
    stroke(124);
    strokeWeight(3);
    line(150,193,169,215);
    line(153,217,168,223);
    line(149,249,169,241);
    line(450,193,430,215);
    line(450,217,430,223);
    line(448,249,431,241);
    strokeWeight(2);
    line(212,143,391,143);//wrinkle
    line(212,130,391,130);//wrinkle
    line(212,117,391,117);//wrinkle
    stroke(#DBC3C3);
    line(231,345,277,324);
    line(371,345,317,324);
    line(230,514,230,344); //wrinkle for mouth
    line(371,514,371,344); //wrinkle for mouth
    noStroke();
    } 
    
     if (second >= 45 & second <= 60){
      noStroke();
    fill(#FFFFFF);
    quad(232, 378,372,378,355,362,249,362);//beard4
    fill(#F0F0F0);
    quad(242, 510,357,510,355,446,247,447);//beard4
    fill(#E3D5D5);
    arc(219,262,61,42,0,PI); //pouch1
    arc(374,262,61,42,0,PI); //pouch2
    stroke(124);
    strokeWeight(3);
    line(150,193,169,215);
    line(153,217,168,223);
    line(149,249,169,241);
    line(450,193,430,215);
    line(450,217,430,223);
    line(448,249,431,241);
    strokeWeight(2);
    line(212,143,391,143);//wrinkle
    line(212,130,391,130);//wrinkle
    line(212,117,391,117);//wrinkle
    stroke(#DBC3C3);
    line(231,345,277,324);
    line(371,345,317,324);
    line(230,514,230,344); //wrinkle for mouth
    line(371,514,371,344); //wrinkle for mouth
    noStroke();
    triangle(230,436,230,380,250,379);//cave
    triangle(371,436,371,380,351,379);//cave
    noStroke();
    } 
    
    if(second>=48 & second<=60){
   fill(#FFFFFF);
    quad(242, 510,357,510,355,446,247,447);//beard4   
    }

  if (second >=30 & second <= 38 ) {
 noStroke();
  hair ();
  }
  
  if (second >=38 & second <= 41 ) {
  noStroke();
  hair3 ();
  }
  
  if (second >=42 & second <= 60 ) {
  fill(#000000);
  noStroke();
  hair2 ();
  fill(#FFE8D6);
  quad(200,70,300,81,400,70,300,60);
  }
}
   void body(int i, int u) { //body
   noStroke();
beginShape();
fill(#A04747);
vertex(0,520);
vertex(0,600);
vertex(600,600);
vertex(600,520);
vertex(300,470);
endShape();

//neck
fill(#BFAD9E);
rect(200,460,200,100);
arc(300,560,200,110,0,PI);

//Face
beginShape();
fill(#FFE8D6);
vertex(200,70);
vertex(150,170);
vertex(150,370);
vertex(220,510);
vertex(380,510);
vertex(450,370);
vertex(450,170);
vertex(400,70);
vertex(300,80);
vertex(200,70);
endShape();

//brow
fill(#5F5F5F);
beginShape();
vertex(220,180);
vertex(260,190);
vertex(250,200);
vertex(200,180);
endShape();

fill(#5F5F5F);
beginShape();
vertex(380,180);
vertex(340,190);
vertex(350,200);
vertex(400,180);
endShape();

fill(#EDD9C9);
arc(150,280,60,110,HALF_PI,PI+HALF_PI);
arc(450,280,60,110,radians(-90),radians(90));

//glasses 
fill(#FFFEFC);
rect(170,200,100,60);
rect(330,200,100,60);

fill(#000405);
rect(170,200,100,10);
rect(330,200,100,10);
rect(170,200,10,60);
rect(260,200,10,60);
rect(330,200,10,60);
rect(420,200,10,60);
rect(170,250,100,10);
rect(330,250,100,10);


//glasses feet
strokeWeight(1);
fill(#050505);
rect(150,225,20,10);
rect(270,225,60,10);
rect(430,225,20,10);

//mouth
beginShape();
fill(#FF5858);
vertex(250,380);
vertex(245,390);
vertex(255,410);
vertex(350,410);
vertex(360,390);
vertex(355,380);
vertex(350,390);
vertex(350,390);
vertex(255,390);
vertex(250,380);
endShape();


//Nose
fill(#C9C9C9);
ellipse(290,350,10,10);
ellipse(310,350,10,10);
ellipse(300,430,50,10);

//hair
fill(#5F5F5F);
beginShape();
vertex(150,225);
vertex(140,170);
vertex(170,60);
vertex(300,40);
vertex(430,60);
vertex(460,170);
vertex(450,225);
vertex(450,225);
vertex(450,170);
vertex(400,70);
vertex(300,80);
vertex(200,70);
vertex(150,170);
vertex(150,225);
endShape();
}

void hair() {
  fill(#DBDBDB);
beginShape();
vertex(150,225);
vertex(140,170);
vertex(170,60);
vertex(300,40);
vertex(430,60);
vertex(460,170);
vertex(450,225);
vertex(450,225);
vertex(450,170);
vertex(400,70);
vertex(300,80);
vertex(200,70);
vertex(150,170);
vertex(150,225);
endShape();
}

void hair2() {
  fill(#030303);
beginShape();
vertex(150,225);
vertex(140,170);
vertex(170,60);
vertex(300,40);
vertex(430,60);
vertex(460,170);
vertex(450,225);
vertex(450,225);
vertex(450,170);
vertex(400,70);
vertex(300,80);
vertex(200,70);
vertex(150,170);
vertex(150,225);
endShape();
}

void hair3() {
  fill(#FFFFFF);
beginShape();
vertex(150,225);
vertex(140,170);
vertex(170,60);
vertex(300,40);
vertex(430,60);
vertex(460,170);
vertex(450,225);
vertex(450,225);
vertex(450,170);
vertex(400,70);
vertex(300,80);
vertex(200,70);
vertex(150,170);
vertex(150,225);
endShape();
}