varying vec2 vUv; 

void main(){
  // model position
  vec4 modelPosition = modelMatrix * vec4(position, 1.0);
  // viewPosition
  vec4 viewPosition = viewMatrix * modelPosition;
  // projection
  vec4 projectionPosition = projectionMatrix * viewPosition;
  // gl position
  gl_Position = projectionPosition;
  vUv = uv;
}