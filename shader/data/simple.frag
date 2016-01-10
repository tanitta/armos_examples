// simple.frag
#version 130

uniform vec4 color;
out vec4 fragment_color;

void main(void) {
  fragment_color = color;
}
