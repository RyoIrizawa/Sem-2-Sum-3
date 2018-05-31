float z1;
float z2;
float z3;
float z4;
PImage castle;
PImage dragon;
PImage fire;
PImage fire1;
PImage fire2;
PImage kingdom;
PImage mal;
PImage mar;
PImage wizard;
PImage battle;
PImage star;
PImage fantasy;
PImage back;
PImage next;
PImage knight1;
PImage knight2;
PImage knight3;
PImage knight4;
PImage planet1;
PImage planet2;
PImage planet3;
PImage planet4;
PImage fin;

float size = 10;
float minSize = 10;
float maxSize = -200;
float sizeSpeed = -20;

float d1;
float d2;
float d3;
float d4;
float d5;
float d6;

int i;

float NS;//next slide
/*
PVector
arraylist
Inheritance
for addiitional polymorphis and 3D
*/

int starcount= 100;
star[] stars = new star[starcount];

lion l;
ArrayList<lion> lions = new ArrayList<lion>();

lion2 l2;
ArrayList<lion2> lion2s = new ArrayList<lion2>();

drag d;
ArrayList<drag> drags = new ArrayList<drag>();

float[]Xs=new float[100];
float[]Ys=new float[100];


import processing.sound.*;
SoundFile file;
String audioName = "music.mp3";


void setup()
{
  
  for (int i=0; i<100; i++)
  {
    Xs[i]=random(0,1000);
    Ys[i]=random(400,800);
  }
  
  size(1000,800);
  loadimages();
  
  for(int i=0; i < starcount; i++)
  {
    stars[i] = new star();
  }
  l = new lion();
  l2 = new lion2();
  d= new drag();
  
  file = new SoundFile(this, audioName);
  file.play();
  
}


void draw()
{
scene2();
scene1();
scene3();
scene4();
scene0();
scene5();
//backfront();
}
void backfront()
{
  image(next,900,730,100,70);
  image(back,0,730,100,70);
}


void scene0()
{
  image(fantasy,0+i,0,1000,800);
}

void scene1()
{
  image(kingdom,0-NS,0,1000,800);
  {
  fill(255,248,36);
  
  if(NS==0 || NS==-3000)
  {
  for(int i=0; i < starcount; i++)
  {
    stars[i].Fall();
    stars[i].move();
  }
  }
  }
  
  image(mal,0-NS,500,200,200);
  image(mal,0-NS,550,200,200);
  image(mal,0-NS,600,200,200);
  
  image(mar,800-NS,500,200,200);
  image(mar,800-NS,550,200,200);
  image(mar,800-NS,600,200,200);
  
  
  
  l.update();
  
  
    lions.add(new lion(930, 550));
    lions.add(new lion(930, 600));
    lions.add(new lion(930, 650));
   
  if(NS==0)
  {
  for(int i = lions.size()-1; i >= 0; i--)
  {
    lions.get(i).update();
    
    if(lions.get(i).position.y > (height+1600))
    {
      lions.remove(i);
    }
  }
  }
  
  l2.update();

    lion2s.add(new lion2(70, 550));
    lion2s.add(new lion2(70, 600));
    lion2s.add(new lion2(70, 650));

  if(NS==0)
  {
  for(int i = lion2s.size()-1; i >= 0; i--)
  {
    lion2s.get(i).update();
    
    if(lion2s.get(i).position.y > (height+1600))
    {
      lion2s.remove(i);
    }
  }
  }
  
  if(NS==0)
  {
   d1=d1-7;
    fill(0,0,0);
   PFont f= createFont("Georgina", 63);
    textFont(f);
    textSize(40);
    String a="Once upon a time, in a land far far away.";
    String a1="There was a place called the North Kingdom.";
    String a2="Everyone there lived happily and everything was fine.";
    
    String a3="Today was the celebration of king's 100th birthday.";
    String a4="Everyone in the city loved the king for his kindness";
    String a5="and respected him as a person.";
    String a6="They held a parade today and celebrated his birth.";
    
    String a7="However, things suddenly started changing…";
text(a,  0, 600+d1);
text(a1,  0, 700+d1);
text(a2,  0, 800+d1);
text(a3,  0, 1000+d1);
text(a4,  0, 1100+d1);
text(a5,  0, 1200+d1);
text(a6,  0, 1400+d1);
text(a7,  0, 1600+d1);
    
  }
    
  
}


