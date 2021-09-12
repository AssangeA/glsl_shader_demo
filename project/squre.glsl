#ifdef GL_ES
precision mediump float;
#endif

#define TWO_PI 6.28318530718
#define PI = 3.141592653579

uniform vec2 u_resolution;
uniform float u_time;

void main(){
    vec2 st = gl_FragCoord.xy/u_resolution;
    vec3 color =vec3(0.3,0.5,0.9);
    //bottom-left   top-right
    // vec2 b1= step(vec2(0.1),st);
    // vec2 tr = step(vec2(0.1),1.-st);
    vec2 b1= smoothstep(vec2(0.1),vec2(0.5),st);
     vec2 tr = smoothstep(vec2(0.1),vec2(0.5),1.-st);
    color = vec3(b1.x*b1.y*tr.x*tr.y);
    gl_FragColor=vec4(color,1.0);
}