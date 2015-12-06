import armos;
class TestApp : ar.BaseApp{
	ar.Mesh line = new ar.Mesh;
	ar.Mesh circ = ar.circlePrimitive(0, 0, 0, 10);
	ar.Vector2i mouse_pos = ar.Vector2i();
	this(){}
	
	void setup(){
		ar.targetFps = 2.0;
		ar.setBackgroundAuto = false;
		ar.setLineWidth(2);
		line.primitiveMode = ar.PrimitiveMode.LineStrip;
	}
	
	void update(){}
	
	void draw(){
		// line.drawWireFrame;
		// ar.pushMatrix();
		// 	ar.translate(mouse_pos[0], mouse_pos[1], 0);
		// 	circ.drawFill;
		// ar.popMatrix();
	}
	
	void keyPressed(int key){}
	
	void keyReleased(int key){}
	
	void mouseMoved(int x, int y, int button){
		mouse_pos = ar.Vector2i(x, y);
		// line.addVertex(x, y, 0);
		// line.addIndex(cast(int)line.numVertices-1);
		
		ar.pushMatrix();
			ar.translate(mouse_pos[0], mouse_pos[1], 0);
			circ.drawFill;
		ar.popMatrix();
	}
	
	void mousePressed(ar.Vector2i position, int button){}
	
	void mouseReleased(ar.Vector2i position, int button){}
}

void main(){ar.run(new TestApp);}
