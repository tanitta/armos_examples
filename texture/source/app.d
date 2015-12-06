import armos, std.stdio, std.math;
import derelict.opengl3.gl;
class TestApp : ar.BaseApp{
	ar.Texture texture;
	ar.Fbo fbo;
	ar.Mesh mesh;
	void setup(){
		// texture = new ar.Texture;
		// fbo = new ar.Fbo;
		mesh = ar.boxPrimitive(ar.math.Vector3f(0, 0, 0), ar.math.Vector3f(2, 2, 2));
		// GLuint fboId;
		// glGenFramebuffers(1, &fboId);
		// glBindFramebuffer(GL_FRAMEBUFFER, fboId);
		// glCheckFramebufferStatus(LOCAL_GL_FRAMEBUFFER);
	}
	
	void update(){
	}
	
	void draw(){
		// fbo.begin;
		mesh.drawWireFrame;
		// fbo.end;
	}
}

void main(){ar.run(new TestApp);}
