import armos, std.stdio, std.math;

class TestApp : ar.BaseApp{
	auto shader = new ar.Shader;
	auto camera = new ar.Camera();
	float c = 0;
	void setup(){
		shader.load("simple");
		shader.setUniform("color", 1.0f, 1.0f, 0.0f, 1.0f);
		camera.position = ar.Vector3f(0, 0, -40);
		camera.target= ar.Vector3f(0, 0, 0);
		
	}
	
	void update(){
		c += 1;
		camera.position = ar.Vector3f(20.0*cos(c*0.05), 20.0*sin(c*0.05), -40.0);
	}
	
	void draw(){
		shader.begin;
			camera.begin;
			ar.pushMatrix;
			ar.setColor(ar.Color(0xFF1F37));
			ar.boxPrimitive(
					ar.Vector3f(0, 0, 0),
					ar.Vector3f(20, 20, 20)
			).drawFill();
			camera.end;
		shader.end;
	}
}

void main(){ar.run(new TestApp);}