void scene2()
{
  
  image(castle,0,0,1000,800);
  
  image(fire1,150,230,300-size,300-size);
  image(fire1,100,170+size,200-size,200-size);
  
  image(dragon,650,130,200,200);
  image(fire,660+size,230-size,50+size,50+size);
  
  image(dragon,750,180,200,200);
  image(fire,770+size,280-size,50+size,50+size);
  
  image(dragon,500,130,200,200);
  image(fire,520+size,230-size,56+size,56+size);
  
  if(size == minSize || size == maxSize) 
  {
    size=0;
  }
  //increment the size with the size speed (be it positive or negative)
  size += sizeSpeed;
  
  
  if(NS==1000)
  {
    d2=d2-7;
  fill(255,255,255);
   PFont f= createFont("Georgina", 63);
    textFont(f);
    textSize(40);
    String b="People saw the dragons that suddenly started ";
    String b1="approaching the castle. But it was too late";
    String b2="when they noticed. The town was on fire";
    String b3="and everyone was screaming for help.";
    
    String b4="The dragon fired the king's palace.";
    String b5="The knights tried approaching the dragon.";
    String b6="However, the palace was completely on fire";
    String b7="and there was no sign of the king.";
    
text(b,  0, 600+d2);
text(b1,  0, 700+d2);
text(b2,  0, 800+d2);
text(b3,  0, 900+d2);

text(b4,  0, 1100+d2);
text(b5,  0, 1300+d2);
text(b6,  0, 1400+d2);
text(b7,  0, 1500+d2);

  }
  
  
}

void scene3()
{
  image(battle,2000-NS,0,1000,800);
  
  d.update();

    drags.add(new drag(2530-NS, 240));
    drags.add(new drag(2530-NS, 245));
    drags.add(new drag(2530-NS, 235));
    drags.add(new drag(2530-NS, 250));
  
  for(int i = drags.size()-1; i >= 0; i--)
  {
    drags.get(i).update();
    
    if(drags.get(i).position.y > (height+100))
    {
      drags.remove(i);
    }
  }
  
  for (int i=0; i<40; i++)
  {
    {
    image(knight1, Xs[i]++*10+2000-NS, Ys[i]+random(0,50), 100, 100);
    image(knight2, Xs[i]++*5+2000-NS, Ys[i]+random(0,50), 100, 100);
    image(knight3, Xs[i]++*7+2000-NS, Ys[i]+random(0,50), 100, 100);
    image(knight4, Xs[i]++*14+2000-NS, Ys[i]+random(0,50), 100, 100);
    if (Xs[i]>800)
    {
      Xs[i]=0;
    }
    }
  }


if(NS==2000)
{
  d3=d3-7;
  
  fill(69,255,41);
   PFont f= createFont("Georgina", 63);
    textFont(f);
    textSize(40);
    String c="For over 10 days the knights have been fighting";
    String c1="with the dragons. But there seemed to be no chance ";
    String c2="of winning as the number of dragons started";
    String c3="increasing while the Army started decreasing.";
    
    String c4="Still, the army fought for their lost king.";
    String c5="And in order to protect the city from ";
    String c6="getting completely destroyed.";
    String c7="Then one man suddenly appeared out of nowhere.";
    
text(c,  0, 600+d3);
text(c1,  0, 700+d3);
text(c2,  0, 800+d3);
text(c3,  0, 900+d3);

text(c4,  0, 1100+d3);
text(c5,  0, 1200+d3);
text(c6,  0, 1300+d3);
text(c7,  0, 1400+d3);

}
  
}

