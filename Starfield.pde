//your code here
Particle[] yo;
void setup()
{
	//your code here
	size(600, 600);
	noStroke();
	frameRate(15);
	yo = new Particle[200];
 	for (int i=0; i<yo.length; i++)
 	{
 		yo [i] = new Particle();
 	}
 	for (int i=0; i<3; i++)
 	{
 		yo [i] = new OddballParticle();
 	}
}

void mousePressed()
{
	yo = new Particle[200];
 	for (int i=0; i<yo.length; i++)
 	{
 		yo [i] = new Particle();
 	}
 	for (int i=0; i<3; i++)
 	{
 		yo [i] = new OddballParticle();
 	}
}

void draw()
{
	//your code here\
	background(180,255,180);
	for(int i=0; i<yo.length; i++)
 	{
 		yo[i].show();
 		yo[i].move();
 	}
	
}

class Particle
{
	//your code here
	double myX, myY, speed, angle;
	Particle()
	{
		myX = 300;
		myY = 300;
		speed = Math.random()*10;
		angle = Math.random()*8+Math.PI;
	}

	void move()
	{
		myX += Math.cos(angle)*speed;
		myY += Math.sin(angle)*speed;

	}

	void show()
	{
		fill(188,135,55);
		ellipse((float)myX,(float)myY, 30.0,30.0);
		fill(30);
		ellipse((float)myX+10,(float)myY-5, 5.0,5.0);
		ellipse((float)myX-5,(float)myY+5, 5.0,5.0);
		ellipse((float)myX,(float)myY+10, 5.0,5.0);
		ellipse((float)myX-10,(float)myY-7, 5.0,5.0);
	}
}

class OddballParticle extends Particle //inherits from Particle
{
	//your code here
	OddballParticle()
	{
		myX = 300;
		myY = 300;
		speed = Math.random()*15+2;
		angle = Math.random()*8+Math.PI;
	}

	void move()
	{
		myX += Math.cos(myX)*speed;
		myY += Math.sin(myY)*speed;
	}

	void show()
	{
		fill(150);
		ellipse((float)myX-15,(float)myY-10, 25.0, 25.0);
		ellipse((float)myX+15,(float)myY-10, 25.0, 25.0);
		triangle((float)myX-15,(float)myY,(float)myX+15,(float)myY,(float)myX,(float)myY+30);
		fill(255,180,180);
		ellipse((float)myX,(float)myY+30, 5.0, 5.0);
		ellipse((float)myX-15,(float)myY-10, 18.0, 18.0);
		ellipse((float)myX+15,(float)myY-10, 18.0, 18.0);
		fill(150);
		ellipse((float)myX,(float)myY, 25.0, 25.0);

		
	}
}


