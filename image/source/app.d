import armos;

class TestApp : ar.BaseApp{
	ar.Image image;
	void setup(){
		image = new ar.Image;
		image.load("lena_std.tif");
	}
	
	void draw(){
		image.draw(0, 0);
	}
}

void main(){ar.run(new TestApp);}
