uniform sampler2D uDisplacementMap;
uniform float uDisplacementScale;
uniform float uDisplacementBias;

varying vec2 vUv;

void main()
{
    vUv = uv;
    vec3 objectNormal = vec3( normal );
    vec3 transformed = vec3( position );
    transformed += normalize( objectNormal ) * ( texture2D( uDisplacementMap, vUv ).x * uDisplacementScale + uDisplacementBias );
    
    gl_Position = projectionMatrix * modelViewMatrix * vec4(transformed, 1.0);
    
}