#ifdef GL_ES
precision mediump float;
#endif

uniform vec2 u_resolution;

float circileshape(vec2 position, float radius){
    return step(radius, length(position - vec2(0.5)));
}

void main(){
    vec2 coord = gl_FragCoord.xy/u_resolution;
    vec3 color= vec3(0.0);
    coord+=vec2(.2,0.3 ) * 0.5;
    color =vec3(circileshape(coord,0.1));
    gl_FragColor=vec4(color,1.0);   
}