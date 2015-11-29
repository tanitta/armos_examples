import armos;
class TestApp : ar.BaseApp{
	ar.Mesh line = new ar.Mesh;
	this(){}
	
	void setup(){
		ar.setLineWidth(2);
		line.primitiveMode = ar.PrimitiveMode.LineStrip;
	}
	
	void update(){}
	
	void draw(){
		line.drawWireFrame;
	}
	
	void keyPressed(int key){}
	
	void keyReleased(int key){}
	
	void mouseMoved(int x, int y, int button){
		line.addVertex(x, y, 0);
		line.addIndex(cast(int)line.numVertices-1);
	}
	
	void mousePressed(ar.Vector2i position, int button){}
	
	void mouseReleased(ar.Vector2i position, int button){}
}

void main(){ar.run(new TestApp);}
