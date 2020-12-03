//your variable declarations here
Spaceship bob = new Spaceship();
Star[]nightSky = new Star[300];
Asteroid [] sue = new Asteroid[10];
public void setup() 
{
  size(400,400);
  background(0);
  frameRate(60);
  for(int i = 0; i < nightSky.length; i++){
    nightSky[i] = new Star();
  }
  for(int j = 0; j < nightSky.length; j++){
    nightSky[j] = new Star();
  }
  for(int i = 0; i < sue.length; i++){
    sue[i] = new Asteroid();
  }
  for(int j = 0; j < sue.length; j++){
    sue[j] = new Asteroid();
  }
}
public void draw() 
{
  background(0);
  for(int j = 0; j < nightSky.length; j++){
    nightSky[j].show();
  }
  for(int j = 0; j < sue.length; j++){
    sue[j].move();
    sue[j].show();
  }
  bob.move();
  bob.show();
}
public void keyPressed()
{
    if(key == 'w'){
      bob.accelerate(0.5);
    }
    if(key == 'a'){
      bob.turn(-5);
    }
    if(key == 's'){
      bob.accelerate(-0.15);
    }
    if(key == 'd'){
      bob.turn(5);
    }
    if(key == 'e'){
      bob.accelerate(0);
      bob.setXspeed(0);
      bob.setYspeed(0);
      bob.setMyCenterX((int)(Math.random()*300)+100);
      bob.setMyCenterY((int)(Math.random()*300)+100);
      bob.setMyPointDirection((int)(Math.random()*300)+100);
    }
}
