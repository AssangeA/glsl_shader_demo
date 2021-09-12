#ifdef GL_ES
precision highp float;
#endif

#define TWO_PI 6.28318530718
#define PI = 3.141592653579

uniform vec2 u_resolution;
uniform float u_time;

void main(){
    vec2 st= gl_FragCoord.xy/u_resolution;
    //定义四周边距
    float padding = 0.3;
    float TopColor =1.-smoothstep(1.-padding,1.-padding,st.y);
    gl_FragColor=vec4(vec3(TopColor),1.0);
}