#ifdef GL_ES
precision mediump float;
#endif

uniform vec2 u_resolution;
uniform float u_time;

void main(){
 vec2 coord = gl_FragCoord.xy/u_resolution;
 vec3 color = vec3(0.0);
 color+=sin(coord.x*cos(u_time/30.0)*60.0)+sin(coord.y*cos(u_time/30.0)*10.0);
 gl_FragColor=vec4(color,1.0);   
}