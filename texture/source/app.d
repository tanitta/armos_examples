import armos, std.stdio, std.math;
import derelict.opengl3.gl;
class TestApp : ar.BaseApp{
	ar.Texture texture;
	// ar.Fbo fbo;
	ar.Mesh rect;
	// ar.Camera camera = new ar.Camera;
	
	// float angle = 0;
	
	void setup(){
		// camera.position = ar.Vector3f(0, 0, -40);
		// fbo = new ar.Fbo;
		// mesh = ar.boxPrimitive(ar.math.Vector3f(0, 0, 0), ar.math.Vector3f(20, 20, 20));
		rect = new ar.Mesh;
		uint i , j;
		uint TEXSIZE = 512;
		// ubyte[][][] bits = new ubyte[][][](TEXSIZE, TEXSIZE, 4);
		ubyte[] bits = new ubyte[](TEXSIZE*TEXSIZE*4);
		for (i = 0 ; i < TEXSIZE ; i++) {
		// 	// int r = (i * 0xFF) / TEXSIZE;
			for (j = 0 ; j < TEXSIZE ; j++) {
				bits[i*512*4 + j*4 + 0] = cast(ubyte)i;
				bits[i*512*4 + j*4 + 2] = cast(ubyte)j;
				bits[i*512*4 + j*4 + 3] = cast(ubyte)( j*i );
		// 		bits[i][j][1] = 0xFF;
		// 		bits[i][j][2] = 0xFF;
		// 		bits[i][j][3] = 0xFF;
		// 		// bits[i][j][0] = cast(ubyte)r;
		// 		// bits[i][j][1] = cast(ubyte)(( j * 0xFF ) / TEXSIZE);
		// 		// bits[i][j][2] = cast(ubyte)~r;
		// 		writef("%x ", bits[i][j][1]);
		//		
		// 		// bits[i][j][0] = 0xFF;
		// 		// bits[5][8][1] = 0xFF;
		// 		// bits[i][j][2] = 0x00;
			}
		// 	writeln("");
		}
		
		// bits[222] = 0xFF;
		// bits[225] = 0xFF;
		texture = new ar.Texture(TEXSIZE, TEXSIZE, bits);
		// float x = ar.currentWindow.size[0];
		// float y = ar.currentWindow.size[1];
		float x = 512;
		float y = 512;
		rect.primitiveMode = ar.PrimitiveMode.Quads;
		
		texture.begin;
			rect.addTexCoord(0, 0);rect.addVertex(0, 0, 0);
			rect.addTexCoord(0, 1);rect.addVertex(0, y, 0);
			rect.addTexCoord(1, 1);rect.addVertex(x, y, 0);
			rect.addTexCoord(1, 0);rect.addVertex(x, 0, 0);
		texture.end;
		
		rect.addIndex(0);
		rect.addIndex(1);
		rect.addIndex(2);
		rect.addIndex(3);
	}
	
	void update(){
	}
	
	void draw(){
		
		texture.begin;
		rect.drawFill;
		texture.end;
	}
}

void main(){ar.run(new TestApp);}
