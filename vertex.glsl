precision mediump float;

attribute vec3 vPosition;
attribute vec2 vTexCoord;
attribute vec3 vNormal;

varying vec2 fTexCoord;
varying vec3 fPosition;
varying vec3 fNormal;

uniform mat4 projection;
uniform mat4 view;
uniform mat4 model;
uniform mat4 otherMatrix;

uniform mat3 normalMatrix;

void main() {
  gl_Position = otherMatrix * vec4(vPosition, 1.0);
  // urutan perkaliannya harus = projection x view x model (transformasi)

  fTexCoord = vTexCoord;
  fPosition = vec3(view * model * vec4(vPosition, 1.0));
  fNormal = normalMatrix * vNormal;
}
