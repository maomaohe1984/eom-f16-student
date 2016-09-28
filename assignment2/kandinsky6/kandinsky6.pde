size(500,700);
background(#96983A);

int x=220;




fill(#FF822E);
 stroke(0,0,0);
strokeWeight(1);
arc(x,200,215,250,radians(90),radians(270)); //left face

fill(#C2EFFA);
arc(x,280,300,300,radians(-90),radians(90)); //right face
fill(#E8BE69);
arc(x,280,300,300,0,radians(90));//right quoter face

strokeWeight(2);
line(x,280,370,280); 
line(x,280,220,75);

strokeWeight(1);
fill(#FFEC81);
rect(195,130,25,150); //nose up
fill(#B21800,180);
rect(195,280,25,150);//nose down

for (int i=20; i <100; i +=1) {
  noFill();
  strokeWeight(4);
  fill(0,0,0);
  ellipse(200+i,280,25,25);
  }

fill(0,0,0);
strokeWeight(1);
ellipse(x+45,x,25,25); //eyes
ellipse(x-45,x,25,25); //eyes
ellipse(x,x+60,25,25); //eyes

rect(90,380,130,3); //mouth up

fill(#AF1700);
rect(120,400,100,10); //mouth down
fill(#740F00);
rect(195,400,25,10); //small mouth

//body house
beginShape();
fill(0,0,0);
vertex(x,430);
vertex(x,580);
vertex(290,580);
vertex(290,540);
vertex(240,540);
vertex(240,520);
vertex(310,520);
vertex(310,502);
vertex(245,502);
vertex(245,480);
vertex(290,480);
endShape();

//left body
beginShape();
fill(#EDD54D);
vertex(x,430);
vertex(x,580);
vertex(150,580);
vertex(150,500);
vertex(x,430);
endShape();