void scene4()
{
  image(wizard,3000-NS,0,1000,800);
  
  {
  pushMatrix();
  translate(width/2, height/2);
  rotate(radians(z1));
  image(planet1,200+3000-NS, 100, 40, 40);
  image(planet1,200+3000-NS, 50, 40, 40);
  image(planet1,200+3000-NS, 0, 40, 40);
  image(planet1,200+3000-NS, 150, 40, 40);
  popMatrix();
  z1 += 50;
  }
  
  {
  pushMatrix();
  translate(width/2, height/2);
  rotate(radians(z2));
  fill(0, 255, 100);
  image(planet2,200+3000-NS, 100, 40, 40);
  image(planet2,200+3000-NS, 50, 40, 40);
  image(planet2,200+3000-NS, 0, 40, 40);
  image(planet2,200+3000-NS, 150, 40, 40);
  
  popMatrix();
  z2 += 55;
  }
  
  {
  pushMatrix();
  translate(width/2, height/2);
  rotate(radians(z3));
  fill(0, 255, 100);
  image(planet3,200+3000-NS, 100, 50, 50);
  image(planet3,200+3000-NS, 50, 50, 50);
  image(planet3,200+3000-NS, 0, 50, 50);
  image(planet3,200+3000-NS, 150, 50, 50);
  
  popMatrix();
  z3 += 45;
}

{
  pushMatrix();
  translate(width/2, height/2);
  rotate(radians(z4));
  fill(0, 255, 100);
  image(planet4,200+3000-NS, 100, 50, 50);
  image(planet4,200+3000-NS, 50, 50, 50);
  image(planet4,200+3000-NS, 0, 50, 50);
  image(planet4,200+3000-NS, 150, 50, 50);
  
  popMatrix();
  z4 += 60;
}
if(NS==-3000)
{
for(int i=0; i < starcount; i++)
  {
    stars[i].Fall();
    stars[i].move();
  }
}


 if(NS==3000)
  {
   d5=d5-7;
    fill(255,255,255);
   PFont f= createFont("Georgina", 63);
    textFont(f);
    textSize(40);
    String e="The man got out his wand and started casting a";
    String e1="spell and the wand suddenly started shinning red.";
    String e2="Out of nowhere a volcanic mountains suddenly";
    String e3="appeared,  and the dragons started transitioning";
    String e4="themselves into the volcano.";
    
    String e5="The dragons seemed to be screaming for help.";
    String e6="But they couldn't move because of the spell.";
    String e7="When the scream ended the volcano suddenly";
    String e8="started disappearing. And the long fight was over.";

text(e,  0, 600+d5);
text(e1,  0, 700+d5);
text(e2,  0, 800+d5);
text(e3,  0, 900+d5);
text(e4,  0, 1000+d5);

text(e5,  0, 1200+d5);
text(e6,  0, 1300+d5);
text(e7,  0, 1400+d5);
text(e8,  0, 1500+d5);
    
  }


}

void scene5()
{
  image(fin,4000-NS,0,1000,800); 
  
  if(NS==4000)
  {
    fill(0,0,0);
   PFont f= createFont("Georgina", 63);
    textFont(f);
    textSize(40);
    String f1="Finally, peace has arrived again and";
    String f2="the people lived happily ever after.";

text(f1,  0, 350);
text(f2,  0, 450);

  }
 
  }



void loadimages()
{
  castle=loadImage("castle.jpg");
  dragon=loadImage("dragon.png");
  fire=loadImage("fire.png");
  fire1=loadImage("fire1.png");
  fire2=loadImage("fire2.png");
  kingdom=loadImage("kingdom.png");
  mal=loadImage("mal.png");
  mar=loadImage("mar.png");
  wizard=loadImage("wizard.jpg");
  battle=loadImage("battle.jpg");
  star=loadImage("star.png");
  fantasy=loadImage("Fantasy.png");
  back=loadImage("back.png");
  next=loadImage("next.png");
  knight1=loadImage("knight1.png");
  knight2=loadImage("knight2.png");
  knight3=loadImage("knight3.png");
  knight4=loadImage("knight4.png");
  planet1=loadImage("planet1.png");
  planet2=loadImage("planet2.png");
  planet3=loadImage("planet3.png");
  planet4=loadImage("planet4.png");
  fin=loadImage("fin.png");
}

void keyPressed()
{
    
    if(key=='i')
    {
      if(i==0)
      {
      i=1000;
      }
    }
    
    if(i==1000)
    {
   if(NS<4000)
   {
          if (key == CODED)
    {
    if (keyCode == RIGHT) 
    {
      NS=NS+1000;
      image(next,900,730,100,70);
    }
    if(NS>=1000)
    {
    
          if (keyCode == LEFT) 
    {
      NS=NS-1000;
      image(back,0,730,100,70);
      
    }
    
    
    }
    }
   }
   
    }
    
    if(key=='e')
    {
      i=0;
      NS=0;
    }
    
    
    
      
}