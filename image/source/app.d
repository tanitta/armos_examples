import armos;

class TestApp : ar.BaseApp{
	ar.Image imageLena;
	ar.Image imageDman;
	ar.Image imageFromArray;
	
	void setup(){
		ar.blendMode = ar.BlendMode.Alpha;
		
		imageLena = new ar.Image;
		imageLena.load("lena_std.tif");
		
		imageDman= new ar.Image;
		imageDman.load("d-man.png");
		
		imageFromArray = new ar.Image;
		ubyte[100*100] array;
		ar.Vector2i position;
		auto center = ar.Vector2i(50, 50);
		foreach (int index, ref pixel; array) {
			position[0] = index%100;
			position[1] = index/100;
			pixel = 255 - cast(ubyte)( ( position-center ).norm*20 );
		}
		
		imageFromArray.setFromAlignedPixels(cast(char*)array.ptr, 100, 100, ar.ColorFormat.Gray);
	}
	
	void draw(){
		imageLena.draw(0, 0);
		imageDman.draw(140, 50);
		imageFromArray.draw(300, 300);
	}
}

void main(){ar.run(new TestApp);}
