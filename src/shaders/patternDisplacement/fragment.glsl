varying vec2 vUv;
uniform vec2 uEdges;
uniform vec2 uLines;
uniform vec3 uColor;

void main()
{
    float strength = step(uEdges.x, mod(vUv.x * uLines.x, 1.0));
    strength += step(uEdges.y, mod(vUv.y * uLines.y, 1.0));
    
    gl_FragColor = vec4(vec3(uColor), strength); 
}