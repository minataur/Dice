Die suzy;
void setup()
{
	size(500,5000);
	noLoop();
	//int total;
}
void draw()
{
	int total = 0;
	background(0);
	for (int a=0; a<500;a+=10) {
		for (int s=0; s<4990;s+=10) {
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
		fill(0);//dice
		rect(myX,myY,10,10);
		
		fill(255); //draw ellipses
		if (number==1) {
			ellipse(myX+5,myY+5,2,2);
		} else if (number==2) {
			ellipse(myX+3, myY+5,2,2);
			ellipse(myX+7,myY+5,2,2);
		} else if (number==3) {
			ellipse(myX+3,myY+3,2,2);
			ellipse(myX+7,myY+3,2,2);
			ellipse(myX+5,myY+7,2,2);
		} else if (number==4) {
			ellipse(myX+3, myY+3,2,2);
			ellipse(myX+7,myY+3,2,2);
			ellipse(myX+3, myY+7, 2, 2);
			ellipse(myX+7,myY+7,2,2);
		} else if (number==5) {
			ellipse(myX+5,myY+5,2,2);
			ellipse(myX+3, myY+3,2,2);
			ellipse(myX+7,myY+3,2,2);
			ellipse(myX+3, myY+7, 2, 2);
			ellipse(myX+7,myY+7,2,2);
		} else {
			ellipse(myX+2,myY+3,2,2);
			ellipse(myX+4,myY+3,2,2);
			ellipse(myX+6,myY+3,2,2);
			ellipse(myX+2,myY+7,2,2);
			ellipse(myX+4,myY+7,2,2);
			ellipse(myX+6,myY+7,2,2);
		}
	}
}