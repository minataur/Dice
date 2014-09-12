Die suzy;
void setup()
{
	size(1150,650);
	noLoop();
	//int total;
}
void draw()
{
	int total = 0;
	background(0);
	for (int a=0; a<1150;a+=10) {
		for (int s=0; s<650;s+=10) {
			suzy= new Die(a,s);
			suzy.roll();
			suzy.show();
			total+= suzy.number;

		}
	}
	fill(255);
	textSize(16);
	text("TOTAL:" + total,0,20);
}
void mousePressed()
{
	redraw();
}

class Die //models one single dice cube
{
	int myX, myY, number; 
	Die(int x, int y) //constructor
	{
		myX=x;
		myY=y;
	}
	
	void roll()
	{
		number= (int)(Math.random()*7)+1;
	}
	
	void show(){
		fill(0);
		noStroke();//dice
		rect(myX,myY,10,10);
		
		stroke(255); //draw ellipses
		if (number==1) {
			point(myX+5,myY+5);
		} else if (number==2) {
			point(myX+3, myY+5);
			point(myX+7,myY+5);
		} else if (number==3) {
			point(myX+3,myY+3);
			point(myX+7,myY+3);
			point(myX+5,myY+7);
		} else if (number==4) {
			point(myX+3, myY+3);
			point(myX+7,myY+3);
			point(myX+3, myY+7);
			point(myX+7,myY+7);
		} else if (number==5) {
			point(myX+5,myY+5);
			point(myX+3, myY+3);
			point(myX+7,myY+3);
			point(myX+3, myY+7);
			point(myX+7,myY+7);
		} else {
			point(myX+2,myY+3);
			point(myX+4,myY+3);
			point(myX+6,myY+3);
			point(myX+2,myY+7);
			point(myX+4,myY+7);
			point(myX+6,myY+7);
		}
	}
}