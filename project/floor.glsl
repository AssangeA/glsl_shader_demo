#ifdef GL_ES
precision highp float;
#endif

#define TWO_PI 6.28318530718
#define PI = 3.141592653579

uniform vec2 u_resolution;
uniform float u_time;


float circle(in vec2 _st,in float _radius){
    vec2 l  = _st-vec2(0.5);
    return 1.-smoothstep(_radius-(_radius*0.01),_radius+(_radius+0.01),dot(l,l)*4.);
}

void main(){
    vec2 st = gl_FragCoord.xy/u_resolution;
    st-=0.5;
    // st.x*=0.3;
    st.y*=0.4;
    float radius = length(st);//每个像素到圆心的距离
    float color = radius>0.1?1.:0.;
    // float color = smoothstep(0.2,0.21,radius);
    gl_FragColor=vec4(vec3(color),1.0);

    // vec2 _st=  gl_FragCoord.xy/u_resolution;
    // float len = 0.2;
    // float color = circle(_st,len);
    // gl_FragColor=vec4(vec3(color),1.0);
}

